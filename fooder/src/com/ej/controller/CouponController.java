package com.ej.controller;

import java.util.Enumeration;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.coupon.CouponBiz;
import com.ej.store.StoreBiz;
import com.ej.vo.Coupon;
import com.ej.vo.Store;

@Controller
public class CouponController {
	@Resource(name = "couponBiz")
	CouponBiz biz;

	@Resource(name="storeBiz")
	StoreBiz storebiz;
	
	// coupon_add
	@RequestMapping("/coupon_add.ej")
	public String add(Model model, double st_key) {
		// 가게 정보 가져오기
		Store store = storebiz.get(st_key);
		
		model.addAttribute("store", store);
		model.addAttribute("center", "seller/coupon_add");
		return "main";
	}
	
	// TEST!! add
	@RequestMapping("/coupon_add_test.ej")
	public String addtest(Model model) {
		Store store = storebiz.get(4866196529.0);
		
		model.addAttribute("store", store);
		model.addAttribute("center", "seller/coupon_add");
		return "main";
	}
	
	// addimpl
	
		
	@RequestMapping("/coupon_add_impl.ej") 
	public void addimpl(HttpServletRequest request, HttpServletResponse res) {
		HttpSession session = request.getSession();
		double st_key = (double) session.getAttribute("st_key");

		// store 정보 받아오기
		Store store = storebiz.get(st_key);
		
		/// TEST 임시!!!!
//		HttpSession session = request.getSession();
//		session.setAttribute("st_key", st_key);
		
		// dc coupon 받기 & 등록
		int idx = 1;
		System.out.println("dc"+idx+"_c_start");
		while(true) {
//			System.out.println("dc " + idx);
			String c_nm = (String) request.getParameter("dc"+idx+"_c_nm");
			if(c_nm == null || c_nm.equals("")) break;
			
			c_nm = c_nm.replaceAll("&#8361;", "￦");
			String start = request.getParameter("dc"+idx+"_c_start");
			start = start.replaceAll("-", "");
			int c_start = Integer.parseInt(start);
			String end = request.getParameter("dc"+idx+"_c_end");
			end = end.replaceAll("-", "");
			int c_end = Integer.parseInt(end);
			double c_dc = Double.parseDouble(request.getParameter("dc"+idx+"_c_dc"));
			
			Coupon c = new Coupon(st_key, "D", "", c_dc, c_nm, c_start, c_end, 
					store.getSt_nm(), store.getSt_addr(), store.getLat(), store.getLot());
			biz.register(c);
			System.out.println("dc" + idx + ": " + c);
			idx++;
		}
		
		// gift coupon 받기 & 등록
		idx = 1;
		while(true) {
//			System.out.println("gift " + idx);
			String c_nm = (String) request.getParameter("gift"+idx+"_c_nm");
			if(c_nm == null || c_nm.equals("")) break;
			
			c_nm = c_nm.replaceAll("&#8361;", "￦");
			String start = request.getParameter("gift"+idx+"_c_start");
			start = start.replaceAll("-", "");
			int c_start = Integer.parseInt(start);
			String end = request.getParameter("gift"+idx+"_c_end");
			end = end.replaceAll("-", "");
			int c_end = Integer.parseInt(end);
			String c_gift = request.getParameter("gift"+idx+"_c_gift");
			
			Coupon c = new Coupon(st_key, "G", c_gift, .0, c_nm, c_start, c_end, 
					store.getSt_nm(), store.getSt_addr(), store.getLat(), store.getLot());
			biz.register(c);
			System.out.println("gift" + idx + ": " + c);
			idx++;
		}
		
		// coupon_list 띄우기
		RequestDispatcher dispatcher = request.getRequestDispatcher("seller_store_detail.ej");
		try {
			dispatcher.forward(request, res);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	// delete
	@RequestMapping("/coupon_delete.ej")
	public String userDelete(double c_key) {
		biz.remove(c_key);
		return "main";
	}

	// 현재 지역에서 진행중인 이벤트 및 쿠폰
	@RequestMapping("/coupon_event.ej")
	public String localCouponEvent(Model model, String location) {
		location = "행당동";
		try {
			List<Coupon> list = null;
			biz.select_area(location);
			model.addAttribute("center", "seller/coupon_event");
			model.addAttribute("cArea", list);
			System.out.println("지역에서 진행중인 이벤트 및 쿠폰");
			System.out.println("지역에서 진행중인 이벤트 및 쿠폰" + list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "main";

	}

	// 로그인한 유저가 갖고있는 쿠폰
//	@RequestMapping("/coupon_list.ej")
//	public String myCouponlist(Model model, String u_id) {
//		u_id = "admin66";
//		List<Coupon> list = null;
//		biz.select_myCoupon(u_id);
//		model.addAttribute("center", "seller/coupon_list");
//		model.addAttribute("myCoupon", list);
//
//		System.out.println(list);
//		return "main";
//	}

}

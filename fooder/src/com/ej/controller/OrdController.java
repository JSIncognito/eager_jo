package com.ej.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.support.incrementer.DataFieldMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ej.frame.Biz;
import com.ej.ord.OrdBiz;
import com.ej.vo.Ofd;
import com.ej.vo.Ord;
import com.ej.vo.Users;

@Controller
public class OrdController {
	@Resource(name="ordBiz")
	OrdBiz biz;
	
	@Resource(name="usersBiz")
	Biz<Users, String> userbiz;
	
	@Resource(name="ofdBiz")
	Biz<Ofd, Double> ofdbiz;
	
	@Resource(name="ordBiz")
	Biz<Ord, Double> ordbiz;
	
	 private DataFieldMaxValueIncrementer incrementer;
	 public void setIncrementer(DataFieldMaxValueIncrementer incrementer) {
		 this.incrementer = incrementer;
	 }
	
/*
 * 	//	내가 여태껏 주문했던 내역
	@RequestMapping("order_list.ej")
	public String orderlist(HttpServletRequest request) {
		List<Ord> list = null;
		try {
			list = biz.select_myOrder();
			request.setAttribute("center", "user/user_mypage");
			request.setAttribute("myOrder", list);
		} catch (Exception e) {
			
		}
		return "main";
	}
	*/
	// order1.jsp 띄우기
	// 가게 이름, 주문 메뉴 목록, 사용 쿠폰 받아옴

/*	public String order1(HttpServletRequest request, Ord ord,@RequestBody List<Ofd> ofd_list,Model model) {*/
	@RequestMapping("/order1.ej")
	public String order1(@ModelAttribute Ofd ofd, Model model) {
		System.out.println("order1 확인 위치확인");

		List<Ofd> ofdList = ofd.getOfd_list();
		
		for(Ofd o : ofdList) {
			System.out.println(o);
		}
		
		/*		List<Ofd> ofdList2 = ofd.getOfd_list();*/
/*		System.out.println(ofdList);*/
		
		
/*		List<Ofd> ofdList = ofd.getOfd_list();*/
		
/*		for(Ofd of : ofdList) {
			System.out.println(of);
		}
*/		
		// 세션에 있던 기존 주문 정보, ofd 목록 삭제
//		HttpSession session = request.getSession();
//		session.removeAttribute("orderInfo");	// TODO : 삭제 잘 되는지 확인하기
//		session.removeAttribute("ofdList");
//		
//		// 주문정보 만들기
////		Ord ord = new Ord();
//		
//		// 가게 이름 받아와서 설정
////		ord.setSt_nm((String) request.getAttribute("st_nm"));		// 협의 필요
//		int maxID = new Integer(incrementer.nextIntValue());
//		ord.setO_key(maxID);
//		
//		// 주문 메뉴 목록 가져오기
//		List<Food> foods = (List<Food>) request.getAttribute("foods");	//협의 필요
//		
//		// ofd 리스트 만들어주기 & 메뉴 총 금액 구하기
//		List<Ofd> ofds = new ArrayList<>();
//		double total = .0;
//		for(Food f : foods) {
//			Ofd ofd = new Ofd(maxID, f.getF_key(), f.getF_name(), f.getF_price(), f.getF_img(), f.getSt_key());
//			ofds.add(ofd);
//			total += f.getF_price();
//		}
////		ord.setO_all(total);	// o_all(총 금액) 입력
//		
//		// 쿠폰 받아오기
//		Coupon gCpn = (Coupon) request.getAttribute("gCoupon");	// 협의 필요, 증정 쿠폰
//		Coupon dCpn = (Coupon) request.getAttribute("dCoupon");	// 협의 필요, 할인 쿠폰
////		if(dCpn != null) {	// 할인 금액 설정
////			ord.setO_dc(dCpn.getC_dc());
////		} else {
////			ord.setO_dc(.0);
////		}
////		ord.setO_total(ord.getO_all()-ord.getO_dc()); 	// 최종 결제 금액 설정
//		
//		// 주문 메뉴 목록 넘기기 
//		request.setAttribute("fList", foods);
//		
//		// 주문 정보, ofd 리스트 세션에 넣기
//		session.setAttribute("orderInfo", ord);
//		session.setAttribute("ofdList", ofds);
		
		// TEST 용!
/*		List<Ofd> ofdList = new ArrayList<>();
		ofdList.add(new Ofd(1234, "test1", 1));
		ofdList.add(new Ofd(1235, "test2", 2));
		ofdList.add(new Ofd(1236, "test3", 1));
		request.setAttribute("ofdList", ofdList);
		request.setAttribute("orderInfo", new Ord(10000, 1000, 9000));
		
		request.setAttribute("center", "store/order1");*/
/*		model.addAttribute("center", "store/order1");*/
		return "main";
	}
	
	// order2.jsp 띄우기
	// 결제수단 받아옴
//	@RequestMapping("/order2.ej")
//	public String order2(HttpServletRequest request) {
////		HttpSession session = request.getSession();
////		Ord ord = (Ord) session.getAttribute("orderInfo");
////		ord.setO_way(o_way);
////		session.setAttribute("orderInfo", ord); 	// TODO : 지우지 않고 바로 넣을 수 있는지 확인하기
//		request.setAttribute("center", "store/order3");
//		return "main";
//	}
	
	// order3.jsp 띄우기
	@RequestMapping("/order3.ej")
	public String order3(HttpServletRequest request, String o_addr, String o_tel, Integer o_way) {
		System.out.println("o_way: " + o_way);
		System.out.println("o_addr: " + o_addr);
		System.out.println("o_tel: " + o_tel);
		
//		// orderInfo(주문 정보, session 내 데이터)에 값 넣기
//		// 주소, 전화번호, 결제 방법
//		HttpSession session = request.getSession();
//		Ord ord = (Ord) session.getAttribute("orderInfo");
//		ord.setO_way(o_way);
//		ord.setO_addr(o_addr);
//		ord.setO_tel(o_tel);
//		
//		// Ord, Ofd 테이블에 값 넣기 
//		ordbiz.register(ord);
//		List<Ofd> list = (List<Ofd>) session.getAttribute("ofdList");
//		for(Ofd o : list) {
//			ofdbiz.register(o);
//		}
		
		// TEST 용!
		List<Ofd> ofdList = new ArrayList<>();
		ofdList.add(new Ofd(1234, "test1", 2500, 1));
		ofdList.add(new Ofd(1235, "test2", 2500, 2));
		ofdList.add(new Ofd(1236, "test3", 5000, 1));
		request.setAttribute("ofdList", ofdList);
		request.setAttribute("orderInfo", new Ord(10000, 1000, 9000));
				
		request.setAttribute("center", "store/order3");
		return "main";
	}
}

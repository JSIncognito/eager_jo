package com.ej.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.jdbc.support.incrementer.DataFieldMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String order1(@ModelAttribute Ofd ofd, Model model, HttpServletRequest request) {
		System.out.println("order1 확인 위치확인");
		List<Ofd> ofdList = ofd.getOfd_list();
		Ofd o= ofdList.get(0);
/*		Ord ord = new Ord(o.getO_total(), o.getO_total(), o.getSt_key(),o.getSt_nm());*/
		Ord ord = new Ord();
//		쿠폰이랑 계산후 DC 금액 산출해야함 차후에...
		ord.setO_all(o.getO_total());
		ord.setO_dc(0);
		ord.setO_total(o.getO_total());
		ord.setSt_key(o.getSt_key());
		ord.setSt_nm(o.getSt_nm());
		
		HttpSession session = request.getSession();
		System.out.println(session);
		System.out.println("Ofd 확인" + o + " Ord 확인 : " + ord);
		System.out.println(ord);
		
		// ordInfo 생성할것
		session.setAttribute("ofdList", ofdList);
		session.setAttribute("orderInfo", ord);
		model.addAttribute("center", "store/order1");
	
//		// 2번 방법
//		// ofd 받아오기, 가게정보 넣어주기
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
		
		return "main";
	}
	
	@RequestMapping("/order1_test.ej")
	public String order1_test(HttpServletRequest request, Ord ord) {
		// TEST 용!
				List<Ofd> ofdList = new ArrayList<>();
				ofdList.add(new Ofd(1234, "test1", 1));
				ofdList.add(new Ofd(1235, "test2", 2));
				ofdList.add(new Ofd(1236, "test3", 1));
				request.setAttribute("ofdList", ofdList);
				request.setAttribute("orderInfo", new Ord(10000, 1000, 9000));
				
				request.setAttribute("center", "store/order1");
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
	public String order3(@ModelAttribute Ord ord,HttpServletRequest request, Model model) {
/*		public String order3(HttpServletRequest request, String o_addr, String o_tel, Integer o_way) {*/
		HttpSession session = request.getSession();
		List<Ofd> ofdList =(List<Ofd>) session.getAttribute("ofdList");
		/*4000000000.0;*/
		Double o_key = (Double) (Math.random()*4000000000.0) + 3000000000.0;				
		System.out.println(Math.round(o_key));
		
		// 20180102 
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyyMMdd", Locale.KOREA );
		Date currentTime = new Date ();
		Double o_date = Double.parseDouble(mSimpleDateFormat.format ( currentTime )); // 배송일 

		System.out.println ( o_date ); // 배송일
		int o_way = ord.getO_way(); // 결제수단
		String o_addr = ord.getO_addr(); // 배송지 주소
		
		o_key = (double) Math.round(o_key);
		System.out.println("order3 확인 주문상품정보" + o_key);
		for(Ofd o : ofdList) {
			o.setO_date(o_date);
			o.setO_way(o_way);
			o.setO_addr(o_addr);
			o.setO_key(o_key);
			ofdbiz.register(o);
			System.out.println(o);
		}
		
		System.out.println("주문정보");
		//	주문정보 
		Ord ordInfo = (Ord) session.getAttribute("orderInfo");		
		// ord table 주소, 전화번호, 결제수단 추가
		ordInfo.setO_addr(ord.getO_addr());
		ordInfo.setO_tel(ord.getO_tel());
		ordInfo.setO_way(ord.getO_way());
		ordInfo.setO_date(o_date);
		ordInfo.setO_key(Math.round(o_key));
		Users u = (Users) request.getSession().getAttribute("loginUser"); 
		String u_id = u.getU_id();
		System.out.println("확인 ordController : " + u_id);
		ordInfo.setU_id(u_id);		
		String st_type = (String) request.getSession().getAttribute("stType");
		System.out.println("확인 ordController : " + st_type);
		ordInfo.setSt_type(st_type);

		System.out.println(ordInfo);		
		ordbiz.register(ordInfo);
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
		session.setAttribute("ordInfo", ordInfo);
		model.addAttribute("ofdList", ofdList);
		model.addAttribute("center", "store/order3");
		return "main";
	}
}

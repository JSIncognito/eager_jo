package com.ej.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.jdbc.support.incrementer.DataFieldMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
 * 	//	���� ���²� �ֹ��ߴ� ����
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
	// order1.jsp ����
	// ���� �̸�, �ֹ� �޴� ���, ��� ���� �޾ƿ�

/*	public String order1(HttpServletRequest request, Ord ord,@RequestBody List<Ofd> ofd_list,Model model) {*/
	@RequestMapping("/order1.ej")
	public String order1(@ModelAttribute Ofd ofd, Model model) {
		System.out.println("order1 Ȯ��");
		
		List<Ofd> ofdList = ofd.getOfd_list();
		
		for(Ofd of : ofdList) {
			System.out.println(of);
		}
		
		// ���ǿ� �ִ� ���� �ֹ� ����, ofd ��� ����
//		HttpSession session = request.getSession();
//		session.removeAttribute("orderInfo");	// TODO : ���� �� �Ǵ��� Ȯ���ϱ�
//		session.removeAttribute("ofdList");
//		
//		// �ֹ����� �����
////		Ord ord = new Ord();
//		
//		// ���� �̸� �޾ƿͼ� ����
////		ord.setSt_nm((String) request.getAttribute("st_nm"));		// ���� �ʿ�
//		int maxID = new Integer(incrementer.nextIntValue());
//		ord.setO_key(maxID);
//		
//		// �ֹ� �޴� ��� ��������
//		List<Food> foods = (List<Food>) request.getAttribute("foods");	//���� �ʿ�
//		
//		// ofd ����Ʈ ������ֱ� & �޴� �� �ݾ� ���ϱ�
//		List<Ofd> ofds = new ArrayList<>();
//		double total = .0;
//		for(Food f : foods) {
//			Ofd ofd = new Ofd(maxID, f.getF_key(), f.getF_name(), f.getF_price(), f.getF_img(), f.getSt_key());
//			ofds.add(ofd);
//			total += f.getF_price();
//		}
////		ord.setO_all(total);	// o_all(�� �ݾ�) �Է�
//		
//		// ���� �޾ƿ���
//		Coupon gCpn = (Coupon) request.getAttribute("gCoupon");	// ���� �ʿ�, ���� ����
//		Coupon dCpn = (Coupon) request.getAttribute("dCoupon");	// ���� �ʿ�, ���� ����
////		if(dCpn != null) {	// ���� �ݾ� ����
////			ord.setO_dc(dCpn.getC_dc());
////		} else {
////			ord.setO_dc(.0);
////		}
////		ord.setO_total(ord.getO_all()-ord.getO_dc()); 	// ���� ���� �ݾ� ����
//		
//		// �ֹ� �޴� ��� �ѱ�� 
//		request.setAttribute("fList", foods);
//		
//		// �ֹ� ����, ofd ����Ʈ ���ǿ� �ֱ�
//		session.setAttribute("orderInfo", ord);
//		session.setAttribute("ofdList", ofds);
		
		// TEST ��!
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
	
	// order2.jsp ����
	// �������� �޾ƿ�
//	@RequestMapping("/order2.ej")
//	public String order2(HttpServletRequest request) {
////		HttpSession session = request.getSession();
////		Ord ord = (Ord) session.getAttribute("orderInfo");
////		ord.setO_way(o_way);
////		session.setAttribute("orderInfo", ord); 	// TODO : ������ �ʰ� �ٷ� ���� �� �ִ��� Ȯ���ϱ�
//		request.setAttribute("center", "store/order3");
//		return "main";
//	}
	
	// order3.jsp ����
	@RequestMapping("/order3.ej")
	public String order3(HttpServletRequest request, String o_addr, String o_tel, Integer o_way) {
		System.out.println("o_way: " + o_way);
		System.out.println("o_addr: " + o_addr);
		System.out.println("o_tel: " + o_tel);
		
//		// orderInfo(�ֹ� ����, session �� ������)�� �� �ֱ�
//		// �ּ�, ��ȭ��ȣ, ���� ���
//		HttpSession session = request.getSession();
//		Ord ord = (Ord) session.getAttribute("orderInfo");
//		ord.setO_way(o_way);
//		ord.setO_addr(o_addr);
//		ord.setO_tel(o_tel);
//		
//		// Ord, Ofd ���̺� �� �ֱ� 
//		ordbiz.register(ord);
//		List<Ofd> list = (List<Ofd>) session.getAttribute("ofdList");
//		for(Ofd o : list) {
//			ofdbiz.register(o);
//		}
		
		// TEST ��!
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

package com.ej.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.jdbc.support.incrementer.DataFieldMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.frame.Biz;
import com.ej.vo.Coupon;
import com.ej.vo.Food;
import com.ej.vo.Ofd;
import com.ej.vo.Ord;
import com.ej.vo.Users;

@Controller
public class OrderController {
	@Resource(name="usersBiz")
	Biz<Users, String> userbiz;
	
	 private DataFieldMaxValueIncrementer incrementer;
	 public void setIncrementer(DataFieldMaxValueIncrementer incrementer) {
		 this.incrementer = incrementer;
	 }
	 
	
	 // ���� �̸�, �ֹ� �޴� ���, ��� ���� �޾ƿ�
	@RequestMapping("/order1.ej")
	public String order1(HttpServletRequest request, Ord ord) {
		// ���ǿ� �ִ� ���� �ֹ� ����, ofd ��� ����
		HttpSession session = request.getSession();
		session.removeAttribute("orderInfo");	// TODO : ���� �� �Ǵ��� Ȯ���ϱ�
		session.removeAttribute("ofdList");
		
		// �ֹ����� �����
//		Ord ord = new Ord();
		
		// ���� �̸� �޾ƿͼ� ����
//		ord.setSt_nm((String) request.getAttribute("st_nm"));		// ���� �ʿ�
		int maxID = new Integer(incrementer.nextIntValue());
		ord.setO_key(maxID);
		
		// �ֹ� �޴� ��� ��������
		List<Food> foods = (List<Food>) request.getAttribute("foods");	//���� �ʿ�
		
		// ofd ����Ʈ ������ֱ� & �޴� �� �ݾ� ���ϱ�
		List<Ofd> ofds = new ArrayList<>();
		double total = .0;
		for(Food f : foods) {
			Ofd ofd = new Ofd(maxID, f.getF_key(), f.getF_name(), f.getF_price(), f.getF_img(), f.getSt_key());
			ofds.add(ofd);
			total += f.getF_price();
		}
//		ord.setO_all(total);	// o_all(�� �ݾ�) �Է�
		
		// ���� �޾ƿ���
		Coupon gCpn = (Coupon) request.getAttribute("gCoupon");	// ���� �ʿ�, ���� ����
		Coupon dCpn = (Coupon) request.getAttribute("dCoupon");	// ���� �ʿ�, ���� ����
//		if(dCpn != null) {	// ���� �ݾ� ����
//			ord.setO_dc(dCpn.getC_dc());
//		} else {
//			ord.setO_dc(.0);
//		}
//		ord.setO_total(ord.getO_all()-ord.getO_dc()); 	// ���� ���� �ݾ� ����
		
		// �ֹ� �޴� ��� �ѱ�� 
		request.setAttribute("fList", foods);
		
		// �ֹ� ����, ofd ����Ʈ ���ǿ� �ֱ�
		session.setAttribute("orderInfo", ord);
		session.setAttribute("ofdList", ofds);
		
		request.setAttribute("center", "store/order1");
		return "main";
	}
	
	// �������� �޾ƿ�
	@RequestMapping("/order2.ej")
	public String order2(HttpServletRequest request, Integer o_way) {
		HttpSession session = request.getSession();
		Ord ord = (Ord) session.getAttribute("orderInfo");
		ord.setO_way(o_way);
		session.setAttribute("orderInfo", ord); 	// TODO : ������ �ʰ� �ٷ� ���� �� �ִ��� Ȯ���ϱ�
		
		request.setAttribute("center", "store/order2");
		return "main";
	}
	
	@RequestMapping("/order3.ej")
	public String order3(HttpServletRequest request) {
		request.setAttribute("center", "store/order3");
		return "main";
	}
}

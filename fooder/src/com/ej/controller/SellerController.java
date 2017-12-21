package com.ej.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.food.FoodBiz;
import com.ej.frame.Biz;
import com.ej.vo.Store;
import com.ej.vo.Users;

@Controller
public class SellerController {
	@Resource(name="usersBiz")
	Biz<Users, String> usersbiz;
	
	@Resource(name="storeBiz")
	Biz<Store, Double> storebiz;
	
	@Resource(name="foodBiz") 
	FoodBiz foodbiz;
	
	@RequestMapping("/seller_mypage.ej")
	public String seller_mypage(HttpServletRequest request) {
//		String id = (String) request.getAttribute("id");	// ���� �ʿ�
		String id = "admin306";	// ����
		Users user = usersbiz.get(id);
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("seller", user);
		return "main";
	}
	
	@RequestMapping("/seller_mypage_modify.ej")
	public String seller_mypage_modify(HttpServletRequest request, Users u) {
		System.out.println("seller_mypage_modify");
//		String id = (String) request.getAttribute("id");	// ���� �ʿ�
//		String pwd1 = (String) request.getAttribute("pwd1");
//		String pwd2 = (String) request.getAttribute("pwd2");
//		String phone = (String) request.getAttribute("phone");
//		String addr = (String) request.getAttribute("addr");
		
//		System.out.println("id: " + id);
//		System.out.println("pwd: " + pwd1);
//		System.out.println("phone: " + phone);
//		System.out.println("addr: " + addr);
//		Users u = new Users(id, pwd1, phone, addr);
		System.out.println("users: " + u);
//		usersbiz.modify(u);
//		String id = "admin306";	// ����
//		Users user = usersbiz.get(id);
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("seller", u);
		return "main";
	}
	
	// seller_store_detail.jsp ���� 
	@RequestMapping("/seller_store_detail.ej")
	public String seller_store_detail(HttpServletRequest request, Double st_key) {
//		// Store ���� ��������
//		Store store = storebiz.get(st_key);
//		
//		// Store ���� ������
//		request.setAttribute("store", store);
		
		// TEST !!!
		Store store = new Store(1234, "test store", "ġŲ", 127.123, 34.123, "avatar1.jpg", "11:00-22:00", "test addr", 5, "test_id");
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu());
		
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
	// store ���� �����ϱ�
	@RequestMapping("/seller_store_modify.ej")
	public String seller_store_modify(HttpServletRequest request) {
		
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
}

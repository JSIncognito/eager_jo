package com.ej.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.cu.CuBiz;
import com.ej.vo.Coupon;
import com.ej.vo.Users;

@Controller
public class CuController {

@Resource(name="cuBiz")
CuBiz cbiz;
	// list
	/*
	 * @RequestMapping("/cu_list.ej") public String cu_list(HttpServletRequest
	 * request) { List<Cu> list = null; try { list = biz.get();
	 * request.setAttribute("center", ""); request.setAttribute("list", list); }
	 * catch (Exception e) { e.printStackTrace(); }
	 * 
	 * for(Cu c : list) { System.out.println(c); }
	 * 
	 * System.out.println("CuController Cu 완료"); return "main";
	 * 
	 * }
	 */

	// 1223 ksy
	@RequestMapping("/cu_insert.ej")
	public String getcoupon(Coupon coupon, HttpServletRequest request) {
		System.out.println("위치확인");
		System.out.println(coupon);
				
		HttpSession session = request.getSession();
		Users usr = (Users) session.getAttribute("loginuser");
		System.out.println("씨유테스트");
		System.out.println(usr);
 
		
		return "main";

	}

}

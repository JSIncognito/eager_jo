package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.frame.Biz;
import com.ej.store.StoreBiz;
import com.ej.vo.Store;
import com.ej.vo.Users;

@Controller
public class SellerController {
	@Resource(name = "usersBiz")
	Biz<Users, String> usersbiz;

	@Resource(name = "storeBiz")
	StoreBiz stBiz;

	@RequestMapping("/seller_mypage.ej")
	public String seller_mypage(HttpServletRequest request) {
		// String id = (String) request.getAttribute("id"); // 수정 필요
		String id = "admin306"; // 임의
		Users user = usersbiz.get(id);
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("seller", user);
		return "main";
	}

	@RequestMapping("/seller_mypage_modify.ej")
	public String seller_mypage_modify(HttpServletRequest request, Users u) {
		System.out.println("seller_mypage_modify");
		// String id = (String) request.getAttribute("id"); // 수정 필요
		// String pwd1 = (String) request.getAttribute("pwd1");
		// String pwd2 = (String) request.getAttribute("pwd2");
		// String phone = (String) request.getAttribute("phone");
		// String addr = (String) request.getAttribute("addr");

		// System.out.println("id: " + id);
		// System.out.println("pwd: " + pwd1);
		// System.out.println("phone: " + phone);
		// System.out.println("addr: " + addr);
		// Users u = new Users(id, pwd1, phone, addr);
		System.out.println("users: " + u);
		// usersbiz.modify(u);
		// String id = "admin306"; // 임의
		// Users user = usersbiz.get(id);
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("seller", u);
		return "main";
	}

	@RequestMapping("/seller_main.ej")
	public String my_store(Model model, String u_id) {
		System.out.println("안녕 난 셀러메인이야");
		u_id = "admin66";
		List<Store> list = null;
		try {
			list = stBiz.select_myStore(u_id);
			System.out.println(list);
			model.addAttribute("center", "seller/seller_main");
			model.addAttribute("myStore", list);
			for (Store store : list) {
				System.out.println("나의 가게(들) " + list);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return "main";

	}

}

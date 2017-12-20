package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.ord.OrdBiz;
import com.ej.users.UsersBiz;
import com.ej.vo.Ord;
import com.ej.vo.Users;

@Controller
public class UsersController {
	@Resource(name="usersBiz")
	UsersBiz ubiz;
	
	@Resource(name="ordBiz")
	OrdBiz obiz;
	
	
	// 로그인한 사용자 정보 보기
	@RequestMapping("/user_mypage.ej")
	public String myInfo(Model model, String u_id) {
		System.out.println("로그인한 사용자 정보");

		u_id = "admin66";
		Users usr = ubiz.get(u_id);

		model.addAttribute("usr", usr);
		model.addAttribute("center", "user/user_mypage");
		System.out.println("로그인한 사용자 정보 보기" + usr);

		return "main";
	}

	// 내가 여태껏 주문했던 내역
	@RequestMapping("/order_history.ej")
		
	public String orderlist(Model model, String u_id) {
		u_id = "admin66";
		List<Ord> list = null;
		try {
			list = obiz.select_myOrder(u_id);
			model.addAttribute("center", "user/user_mypage");
			model.addAttribute("myOrder", list);
			for (Ord ord : list) {
				System.out.println("내가 여태껏 주문했던 내역 ");
				System.out.println("내가 여태껏 주문했던 내역 "+ord);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "main";

	}
}

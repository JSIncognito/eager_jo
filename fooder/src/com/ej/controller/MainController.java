package com.ej.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.frame.Biz;
import com.ej.vo.Users;

@Controller
public class MainController {

	@Resource(name="usersBiz")
	Biz<Users, String> biz;
	
	@RequestMapping("/main.ej")
	public String main() {
		return "main";
	}
	
	//	20171221_JS 회원가입
	@RequestMapping("/users_register.ej")
	public String u_register(Users u, String uAge) {
		String spAge[]= uAge.substring(2, uAge.length()).split("-");
		String str_age = "";		
		int u_age = 0;
		int u_flag = 1;
		for(String a : spAge) {
			str_age += a;
		}
		u_age = Integer.parseInt(str_age);
		u.setU_age(u_age);
		u.setU_flag(u_flag);

		biz.register(u);
//		System.out.println("회원완료");
		return "main";
	}
	
	@RequestMapping("/seller_register.ej") 
	public String seller_register(HttpServletRequest request) {
		request.setAttribute("center", "seller/seller_register");
		return "main";
	}
	
	@RequestMapping("/seller_register_impl.ej") 
	public String seller_register_impl(Users u, String uAge) {
		System.out.println("/seller_register.ej");
		String spAge[]= uAge.substring(2, uAge.length()).split("-");
		String str_age = "";		
		int u_age = 0;
		int u_flag = 2;
		for(String a : spAge) {
			str_age += a;
		}
		u_age = Integer.parseInt(str_age);
		u.setU_age(u_age);
		u.setU_flag(u_flag);

		System.out.println("user:" + u);
		biz.register(u);
//		System.out.println("회원완료");
		return "main";
	}
	
	@RequestMapping("/login.ej")
	public String login(Users u, HttpServletRequest request) {
		Users user = biz.get(u.getU_id());
		if(user == null) {
			System.out.println("error1");
			return "error";
		}else {
			if(u.getU_pwd().equals(user.getU_pwd())) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", user);				
				//System.out.println(user + "loginuser");
				//System.out.println(user.getU_flag());
			}else {
				System.out.println("error2");				
				return "error";				
			}
		}
		//System.out.println("로그인 처리");
		return "main";
	}

	@RequestMapping("/logout.ej")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session != null) {
			session.invalidate();
		}
		System.out.println("로그아웃 처리");
		return "main";
	}
	

}

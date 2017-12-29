package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	
	// �α����� ����� ���� ����
	@RequestMapping("/user_mypage.ej")
	public String myInfo(Model model, String u_id) {
		System.out.println("�α����� ����� ����");

		u_id = "admin63";
		Users usr = ubiz.get(u_id);

		model.addAttribute("usr", usr);
		model.addAttribute("center", "user/user_mypage");
		System.out.println("�α����� ����� ���� ����" + usr);

		return "main";
		
		
	}
	
	@RequestMapping("user_update.ej")
	public String usermodify(HttpServletRequest request, Users usr) {
		String name = (String) request.getAttribute("u_nm");
		String tel = (String) request.getAttribute("u_tel");
		String addr = (String) request.getAttribute("u_addr");
		String pwd = (String) request.getAttribute("u_pwd");
		

		
		try {
			ubiz.modify(usr);
			HttpSession session = request.getSession();	
			session.removeAttribute("usr");
				session.setAttribute("usr", usr);
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(usr);
		return "main";
	}
	
	// ���� ���²� �ֹ��ߴ� ����
	@RequestMapping("/order_history.ej")
		
	public String orderlist(Model model, String u_id) {
		u_id = "admin66";
		List<Ord> list = null;
		try {
			list = obiz.select_myOrder(u_id);
			model.addAttribute("center", "user/my_order");
			model.addAttribute("myOrder", list);
			for (Ord ord : list) {
				System.out.println("���� ���²� �ֹ��ߴ� ���� ");
				System.out.println("���� ���²� �ֹ��ߴ� ���� "+ord);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "main";

	}
}

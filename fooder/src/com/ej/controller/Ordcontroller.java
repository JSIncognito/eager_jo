package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.ord.OrdBiz;
import com.ej.vo.Ord;

@Controller
public class Ordcontroller {
	@Resource
	OrdBiz biz;
	
	//	내가 여태껏 주문했던 내역
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
}

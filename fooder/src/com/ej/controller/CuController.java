package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.coupon.CouponBiz;
import com.ej.frame.Biz;
import com.ej.vo.Cu;

@Controller
public class CuController {
	
	@Resource(name="cuBiz")
	Biz<Cu, Double> biz;
	
	//	list
	@RequestMapping("/cu_list.ej")
	public String cu_list(HttpServletRequest request) {
		List<Cu> list = null;
		try {
			list = biz.get();
/*			request.setAttribute("center", "");*/
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		for(Cu c : list) {
			System.out.println(c);
		}
		
		System.out.println("CuController Cu ¿Ï·á");
		return "main";		
		
	}
	
	
	
}

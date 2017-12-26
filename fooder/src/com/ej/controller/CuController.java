package com.ej.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.AlternativeJdkIdGenerator;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.cu.CuBiz;
import com.ej.vo.Coupon;
import com.ej.vo.Cu;
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

	// 1226 ksy
	@RequestMapping("/cu_insert.ej")
	public String getcoupon(Cu cu, HttpServletRequest request) {

		
		Date d = new Date();        
        String s = d.toString();
        /*System.out.println("현재날짜 : "+ s);*/
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        /*System.out.println("현재날짜 : "+ sdf.format(d));*/
		
        cu.setCu_used(0);
        cu.setCu_date(Double.parseDouble(sdf.format(d)));
        
        cbiz.register(cu);
        
		return "main";

	}

}

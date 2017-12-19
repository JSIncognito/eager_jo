package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.frame.Biz;
import com.ej.vo.Coupon;

@Controller
public class CouponController {

	@Resource(name="couponBiz")
	Biz<Coupon, Double> biz;
	
	//	list
	@RequestMapping("/coupon_list.ej")
	public String coupon_list(HttpServletRequest request) {
		List<Coupon> list = null;
		list = biz.get();
		request.setAttribute("center", "seller/coupon_list");
		request.setAttribute("list", list);
		
		for(Coupon c : list) {
			System.out.println(c);
		}
		System.out.println("coupon list ¿Ï·á");
		return "main";
	}
	
	//	delete
	@RequestMapping("/coupondelete.ej")
	public String userDelete(double c_key){
		biz.remove(c_key);
		return "main";
	}
	
}

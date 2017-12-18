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
		System.out.println("확인 11111");
		List<Coupon> list = null;
		try {
			list = biz.get();
			request.setAttribute("center", "seller/coupon_list");
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();			
		}
		
		for(Coupon c : list) {
			System.out.println(c);
		}
		
		System.out.println("coupon list 완료");
		return "main";
	}
	
	//	delete
	@RequestMapping("/coupondelete.ej")
	public String userDelete(double c_key) throws Exception {
		biz.remove(c_key);
		return "main";
	}
	
	
	
	
}

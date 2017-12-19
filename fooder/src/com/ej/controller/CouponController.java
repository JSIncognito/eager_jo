package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.coupon.CouponBiz;
import com.ej.vo.Coupon;

@Controller
public class CouponController {
	@Resource(name="couponBiz")
	CouponBiz biz;
	
	


	// add
	@RequestMapping("/coupon_add.ej")
	public String add(Model model) {
		model.addAttribute("center", "seller/coupon_add");
		return "main";
	}
	// addimpl
	/*
	 * @RequestMapping("/couponaddimpl.ej") public String addimpl(Coupon c, Model
	 * model) {
	 * 
	 * }
	 */

	// delete
	@RequestMapping("/coupon_delete.ej")
	public String userDelete(double c_key) {
		biz.remove(c_key);
		return "main";
	}

	// 현재 지역에서 진행중인 이벤트 및 쿠폰
	@RequestMapping("/coupon_event.ej")
	public String localCouponEvent(Model model, String location) {

		List<Coupon> list = null;
		biz.select_area(location);
		model.addAttribute("center", "seller/coupon_event");
		model.addAttribute("cArea", list);

		return "main";

	}

	// 로그인한 유저가 갖고있는 쿠폰
	@RequestMapping("/my_coupon.ej")
	public String myCouponlist(Model model, String user) {

		List<Coupon> list = null;
		biz.select_myCoupon(user);
		model.addAttribute("center", "seller/coupon_list");
		model.addAttribute("myCoupon", list);

		return "main";
	}

}

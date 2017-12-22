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

	// ���� �������� �������� �̺�Ʈ �� ����
	@RequestMapping("/coupon_event.ej")
	public String localCouponEvent(Model model, String st_addr) {
		st_addr = "�ּ�2";
		try {
			List<Coupon> list = null;
			list = biz.select_area(st_addr);
			model.addAttribute("center", "seller/coupon_event");
			model.addAttribute("cArea", list);
			
			System.out.println("�������� �������� �̺�Ʈ �� ���� " + list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "main";

	}

	// �α����� ������ �����ִ� ����
	@RequestMapping("/coupon_list.ej")
	public String myCouponlist(Model model, Double st_key) {
		st_key = (double) 111;
		List<Coupon> list = null;
		list = biz.select_myCoupon(st_key);
		model.addAttribute("center", "seller/coupon_list");
		model.addAttribute("myCoupon", list);
		

		System.out.println("�α����� ������ �����ִ� ���� "+list);
		return "main";
	}

}

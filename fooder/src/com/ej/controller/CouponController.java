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
	@Resource(name = "couponBiz")
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
	public String localCouponEvent(Model model, String location) {
		location = "��絿";
		try {
			List<Coupon> list = null;
			biz.select_area(location);
			model.addAttribute("center", "seller/coupon_event");
			model.addAttribute("cArea", list);
			System.out.println("�������� �������� �̺�Ʈ �� ����");
			System.out.println("�������� �������� �̺�Ʈ �� ����" + list);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "main";

	}

	// �α����� ������ �����ִ� ����
	@RequestMapping("/coupon_list.ej")
	public String myCouponlist(Model model, String u_id) {
		u_id = "admin66";
		List<Coupon> list = null;
		biz.select_myCoupon(u_id);
		model.addAttribute("center", "seller/coupon_list");
		model.addAttribute("myCoupon", list);

		System.out.println(list);
		return "main";
	}

}

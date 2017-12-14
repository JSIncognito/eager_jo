package com.ej.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/main.ej")
	public String main() {
		return "main";
	}
	@RequestMapping("/store_list.ej")
	public String store_list(Model model) {
		model.addAttribute("center","store/store_list");
		return "main";
	}
	@RequestMapping("/seller_store_list.ej")
	public String seller_store_list(Model model) {
		model.addAttribute("center","seller/seller_store_list");
		return "main";
	}	
	@RequestMapping("/seller_store_detail.ej")
	public String seller_store_detail(Model model) {
		model.addAttribute("center","seller/seller_store_detail");
		return "main";
	}	
	@RequestMapping("/coupon_list.ej")
	public String coupon_list(Model model) {
		model.addAttribute("center","seller/coupon_list");
		return "main";
	}
	@RequestMapping("/coupon_add.ej")
	public String coupon_add(Model model) {
		model.addAttribute("center","seller/coupon_add");
		return "main";
	}	
	@RequestMapping("/store_map.ej")
	public String store_map(Model model) {
		model.addAttribute("center","store/store_map");
		return "main";
	}	
	@RequestMapping("/order1.ej")
	public String order1(Model model) {
		model.addAttribute("center", "store/order1");		
		return "main";
	}
	@RequestMapping("order2.ej")
	public String order2(Model model) {
		model.addAttribute("center","store/order2");
		return "main";
	}
	@RequestMapping("order3.ej")
	public String order3(Model model) {
		model.addAttribute("center", "store/order3");
		return "main";
	}
	@RequestMapping("store_detail")
	public String store_detail(Model model) {
		model.addAttribute("center", "store/store_detail");
		return "main";
	}
}

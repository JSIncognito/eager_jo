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
	@RequestMapping("/store_grid.ej")
	public String store_grid(Model model) {
		model.addAttribute("center","store/store_grid");
		return "main";
	}
	@RequestMapping("/store_menu.ej")
	public String store_menu(Model model) {
		model.addAttribute("center","store/store_menu");
		return "main";
	}
	
}

package com.ej.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/main.ej")
	public String main() {
		return "main";
	}
	@RequestMapping("/store_ist.ej")
	public String store_list() {
		return "store_list";
	}	
}

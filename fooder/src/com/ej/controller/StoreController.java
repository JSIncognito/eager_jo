package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.frame.Biz;
import com.ej.vo.Store;

@Controller
public class StoreController {

	@Resource(name="storeBiz")
	Biz<Store, Double> biz;

	@RequestMapping("/st_list.ej")
	public String getStore(Model model) {
		System.out.println("StoreController");
		List<Store> list = biz.get();

		model.addAttribute("st_list", list);

		for(Store s : list) {
			System.out.println(s);
		}
		return "main";
	}
	
}

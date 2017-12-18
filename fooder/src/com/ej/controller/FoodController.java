package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.frame.Biz;
import com.ej.vo.Food;

@Controller
public class FoodController {
	
	@Resource(name="foodBiz")
	Biz<Food, Double> biz;
	
	@RequestMapping("/st_food.ej")
	public String getFood(Model model) {
		System.out.println("FoodController");
		List<Food> list = biz.get();
		
		model.addAttribute("food", list);
		
		for(Food f : list) {
			System.out.println(f);
		}
		return "main";
	}
}

package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.frame.Biz;
import com.ej.vo.Ofd;

@Controller
public class OfdController {

	@Resource(name="ofdBiz")	
	Biz<Ofd, Double> biz;
	
	@RequestMapping("/st_ofd.ej")
	public String getOfd(Model model) {
		System.out.println("OfdController");
		List<Ofd> list = biz.get();
		
		model.addAttribute("ofd", list);
		
		for(Ofd o : list) {
			System.out.println(o);
		}
		
		System.out.println("Ofd ¿Ï·á");
		return "main";
	}
}

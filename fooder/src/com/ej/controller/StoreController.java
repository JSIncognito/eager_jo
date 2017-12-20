package com.ej.controller;

import java.net.StandardSocketOptions;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.cu.CuBiz;
import com.ej.food.FoodBiz;
import com.ej.store.StoreBiz;
import com.ej.vo.Cu;
import com.ej.vo.Food;
import com.ej.vo.Store;

@Controller
public class StoreController {

	@Resource(name="storeBiz")
	StoreBiz sBiz;
	
	@Resource(name="foodBiz")
	FoodBiz fBiz;
	
	@Resource(name="cuBiz")
	CuBiz cuBiz;	

	//	가게 리스트 
	@RequestMapping("/store_list.ej")
	public String store_list(String st_type, String st_addr, Model model) {
		// 임의 값
		st_type="치킨";
		st_addr="행당동";
		
		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
//		List<Store> cate_list = sBiz.select_cete();

		System.out.println("가게 리스트 store_list");
		for(Store s : st_list) {
			System.out.println(s);
		}
		model.addAttribute("stList", st_list);
//		model.addAttribute("list_cate", cate_list);
		model.addAttribute("center", "store/store_list");
		System.out.println("완료");
		return "main";
	}
	//	가게 리스트 
	@RequestMapping("/store_grid.ej")
	public String store_grid(String st_type, String st_addr, Model model) {

		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
//		List<Store> cate_list = sBiz.select_cete();

		model.addAttribute("stGrid", st_list);
//		model.addAttribute("grid_cate", cate_list);
		model.addAttribute("center", "store/store_grid");
		return "main";
	}
	//	가게 리스트 
	@RequestMapping("/store_map.ej")
	public String store_map(String st_type, String st_addr, Model model) {
		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
//		List<Store> cate_list = sBiz.select_cete();
		
		model.addAttribute("stMap", st_list);
//		model.addAttribute("map_cate", cate_list);
		model.addAttribute("center", "store/store_map");
		return "main";
	}
	
	//	가게의 메뉴 리스트
	@RequestMapping("/store_menu.ej")
	public String store_menu(Model model) {
		System.out.println("store_menu 진입");
		Double st_key1 = 5275626750.0;
		Double st_key2 = 126.0;
		List<Food> stMenu = fBiz.select_stMenu(st_key1);
		for(Food f:stMenu) {
			System.out.println(f);
		}

		List<Cu> uCoupon = cuBiz.select_uCoupon(st_key2);
		for(Food f:stMenu) {
			System.out.println(f);
		}
		
		for(Cu c: uCoupon) {
			System.out.println(c);
		}
		model.addAttribute("stMenu", stMenu);
		model.addAttribute("uCoupon", uCoupon);
		model.addAttribute("center", "store/store_menu");
		System.out.println("가게의 메뉴 리스트 완료 ");
		return "main";
	}
	
	// 가게 세부 정보
	@RequestMapping("/store_detail.ej")	
	public String select_detail(Double stKey, Model model){
		System.out.println("가게 세부 정보");
		stKey = 4866196529.0;
		Store stDetail = sBiz.get(stKey);
		
		System.out.println("가게 세부정보 : " +  stDetail);
		model.addAttribute("stDetail", stDetail);
		model.addAttribute("center", "store/store_detail");
		return "main";
	}
	
}


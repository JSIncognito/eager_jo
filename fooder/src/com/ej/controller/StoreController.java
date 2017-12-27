package com.ej.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	// 가게 리스트
	@RequestMapping("/store_list.ej")
	public String store_list(@RequestParam Map paramMap, Model model) {
		System.out.println(paramMap.get("st_type") + " "+ paramMap.get("st_addr")+" " + paramMap.get("lat") + " " + paramMap.get("lot"));
		System.out.println(paramMap);
		// test
//		st_type="치킨";
//		st_addr="행당동";
		String st_type = (String) paramMap.get("st_type");
		String st_addr = (String) paramMap.get("st_addr");

		if(st_type.equals("china")) {
			st_type = "중국집";
		}else if(st_type.equals("chicken")) {
			st_type = "치킨";
		}else if(st_type.equals("pizza")) {
			st_type = "피자";
		}
		System.out.println(st_type + " " +  st_addr);
		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
//		List<Store> cate_list = sBiz.select_cete();
		System.out.println("가게 리스트 store_list");
		for(Store s : st_list) {
			System.out.println(s);
		}
		model.addAttribute("stList", st_list);
//		model.addAttribute("list_cate", cate_list);
		model.addAttribute("center", "store/store_list");
		return "main";
	}
	//	가게 리스트 
	@RequestMapping("/store_grid.ej")
	public String store_grid(String st_type, String st_addr, Model model) {

		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
		// List<Store> cate_list = sBiz.select_cete();

		model.addAttribute("stGrid", st_list);
		// model.addAttribute("grid_cate", cate_list);
		model.addAttribute("center", "store/store_grid");
		return "main";
	}

	// 가게 리스트
	@RequestMapping("/store_map.ej")
	public String store_map(String st_type, String st_addr, Model model) {
		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
		// List<Store> cate_list = sBiz.select_cete();

		model.addAttribute("stMap", st_list);
		// model.addAttribute("map_cate", cate_list);
		model.addAttribute("center", "store/store_map");
		return "main";
	}
	
	//	가게의 메뉴 리스트
	@RequestMapping("/store_menu.ej")
	public String store_menu(@RequestParam("stKey") Double st_key, Model model) {
		System.out.println("store_menu 진입");
/*		Double st_key1 = 5275626750.0;
		Double st_key2 = 126.0;
*/
		System.out.println(st_key);
		List<Food> stMenu = fBiz.select_stMenu(st_key);
		for(Food f:stMenu) {
			System.out.println("확인1" + f);
		}

		List<Cu> uCoupon = cuBiz.select_uCoupon(st_key);

		System.out.println(uCoupon);
		for(Cu c:uCoupon) {
/*			System.out.println(f);*/
			System.out.println("확인2" + c);			
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

	//	점주의 가게 목록
	@RequestMapping("/seller_main.ej")
	public String mystore_list(Model model,String u_id) {
		u_id = "admin66";
		List<Store> list = null;
		sBiz.select_myStore(u_id);
		model.addAttribute("myStore",list);
		model.addAttribute("center","seller/seller_main");
		return "main";
		
	}
		
	
	
}

package com.ej.controller;

import java.util.List;

import javax.annotation.Resource;

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

	@Resource(name = "storeBiz")
	StoreBiz sBiz;

	@Resource(name = "foodBiz")
	FoodBiz fBiz;

	@Resource(name = "cuBiz")
	CuBiz cuBiz;

	// ���� ����Ʈ
	@RequestMapping("/store_list.ej")
	public String store_list(String st_type, String st_addr, Model model) {
		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
		// List<Store> cate_list = sBiz.select_cete();

		System.out.println("���� ����Ʈ store_list");
		for (Store s : st_list) {
			System.out.println(s);
		}
		model.addAttribute("stList", st_list);
		// model.addAttribute("list_cate", cate_list);
		model.addAttribute("center", "store/store_list");
		System.out.println("�Ϸ�");
		return "main";
	}

	// ���� ����Ʈ
	@RequestMapping("/store_grid.ej")
	public String store_grid(String st_type, String st_addr, Model model) {

		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
		// List<Store> cate_list = sBiz.select_cete();

		model.addAttribute("stGrid", st_list);
		// model.addAttribute("grid_cate", cate_list);
		model.addAttribute("center", "store/store_grid");
		return "main";
	}

	// ���� ����Ʈ
	@RequestMapping("/store_map.ej")
	public String store_map(String st_type, String st_addr, Model model) {
		List<Store> st_list = sBiz.select_stList(st_type, st_addr);
		// List<Store> cate_list = sBiz.select_cete();

		model.addAttribute("stMap", st_list);
		// model.addAttribute("map_cate", cate_list);
		model.addAttribute("center", "store/store_map");
		return "main";
	}

	// ������ �޴� ����Ʈ
	@RequestMapping("/store_menu.ej")
	public String store_menu(Model model) {
		List<Food> stMenu = fBiz.select_stMenu();
		List<Cu> uCoupon = cuBiz.select_uCoupon();

		System.out.println("store_menu ����");

		for (Food f : stMenu) {
			System.out.println(f);
		}

		for (Cu c : uCoupon) {
			System.out.println(c);
		}
		model.addAttribute("stMenu", stMenu);
		model.addAttribute("uCoupon", uCoupon);
		model.addAttribute("center", "store/store_menu");
		System.out.println("������ �޴� ����Ʈ �Ϸ� ");
		return "main";
	}

	// ���� ���� ����
	@RequestMapping("/store_detail.ej")
	public String select_detail(Double stId, Model model) {
		Store stDetail = sBiz.get(stId);

		model.addAttribute("stDetail", stDetail);
		model.addAttribute("center", "store/store_detail");
		return "main";
	}

	//	������ ���� ���
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

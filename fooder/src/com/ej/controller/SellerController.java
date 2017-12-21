package com.ej.controller;

import java.io.FileOutputStream;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.ej.food.FoodBiz;
import com.ej.frame.Biz;
import com.ej.vo.Food;
import com.ej.vo.Store;
import com.ej.vo.Users;

@Controller
public class SellerController {
	@Resource(name="usersBiz")
	Biz<Users, String> usersbiz;
	
	@Resource(name="storeBiz")
	Biz<Store, Double> storebiz;
	
	@Resource(name="foodBiz") 
	FoodBiz foodbiz;
	
	String dir = "";
	int size = 500000000;
	
	@RequestMapping("/seller_mypage.ej")
	public String seller_mypage(HttpServletRequest request) {
//		String id = (String) request.getAttribute("id");	// 수정 필요
		String id = "admin306";	// 임의
		Users user = usersbiz.get(id);
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("seller", user);
		return "main";
	}
	
	@RequestMapping("/seller_mypage_modify.ej")
	public String seller_mypage_modify(HttpServletRequest request, Users u) {
		System.out.println("seller_mypage_modify");
//		String id = (String) request.getAttribute("id");	// 수정 필요
//		String pwd1 = (String) request.getAttribute("pwd1");
//		String pwd2 = (String) request.getAttribute("pwd2");
//		String phone = (String) request.getAttribute("phone");
//		String addr = (String) request.getAttribute("addr");
		
//		System.out.println("id: " + id);
//		System.out.println("pwd: " + pwd1);
//		System.out.println("phone: " + phone);
//		System.out.println("addr: " + addr);
//		Users u = new Users(id, pwd1, phone, addr);
		System.out.println("users: " + u);
//		usersbiz.modify(u);
//		String id = "admin306";	// 임의
//		Users user = usersbiz.get(id);
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("seller", u);
		return "main";
	}
	
	// seller_store_detail.jsp 띄우기 
	@RequestMapping("/seller_store_detail.ej")
	public String seller_store_detail(HttpServletRequest request, Double st_key) {
//		// Store 정보 가져오기
//		Store store = storebiz.get(st_key);
//		
//		// Store 정보 보내기
//		request.setAttribute("store", store);
		
		// TEST !!!
		Store store = new Store(1234, "test store", "치킨", 127.123, 34.123, "avatar1.jpg", "11:00-22:00", "test addr", 5, "test_id");
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu(9090098358.0));
		
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
	// store 정보 수정하기
	// 파일 전송 불량 ㅠㅠ
	@RequestMapping("/seller_store_modify.ej")
	public String seller_store_modify(HttpServletRequest request) {
		int idx = 1;
		
		// 사진 받기 위한 request인 mr 설정
		MultipartRequest mr = (MultipartRequest) request;
//		MultipartRequest mr = new MultipartRequest(request, dir, size, "EUC-KR");;
		
		// 상점 키 값 받아오기 
		String key = (String) request.getParameter("st_key");
		
		// food 값 받아오기
		for(int i=0;i<4; i++){
			// 기존 사진 이름, 음식명, 가격 가져오기
			String img_original = (String) request.getParameter("item" + idx + "_f_img_original");
//			String img_changed = (String) request.getParameter("item" + idx + "_f_img_changed");
			String name = (String) request.getParameter("item" + idx + "_f_name");
			String price = (String) request.getParameter("item" + idx + "_f_price");
			
			// 사진 가져오기
//			MultipartFile mf = (MultipartFile) request.getAttribute("item" + idx + "_f_img_changed");
			MultipartFile mf = mr.getFile("item" + idx + "_f_img_changed");
			
			// 입력한 사진 이름 처리
			String imgname = "";
			if(mf == null) {
				System.out.println("mf is null");
			} else {
				imgname = mf.getOriginalFilename();
				System.out.println(imgname);
			}
			
			// TEST!!!
			System.out.println(img_original + "/" + imgname + "/" + name + "/" + price);
			/*MultipartFile mf = (MultipartFile) request.getAttribute("item" + idx + "_f_img_changed");
			String imgname = mf.getOriginalFilename();
			System.out.println(imgname);
			
			if(name== null) break;
			if(imgname.equals("") || imgname == null) {
				imgname = img_original;
			}
			Food food = new Food(name, Double.parseDouble(price), imgname, Double.parseDouble(key));
			System.out.println("food" + idx + ": " + food);
			
			byte[] data;
			try {
				data = mf.getBytes();
				FileOutputStream out = new FileOutputStream("C:/github/eager_jo/fooder/web/img" + imgname);
				out.write(data);
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}*/
			
			idx++;
		}
		
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
}

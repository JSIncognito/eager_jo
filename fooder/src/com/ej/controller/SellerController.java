package com.ej.controller;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
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
	
	@RequestMapping("/seller_mypage.ej")
	public String seller_mypage(HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		Users user = (Users) session.getAttribute("loginUser");
		
		// TEST !!!
		String id = "admin306";	// 임의
		Users user = usersbiz.get(id);
		
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("loginUser", user);
		return "main";
	}
	
	@RequestMapping("/seller_mypage_modify.ej")
	public String seller_mypage_modify(HttpServletRequest request, Users u) {
		System.out.println("/seller_mypage_modify");
		System.out.println("new users info: " + u);
		usersbiz.modify(u);
		
		Users user = usersbiz.get(u.getU_id());
		
//		HttpSession session = request.getSession();
//		session.removeAttribute("loginUser");
//		session.setAttribute("loginUser", user);
		
		request.setAttribute("center", "seller/seller_mypage");
		request.setAttribute("loginUser", user);
		return "main";
	}
	
	// test용!! seller_store_detail.jsp 띄우기 
	@RequestMapping("/seller_store_detail_test.ej")
	public String seller_store_detail_test(HttpServletRequest request) {
		// TEST !!!
		Store store = new Store(9090098358.0, "test store", "치킨", 127.123, 34.123, "devices.jpg", "11:00-22:00", "test addr", 5, "test_id");
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu(9090098358.0));
		
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
	
	// seller_store_detail.jsp 띄우기 
	@RequestMapping("/seller_store_detail.ej")
	public String seller_store_detail(HttpServletRequest request) {
		System.out.println("/seller_store_detail");
		
		// Store 정보 가져오기
		String st_key = (String)request.getParameter("st_key");
		System.out.println("st_key: " + st_key);
		Store store = storebiz.get(Double.parseDouble(st_key));
		
		// Store 정보 보내기
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu(9090098358.0));
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
	@RequestMapping("/seller_store_modify_store.ej")
	public void seller_store_modify_store(HttpServletRequest request, HttpServletResponse res) throws Exception {
		System.out.println("/seller_store_modify_store");
//		System.out.println("new store info: " + store);

		String key = request.getParameter("st_key");
		String orig_img = request.getParameter("st_original_img");
		String chn_img = request.getParameter("st_changed_img");
		String addr = request.getParameter("st_addr");
		String uid = request.getParameter("u_id");
		
		String ohour = (String) request.getParameter("st_openTime_hour");
		String ominute = (String) request.getParameter("st_openTime_minute");
		String chour = (String) request.getParameter("st_closeTime_hour");
		String cminute = (String) request.getParameter("st_closeTime_minute");
		String hour = ohour + ":" + ominute + "-" + chour + ":" + cminute;
		
		// lat, lot 추가
		String url = "https://maps.googleapis.com/maps/api/geocode/json?address="
		 		+  addr
		 		+ "&key=AIzaSyDTp_bOHTzvUSJLqFvCywZV_XoEQrr9tic";

		
		// img 추가
		
		// time 추가
	}
	
	// store의 food 정보 수정하기
	@RequestMapping("/seller_store_modify_food.ej")
	public void seller_store_modify_food(HttpServletRequest request, HttpServletResponse res) {
		System.out.println("/seller_store_modify_food");
		int idx = 1;
		
		// 사진 받기 위한 request인 mr 설정
		MultipartRequest mr = (MultipartRequest) request;

		// 상점 키 값 받아오기 
		String skey = (String) request.getParameter("st_key");
		double key = Double.parseDouble(skey);

		// food 삭제용 리스트 
		List<Double> keys = new ArrayList<>();
		
		// food 값 받아오기
		while(true) {
			// 기존 사진 이름, 음식명, 가격 가져오기
			String f_key = request.getParameter("item" + idx + "_f_key");
			String img_original = (String) request.getParameter("item" + idx + "_f_img_original");
			String name = (String) request.getParameter("item" + idx + "_f_name");
			String price = (String) request.getParameter("item" + idx + "_f_price");
			
			System.out.println("data: " + f_key + "/" + img_original + "/" + name + "/" + price + "/");
			// while문 끝
			if(name == null || name.equals("")) break;	
			keys.add(Double.parseDouble(f_key));
			
			// 사진 가져오기
			MultipartFile mf = mr.getFile("item" + idx + "_f_img_changed");
			
			// 입력한 사진 이름 처리
			String imgname = "";
			
			Food food = null;
			if(img_original.equals("") || img_original == null) {// 새로운 음식 등록
				System.out.println("new food");
				imgname = mf.getOriginalFilename();
				food = new Food(name, Double.parseDouble(price), imgname, key);
				foodbiz.register(food);
			} else {
				if(mf.isEmpty()) { // 기존 음식 사진 변경 x
					System.out.println("not changed");
					imgname = img_original;
				} else { // 기존 음식 사진 변경 o 
					System.out.println("changed");
					imgname = mf.getOriginalFilename();
				}
				food = new Food(Double.parseDouble(f_key), name, Double.parseDouble(price), imgname, key);
				foodbiz.modify(food);
			}
			System.out.println("food" + idx + ": " + food);
			
			if(!mf.isEmpty()) {		// 기존 음식 사진 변경 x
				byte[] data;
				try {
					data = mf.getBytes();
					FileOutputStream out = new FileOutputStream("C:/github/eager_jo/fooder/web/img/" + imgname);
					out.write(data);
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			idx++;
		}
		
		// food 삭제하기
		List<Food> foods = foodbiz.select_stMenu(key);
		if(foods.size() != idx-1) {	// 삭제할 항목 있음
			for(Food f : foods) {
				if(!keys.contains(f.getF_key())) {
					foodbiz.remove(f.getF_key());
					System.out.println(f.getF_key() + "(" + f.getF_name() + ")" + " removed");
				}
			}
		}
		
		request.setAttribute("st_key", key);
		RequestDispatcher dispatcher = request.getRequestDispatcher("seller_store_detail.ej");
		try {
			dispatcher.forward(request, res);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	
//	@RequestMapping("/test.ej")
//	public String test(HttpServletRequest request) {
//		request.setAttribute("center", "test");
//		return "main";
//	}
//	
//	@RequestMapping("/test2.ej")
//	public String test2(HttpServletRequest request) {
//		MultipartRequest mr = (MultipartRequest) request;
//		MultipartFile mf = mr.getFile("testFile");
//		System.out.println(mf.getOriginalFilename());
//		
//		request.setAttribute("center", "test");
//		return "main";
//	}
	
//	public String readAll(Reader rd) throws IOException {
//	    StringBuilder sb = new StringBuilder();
//	    int cp;
//	    while ((cp = rd.read()) != -1) {
//	      sb.append((char) cp);
//	    }
//	    return sb.toString();
//	  }
//
//	  public JSONObject readJsonFromUrl(String url) throws Exception {
//	    InputStream is = new URL(url).openStream();
//	    try {
//	      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
//	      String jsonText = readAll(rd);
//	      JSONObject json = new JSONObject(jsonText);
//	      return json;
//	    } finally {
//	      is.close();
//	    }
//	  }

	  /*public static void main(String[] args) throws IOException, JSONException {
	    JSONObject json = readJsonFromUrl("https://graph.facebook.com/19292868552");
	    System.out.println(json.toString());
	    System.out.println(json.get("id"));
	  }*/
}

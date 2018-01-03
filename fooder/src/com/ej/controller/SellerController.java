package com.ej.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.ej.food.FoodBiz;
import com.ej.frame.Biz;
import com.ej.store.StoreBiz;
import com.ej.vo.Food;
import com.ej.vo.Store;
import com.ej.vo.Users;

@Controller
public class SellerController {
	@Resource(name = "usersBiz")
	Biz<Users, String> usersbiz;
	
	@Resource(name="storeBiz")
	StoreBiz storebiz;
	
	@Resource(name="foodBiz") 
	FoodBiz foodbiz;
	
	@RequestMapping("/seller_mypage.ej")
	public String seller_mypage(HttpServletRequest request) {
		request.setAttribute("center", "seller/seller_mypage");
		return "main";
	}
	
	@RequestMapping("/seller_mypage_test.ej")
	public String seller_mypage_test(HttpServletRequest request) {
		// TEST !!!
		String id = "admin306";	// 占쏙옙占쏙옙
		Users user = usersbiz.get(id);
		request.setAttribute("loginUser", user);
		
		request.setAttribute("center", "seller/seller_mypage");
		return "main";
	}
	
	@RequestMapping("/seller_mypage_modify.ej")
	public String seller_mypage_modify(HttpServletRequest request, Users u) {
		System.out.println("/seller_mypage_modify");
		System.out.println("new users info: " + u);
		Users user = usersbiz.get(u.getU_id());
		
		if(u.getU_pwd() == null || u.getU_pwd().equals("")) {
			u.setU_pwd(user.getU_pwd());
		}
		usersbiz.modify(u);
		user = usersbiz.get(u.getU_id());
		
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", user);
		
		request.setAttribute("center", "seller/seller_mypage");
		return "main";
	}

	@RequestMapping("/seller_main.ej")
	public String my_store(Model model, String u_id, HttpServletRequest request) {
		System.out.println("占싫놂옙 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占싱억옙");
		/*u_id = "admin66";*/
		u_id = request.getParameter("u_id");
		List<Store> list = null;
		try {
			list = storebiz.select_myStore(u_id);
			System.out.println(list);
			model.addAttribute("center", "seller/seller_main");
			model.addAttribute("myStore", list);
			for (Store store : list) {
				System.out.println("占쏙옙占쏙옙 占쏙옙占쏙옙(占쏙옙) " + list);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return "main";

	}
	
	@RequestMapping("/seller_store_detail_test.ej")
	public String seller_store_detail_test(HttpServletRequest request) {
		// TEST !!!
		HttpSession session = request.getSession();
		session.setAttribute("st_key",  9090098358.0);
		Store store = new Store(9090098358.0, "test store", "????", 127.123, 34.123, "devices.jpg", "11:00-22:00", "??????? 212", 5, "test_id");
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu(9090098358.0));
		
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
	
	// seller_store_detail.jsp 占쏙옙占쏙옙占쌍깍옙
	@RequestMapping("/seller_store_detail.ej")
	public String seller_store_detail(HttpServletRequest request) {
		System.out.println("/seller_store_detail");
		
		// Store 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙
		String key = (String) request.getParameter("st_key");	// TODO : 占쏙옙占쏙옙 占싫놂옙占쏙옙 체크
		System.out.println("st_key: " + key);
		
		HttpSession session = request.getSession();
//		20180102 hb Choi
		Double st_key = 0.;
		if(key == null || key.equals("")) {
			st_key = (Double) session.getAttribute("st_key");
		} else {
			st_key = Double.parseDouble(key);
		}
		Store store = storebiz.get(st_key);
		
		// st_key session占쏙옙 占쌍깍옙
//		HttpSession session = request.getSession();
		session.setAttribute("st_key", st_key);
		
		// Store 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu(store.getSt_key()));
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
	// store 占쏙옙占쏙옙 占쏙옙占쏙옙
	@RequestMapping("/seller_store_modify_store.ej")
	public void seller_store_modify_store(HttpServletRequest request, HttpServletResponse res) throws Exception {
		res.setCharacterEncoding("utf-8");
		System.out.println("/seller_store_modify_store");
//		System.out.println("new store info: " + store);
		
		String key = request.getParameter("st_key");
		Double st_key = Double.parseDouble(key);
		Store st_orig = storebiz.get(st_key);
		
		String addr = request.getParameter("st_addr");
		String name = request.getParameter("st_nm");
		String lat = request.getParameter("lat");
		String lot = request.getParameter("lot");
		
		String ohour = (String) request.getParameter("st_openTime_hour");
		String ominute = (String) request.getParameter("st_openTime_minute");
		String chour = (String) request.getParameter("st_closeTime_hour");
		String cminute = (String) request.getParameter("st_closeTime_minute");
		
		System.out.println("key: " + key + "addr: " + addr );
		
		// time 占쏙옙占쏙옙
		String hour = ohour + ":" + ominute + "-" + chour + ":" + cminute;
		System.out.println("hour: " + hour);
		
		// img 占쏙옙占쏙옙
		MultipartRequest mr = (MultipartRequest) request;
		MultipartFile mf = mr.getFile("st_changed_img");
		
		String imgname = "";
		if(mf.isEmpty()) {
			imgname = st_orig.getSt_img();
		} else {
			imgname = mf.getOriginalFilename();
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
		System.out.println("imgname: " + imgname);
		Store store = new Store(st_key, name, st_orig.getSt_type(), Double.parseDouble(lat), Double.parseDouble(lot), imgname, hour, addr, st_orig.getU_id());
		System.out.println(store);
		storebiz.modify(store);
		
		request.setAttribute("st_key", st_key);
		RequestDispatcher dispatcher = request.getRequestDispatcher("seller_store_detail.ej");
		try {
			dispatcher.forward(request, res);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	// store占쏙옙 food 占쏙옙占쏙옙 占쏙옙占쏙옙
	@RequestMapping("/seller_store_modify_food.ej")
	public void seller_store_modify_food(HttpServletRequest request, HttpServletResponse res) {
		System.out.println("/seller_store_modify_food");
		int idx = 1;
		
		MultipartRequest mr = (MultipartRequest) request;

		// st_key 占쏙옙占쏙옙
		String skey = (String) request.getParameter("st_key");
		double key = Double.parseDouble(skey);

		// food key 占쌨깍옙占� 占쏙옙占쏙옙트
		List<Double> keys = new ArrayList<>();
		
		// food 占쏙옙占쏙옙 占쌨아울옙占쏙옙
		while(true) {
			// food 占쏙옙占쏙옙 占싼곤옙 占쌨깍옙
			String f_key = request.getParameter("item" + idx + "_f_key");
			String img_original = (String) request.getParameter("item" + idx + "_f_img_original");
			String name = (String) request.getParameter("item" + idx + "_f_name");
			String price = (String) request.getParameter("item" + idx + "_f_price");
			
			System.out.println("data: " + f_key + "/" + img_original + "/" + name + "/" + price + "/");
			// while占쏙옙 占쏙옙占쏙옙占쏙옙占� 
			if(name == null || name.equals("")) break;	
			if(f_key != null) keys.add(Double.parseDouble(f_key));
			else keys.add(1.);
			
			// 占싱뱄옙占쏙옙 占쏙옙占쏙옙占쏙옙
			MultipartFile mf = mr.getFile("item" + idx + "_f_img_changed");
			
			// 占싱뱄옙占쏙옙 占싱몌옙
			String imgname = "";
			
			Food food = null;
			if(img_original.equals("") || img_original == null) {	// 占쏙옙占싸울옙 占쏙옙占쏙옙 占쌩곤옙
				System.out.println("new food");
				imgname = mf.getOriginalFilename();
				food = new Food(name, Double.parseDouble(price), imgname, key);
				foodbiz.register(food);
			} else {
				if(mf.isEmpty()) { // 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 x
					System.out.println("not changed");
					imgname = img_original;
				} else { // 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 o
					System.out.println("changed");
					imgname = mf.getOriginalFilename();
				}
				food = new Food(Double.parseDouble(f_key), name, Double.parseDouble(price), imgname, key);
				foodbiz.modify(food);
			}
			System.out.println("food" + idx + ": " + food);
			
			if(!mf.isEmpty()) {		// 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占시몌옙占쏙옙
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
		
		// food 占쏙옙占쏙옙占싹깍옙
		List<Food> foods = foodbiz.select_stMenu(key);
		if(foods.size() != idx-1) {	// 占싸듸옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙트占쏙옙 占쏙옙占쏙옙占쏘가 占쌕몌옙 占쏙옙荑∽옙占� 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占�
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
	
	@RequestMapping("/getlatlot.ej")
	public void getLatLot(HttpServletResponse res, String addr) {
		System.out.println("/getlatlot.ej");
		JSONObject result = null;
		
		String clientId = "MoWWppcCbc3maWhpTijC";//占쏙옙占시몌옙占쏙옙占싱쇽옙 클占쏙옙占싱억옙트 占쏙옙占싱듸옙";
        String clientSecret = "WHLQ_6RSaM";//占쏙옙占시몌옙占쏙옙占싱쇽옙 클占쏙옙占싱억옙트 占쏙옙크占쏙옙占쏙옙";
		
		try {
            String newaddr = URLEncoder.encode(addr, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/map/geocode?query=" + newaddr; //json
            
            URL url = new URL(apiURL);
            System.out.println(url);
            
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            
            int responseCode = con.getResponseCode();
            InputStreamReader isr;
            
            if(responseCode==200) { // 占쏙옙占쏙옙 호占쏙옙
                isr = new InputStreamReader(con.getInputStream(), "utf-8");
            } else {  // 占쏙옙占쏙옙 占쌩삼옙
                isr = new InputStreamReader(con.getErrorStream(), "utf-8");
            }
            
            JSONObject items = (JSONObject) JSONValue.parseWithException(isr);
    		JSONObject bodyArray = (JSONObject) items.get("result");
    		JSONArray ja = (JSONArray) bodyArray.get("items");
//    		System.out.println("ja: " + ja);
    		
    		bodyArray = (JSONObject) ja.get(0);
    		result = (JSONObject) bodyArray.get("point");
    		System.out.println(result);
        } catch (Exception e) {
            System.out.println(e);
        }
		
//		return result;
		PrintWriter out = null;
		try {
			out = res.getWriter();
			out.println(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			out.close();
		}
	}

	
	
}

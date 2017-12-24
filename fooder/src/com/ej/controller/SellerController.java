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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
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
//		Users user = (Users) session.getAttribute("loginUser");s
		
		// TEST !!!
		String id = "admin306";	// 임의
		Users user = usersbiz.get(id);
		request.setAttribute("loginUser", user);
		
		request.setAttribute("center", "seller/seller_mypage");
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
	
	// test용!! seller_store_detail.jsp 보여주기
	@RequestMapping("/seller_store_detail_test.ej")
	public String seller_store_detail_test(HttpServletRequest request) {
		// TEST !!!
		Store store = new Store(9090098358.0, "test store", "테스트", 127.123, 34.123, "devices.jpg", "11:00-22:00", "테헤란로 212", 5, "test_id");
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu(9090098358.0));
		
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
	
	// seller_store_detail.jsp 보여주기
	@RequestMapping("/seller_store_detail.ej")
	public String seller_store_detail(HttpServletRequest request) {
		System.out.println("/seller_store_detail");
		
		// Store 정보 가져오기
		String st_key = (String)request.getParameter("st_key");
		System.out.println("st_key: " + st_key);
		Store store = storebiz.get(Double.parseDouble(st_key));
		
		// Store 정보 보내기
		request.setAttribute("store", store);
		request.setAttribute("stMenu", foodbiz.select_stMenu(store.getSt_key()));
		request.setAttribute("center", "seller/seller_store_detail");
		return "main";
	}
	
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
		
		// time 설정
		String hour = ohour + ":" + ominute + "-" + chour + ":" + cminute;
		System.out.println("hour: " + hour);
		
		// img 설정
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
		Store store = new Store(st_key, name, Double.parseDouble(lat), Double.parseDouble(lot), imgname, hour, addr, st_orig.getU_id());
		System.out.println(store);
//		storebiz.modify(store);
		
		request.setAttribute("st_key", st_key);
		RequestDispatcher dispatcher = request.getRequestDispatcher("seller_store_detail.ej");
		try {
			dispatcher.forward(request, res);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	// store의 food 정보 수정
	@RequestMapping("/seller_store_modify_food.ej")
	public void seller_store_modify_food(HttpServletRequest request, HttpServletResponse res) {
		System.out.println("/seller_store_modify_food");
		int idx = 1;
		
		// 사진 가져오기용
		MultipartRequest mr = (MultipartRequest) request;

		// st_key 설정
		String skey = (String) request.getParameter("st_key");
		double key = Double.parseDouble(skey);

		// food key 가져오기용 
		List<Double> keys = new ArrayList<>();
		
		// food 업데이트
		while(true) {
			// 기본 정보 가져오기
			String f_key = request.getParameter("item" + idx + "_f_key");
			String img_original = (String) request.getParameter("item" + idx + "_f_img_original");
			String name = (String) request.getParameter("item" + idx + "_f_name");
			String price = (String) request.getParameter("item" + idx + "_f_price");
			
			System.out.println("data: " + f_key + "/" + img_original + "/" + name + "/" + price + "/");
			// while문 끝
			if(name == null || name.equals("")) break;	
			keys.add(Double.parseDouble(f_key));
			
			// 변경 이미지 가져오기
			MultipartFile mf = mr.getFile("item" + idx + "_f_img_changed");
			
			// 이미지이름
			String imgname = "";
			
			Food food = null;
			if(img_original.equals("") || img_original == null) {	// 새로운 음식 추가
				System.out.println("new food");
				imgname = mf.getOriginalFilename();
				food = new Food(name, Double.parseDouble(price), imgname, key);
				foodbiz.register(food);
			} else {
				if(mf.isEmpty()) { // 음식 사진 변경 x
					System.out.println("not changed");
					imgname = img_original;
				} else { // 음식 사진 변경 o
					System.out.println("changed");
					imgname = mf.getOriginalFilename();
				}
				food = new Food(Double.parseDouble(f_key), name, Double.parseDouble(price), imgname, key);
				foodbiz.modify(food);
			}
			System.out.println("food" + idx + ": " + food);
			
			if(!mf.isEmpty()) {		// 음식 사진 저장
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
		
		// food 제거
		List<Food> foods = foodbiz.select_stMenu(key);
		if(foods.size() != idx-1) {	// 제거된 food 있을 경우
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
		
		String clientId = "MoWWppcCbc3maWhpTijC";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "WHLQ_6RSaM";//애플리케이션 클라이언트 시크릿값";
		
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
            
            if(responseCode==200) { // 정상 호출
                isr = new InputStreamReader(con.getInputStream(), "utf-8");
            } else {  // 에러 발생
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

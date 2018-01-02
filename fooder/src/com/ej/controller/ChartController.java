package com.ej.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.rosuda.REngine.REXP;
import org.rosuda.REngine.RList;
import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// 20180101 hb choi
@Controller
public class ChartController {
	
	// gu : 구 주소. 한글 불가
	// type : pizza/chinese/chicken
	@RequestMapping("/get_chart_data.ej")
	public void getChartData(HttpServletResponse res, String data)  {
		System.out.println("/get_chart_data.ej");
		JSONArray total = null;
		
		try {
			System.out.println("connection");
			RConnection rc = new RConnection();		// R과 연결시 사용하는 클래스
			System.out.println("connection success");
			rc.setStringEncoding("utf8");
			rc.eval("source('C:/RTEST/r5/getData.R',encoding='UTF-8')");
			
			String qry = "getWeather('"+ data + "')";
//			rc.eval("source('C:/RTEST/r5/getData.R')");	// R파일 실행시키기
			System.out.println("eval success");
			
			System.out.println("qry: " + qry);
			REXP x = rc.eval(qry);		// 리턴된 결과가 REXP에 들어감, gu, type
			System.out.println("query success");
			
			RList result = x.asList();			// 결과를 double로 가져옴
			System.out.println("getData success");
			
			qry = "getCount('"+ data + "')";
			System.out.println("qry: " + qry);
			x = rc.eval(qry);		// 리턴된 결과가 REXP에 들어감, gu, type
			System.out.println("query success");
			
			RList result2 = x.asList();			// 결과를 double로 가져옴
			System.out.println("getData success");
			
			// substr(dates, 5,4) as dates, avgtemp, avghumid, avgwindy, rain, sum(counts)
			for(int i=0; i<result.size(); i++) {
				System.out.println(result.get(i));
			}
			String[] dates = result.at(0).asStrings();
			double[] avgtemp = result.at(1).asDoubles();
			double[] avghumid = result.at(2).asDoubles();
			double[] avgwindy = result.at(3).asDoubles();
			double[] rain = result.at(4).asDoubles();
			
//			for(int i=0; i<dates.length; i++) {
//				System.out.println(dates[i] + " " + avgtemp[i] + " " + avghumid[i] + " " + avgwindy[i] + " " + rain[i] + " " + count[i]);
//			}
			
			// json 만들기
			total = new JSONArray();	// 전체 묶어주는 jsonarray
			JSONArray weather = new JSONArray(); // 날씨 정보 array
			JSONArray counts = new JSONArray();	 // 주문 횟수 array 
			
			/*[ weather
			 * {temp[i]
		        name: 'Temperature',
		        data: [2.8, 3.3, -0.1, 0.2, 2.7, 4.8, 0.9] wa[i]
		    }, {
		        name: 'Humidity',
		        data: [7.52, 6.78, 5.24, 4.61, 4.54, 5.55, 7.33]
		    }, {
		        name: 'Windy',
		        data: [1.5, 2.3, 1.7, 1.4, 1.8, 1.6, 1.6]
		    }, {
		        name: 'Rain',
		        data: [3,4,0,0,0,0,0]
		    }]*/
			
			// weather data array 만들기
			JSONArray[] wa = new JSONArray[4];	//temp
//			JSONArray ha = new JSONArray();	//humidity
//			JSONArray wa = new JSONArray();	//windy
//			JSONArray ra = new JSONArray();	//rain
			
			for(int i=0; i<4; i++) {
				wa[i] = new JSONArray();
			}
			
			System.out.println(dates.length);
			for(int i=0; i<dates.length; i++) {
				System.out.println(avgtemp[i] + " " + avghumid[i] + " " + avgwindy[i] + " " + rain[i]);
				wa[0].add(i, Math.round(avgtemp[i]*10)/10.0);
				wa[1].add(i, Math.round(avghumid[i])/10.0);
				wa[2].add(i, Math.round(avgwindy[i]*10)/10.0);
				wa[3].add(i, Math.round(rain[i]*10)/10.0);
			}
			
			// weather안의 object 만들기
			JSONObject[] temp = new JSONObject[4];
			for(int i=0; i<4; i++) {
				temp[i] = new JSONObject();
			}
			
			// name값 설정
			System.out.println("temp[i] name값 설정");
			temp[0].put("name", "Temperature");
			temp[1].put("name", "Humidity");
			temp[2].put("name", "Windy");
			temp[3].put("name", "Rain");
			
			// object의 data값 설정 및 weather array에 넣기 
			System.out.println("temp[i] data값 설정");
			for(int i=0; i<4; i++) {
				temp[i].put("data", wa[i]);
				weather.add(temp[i]);
			}
			
			// counts array 만들기
			/*[ counts
			 * { tmp[i]
		        name: 'Chinese',
		        data: [15320, 16538, 20542, 20779, 14286, 15081, 16191] da[i]

		    }, {
		        name: 'Pizza',
		        data: [16777, 18414, 20734, 20452, 14383, 15246, 16514]

		    }, {
		        name: 'Chicken',
		        data: [18376, 17817, 21100, 20741, 15258, 16617, 17389]

		    }]*/
			
			
			for(int i=0; i<result2.size(); i++) {
				System.out.println(result.get(i));
			}
			// 값 가져오기
			int[] dates2 = result2.at(0).asIntegers();
			String[] types = result2.at(1).asStrings();
			int[] count = result2.at(2).asIntegers();
			
			// 각각의 object 만들기
			JSONObject[] tmp = new JSONObject[3];
			for(int i=0; i<3; i++) {
				tmp[i] = new JSONObject();
			}
			
			tmp[0].put("name", "Chinese");
			tmp[1].put("name", "Pizza");
			tmp[2].put("name", "Chicken");
			
			// object 안의 data array 만들기
			JSONArray[] da = new JSONArray[3];
			for(int i=0; i<3; i++) {
				da[i] = new JSONArray();
			}
			
			for(int i=0; i<7; i++) {
				da[0].add(count[0+i]);
				da[1].add(count[7+i]);
				da[2].add(count[14+i]);
			}
			
			// object에 data array 넣기 및 array에 object 넣기
			for(int i=0; i<tmp.length; i++) {
				tmp[i].put("data", da[i]);
				counts.add(tmp[i]);
			}
			
			total.add(weather);
			total.add(counts);

			
			System.out.println("json: " + total.toJSONString());
//			total.add(counts);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		res.setContentType("text/json;charset=euc-kr");
		PrintWriter out = null;
		try {
			out = res.getWriter();
			out.println(total.toJSONString());
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
	}
}

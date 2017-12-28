package com.ej.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ej.cu.CuBiz;
import com.ej.vo.Coupon;
import com.ej.vo.Cu;

@Controller
public class CuController {

	@Resource(name = "cuBiz")
	CuBiz cbiz;

	// list
	/*
	 * @RequestMapping("/cu_list.ej") public String cu_list(HttpServletRequest
	 * request) { List<Cu> list = null; try { list = biz.get();
	 * request.setAttribute("center", ""); request.setAttribute("list", list); }
	 * catch (Exception e) { e.printStackTrace(); }
	 * 
	 * for(Cu c : list) { System.out.println(c); }
	 * 
	 * System.out.println("CuController Cu �Ϸ�"); return "main";
	 * 
	 * }
	 */

	// 1227 ksy
	@RequestMapping("/cu_insert.ej")
	public String getcoupon(Cu cu, Coupon coupon, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		Date d = new Date();
		String s = d.toString();
		/* System.out.println("���糯¥ : "+ s); */

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		/* System.out.println("���糯¥ : "+ sdf.format(d)); */

		System.out.println("�ȳ� ���� �����̾�!! " + coupon);

		cu.setCu_used(0);
		cu.setCu_date(Double.parseDouble(sdf.format(d)));
		System.out.println("������ �����Է� " + cu);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		List<Cu> list = null;
		list = cbiz.select_userCu(cu.getU_id());
		for (Cu data : list) {
			if (data.getC_key() == coupon.getC_key() && data.getCu_used() == 0) {
				out.println("<script>alert('�̹� �߱޵� �����Դϴ�.'); history.go(-1); </script>");
				out.flush();
				return "main";
			}
		}
		cbiz.register(cu);
		out.println("<script>alert('������ �߱޵Ǿ����ϴ�.'); history.go(-1); </script>");
		out.flush();

		return "main";

		/*
		 * if (cu.getC_key() == coupon.getC_key() && cu.getCu_used() == 0) {
		 * 
		 * out.println("<script>alert('�̹� �߱޵� �����Դϴ�.'); history.go(-1); </script>");
		 * out.flush();
		 * 
		 * } else {
		 * 
		 * cbiz.register(cu);
		 * out.println("<script>alert('������ �߱޵Ǿ����ϴ�.'); history.go(-1); </script>");
		 * out.flush();
		 * 
		 * }
		 * 
		 * return "main";
		 */
	}

}

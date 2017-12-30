package com.ej.vo;

import org.springframework.web.multipart.MultipartFile;

/* 20171214_JS 
 * //==========================
 * 	상품키 double f_key;
	상품명 String f_name;
	상품가격 double f_price;
	상품사진 String f_img;
	사업자번호 double st_key;	
 //==========================
 */
public class Food {
	double f_key;
	String f_name;
	double f_price;
	String f_img;
	double st_key;
	MultipartFile mf;
	
	public Food() {
		super();
	}
	
	public Food(String f_name, double f_price) {
		super();
		this.f_name = f_name;
		this.f_price = f_price;
	}

	public Food(String f_name, double f_price, String f_img) {
		super();
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
	}

	public Food(String f_name, double f_price, String f_img, double st_key) {
		super();
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
		this.st_key = st_key;
	}

	public Food(double f_key, String f_name, double f_price, String f_img) {
		super();
		this.f_key = f_key;
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
	}

	public Food(double f_key, String f_name, double f_price, String f_img, double st_key) {
		super();
		this.f_key = f_key;
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
		this.st_key = st_key;
	}

	public MultipartFile getMf() {
		return mf;
	}

	public void setMf(MultipartFile mf) {
		this.mf = mf;
	}

	public double getF_key() {
		return f_key;
	}

	public void setF_key(double f_key) {
		this.f_key = f_key;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public double getF_price() {
		return f_price;
	}

	public void setF_price(double f_price) {
		this.f_price = f_price;
	}

	public String getF_img() {
		return f_img;
	}

	public void setF_img(String f_img) {
		this.f_img = f_img;
	}

	public double getSt_key() {
		return st_key;
	}

	public void setSt_key(double st_key) {
		this.st_key = st_key;
	}

	@Override
	public String toString() {
		return "Food [f_key=" + f_key + ", f_name=" + f_name + ", f_price=" + f_price + ", f_img=" + f_img + ", st_key="
				+ st_key + "]";
	}
}

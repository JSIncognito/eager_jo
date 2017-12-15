package com.ej.vo;

/* 20171214_JS
 * //==========================
 * 	주문상품키 double of_key;
	주문키 double o_key;
	상품키 double f_key;
	상품명 String f_name;
	상품가격 double f_price;
	상품사진 String f_img;
	사업자번호 double st_key; 
//==========================	
 */
public class Ofd {
	double of_key;
	double o_key;
	double f_key;
	String f_name;
	double f_price;
	String f_img;
	double st_key;
	public Ofd() {
		super();
	}
	public Ofd(double of_key, double o_key, double f_key, String f_name, double f_price, String f_img, double st_key) {
		super();
		this.of_key = of_key;
		this.o_key = o_key;
		this.f_key = f_key;
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
		this.st_key = st_key;
	}
	public Ofd(double of_key, double o_key, double f_key, String f_name, double f_price, String f_img) {
		super();
		this.of_key = of_key;
		this.o_key = o_key;
		this.f_key = f_key;
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
	}
	public Ofd(double o_key, double f_key, String f_name, double f_price, String f_img) {
		super();
		this.o_key = o_key;
		this.f_key = f_key;
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
	}
	public Ofd(String f_name, double f_price, String f_img) {
		super();
		this.f_name = f_name;
		this.f_price = f_price;
		this.f_img = f_img;
	}
	public double getOf_key() {
		return of_key;
	}
	public void setOf_key(double of_key) {
		this.of_key = of_key;
	}
	public double getO_key() {
		return o_key;
	}
	public void setO_key(double o_key) {
		this.o_key = o_key;
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
		return "Of [of_key=" + of_key + ", o_key=" + o_key + ", f_key=" + f_key + ", f_name=" + f_name + ", f_price="
				+ f_price + ", f_img=" + f_img + ", st_key=" + st_key + "]";
	}
	
}

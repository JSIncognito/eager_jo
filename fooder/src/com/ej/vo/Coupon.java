package com.ej.vo;

/* 20171214_JS 
 * 	쿠폰키 double c_key;
	사업자 번호 double st_key;
	구분코드 String c_code;
	증정품명 String c_gift;
	할인금액 double d_dc;
	쿠폰이름 String c_nm;
	쿠폰시작일 double c_start;
	쿠폰종료일 double c_end;
	쿠폰발행일 double c_date; 
	가게이름 String st_nm;
	가게주소 String st_addr;
	위도 double st_lat;
	경도 double st_lot;
 *
 */
public class Coupon {
	double c_key;
	double st_key;
	String c_code;
	String c_gift;
	double c_dc;
	String c_nm;
	double c_start;
	double c_end;
	double c_date;
	String st_nm;
	String st_addr;
	double st_lat;
	double st_lot;
	
	public Coupon() {
		super();
	}


	public Coupon(double c_key, double st_key, String c_code, String c_gift, double c_dc, String c_nm, double c_start,
			double c_end, double c_date, String st_nm, String st_addr, double st_lat, double st_lot) {
		super();
		this.c_key = c_key;
		this.st_key = st_key;
		this.c_code = c_code;
		this.c_gift = c_gift;
		this.c_dc = c_dc;
		this.c_nm = c_nm;
		this.c_start = c_start;
		this.c_end = c_end;
		this.c_date = c_date;
		this.st_nm = st_nm;
		this.st_addr = st_addr;
		this.st_lat = st_lat;
		this.st_lot = st_lot;
	}

	public double getC_key() {
		return c_key;
	}

	public void setC_key(double c_key) {
		this.c_key = c_key;
	}

	public double getSt_key() {
		return st_key;
	}

	public void setSt_key(double st_key) {
		this.st_key = st_key;
	}

	public String getC_code() {
		return c_code;
	}

	public void setC_code(String c_code) {
		this.c_code = c_code;
	}

	public String getC_gift() {
		return c_gift;
	}

	public void setC_gift(String c_gift) {
		this.c_gift = c_gift;
	}

	public double getC_dc() {
		return c_dc;
	}

	public void setC_dc(double c_dc) {
		this.c_dc = c_dc;
	}

	public String getC_nm() {
		return c_nm;
	}

	public void setC_nm(String c_nm) {
		this.c_nm = c_nm;
	}

	public double getC_start() {
		return c_start;
	}

	public void setC_start(double c_start) {
		this.c_start = c_start;
	}

	public double getC_end() {
		return c_end;
	}

	public void setC_end(double c_end) {
		this.c_end = c_end;
	}

	public double getC_date() {
		return c_date;
	}

	public void setC_date(double c_date) {
		this.c_date = c_date;
	}

	public String getSt_nm() {
		return st_nm;
	}

	public void setSt_nm(String st_nm) {
		this.st_nm = st_nm;
	}

	public String getSt_addr() {
		return st_addr;
	}

	public void setSt_addr(String st_addr) {
		this.st_addr = st_addr;
	}

	public double getSt_lat() {
		return st_lat;
	}

	public void setSt_lat(double st_lat) {
		this.st_lat = st_lat;
	}

	public double getSt_lot() {
		return st_lot;
	}

	public void setSt_lot(double st_lot) {
		this.st_lot = st_lot;
	}

	@Override
	public String toString() {
		return "Coupon [c_key=" + c_key + ", st_key=" + st_key + ", c_code=" + c_code + ", c_gift=" + c_gift + ", c_dc="
				+ c_dc + ", c_nm=" + c_nm + ", c_start=" + c_start + ", c_end=" + c_end + ", c_date=" + c_date
				+ ", st_nm=" + st_nm + ", st_addr=" + st_addr + ", st_lat=" + st_lat + ", st_lot=" + st_lot + "]";
	}
	
		
}

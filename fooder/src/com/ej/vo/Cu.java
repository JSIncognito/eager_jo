package com.ej.vo;

/* 20171214_JS
 * 	쿠폰손님키 double cu_key;
	쿠폰키 double c_key;
	사용자 아이디 String u_id;
	사용여부 int cu_used;
	사용일 double cu_date;
	증정품명 String c_gift;
	할인금액 double c_dc;
	쿠폰이름 String c_nm;
	쿠폰시작일 double c_start;
	쿠폰종료일 double c_end;
	구분 코드 String c_code; 
 	가게이름 String st_nm;
 */
public class Cu {
	double cu_key;
	double c_key;
	String u_id;
	int cu_used;
	double cu_date;
	String c_gift;
	double c_dc;
	String c_nm;
	double c_start;
	double c_end;
	String c_code;
	String st_nm;
	public Cu() {
		super();
	}
	
	public Cu(double cu_key, double c_key, String u_id, int cu_used, double cu_date, String c_gift, double c_dc,
			String c_nm, double c_start, double c_end, String c_code, String st_nm) {
		super();
		this.cu_key = cu_key;
		this.c_key = c_key;
		this.u_id = u_id;
		this.cu_used = cu_used;
		this.cu_date = cu_date;
		this.c_gift = c_gift;
		this.c_dc = c_dc;
		this.c_nm = c_nm;
		this.c_start = c_start;
		this.c_end = c_end;
		this.c_code = c_code;
		this.st_nm = st_nm;
	}

	public Cu(double cu_key, double c_key, String u_id, int cu_used, double cu_date, String c_gift, double c_dc,
			String c_nm, double c_start, double c_end, String c_code) {
		super();
		this.cu_key = cu_key;
		this.c_key = c_key;
		this.u_id = u_id;
		this.cu_used = cu_used;
		this.cu_date = cu_date;
		this.c_gift = c_gift;
		this.c_dc = c_dc;
		this.c_nm = c_nm;
		this.c_start = c_start;
		this.c_end = c_end;
		this.c_code = c_code;
	}
	public Cu(int cu_used, double cu_date, String c_gift, double c_dc, String c_nm, double c_start, double c_end,
			String c_code) {
		super();
		this.cu_used = cu_used;
		this.cu_date = cu_date;
		this.c_gift = c_gift;
		this.c_dc = c_dc;
		this.c_nm = c_nm;
		this.c_start = c_start;
		this.c_end = c_end;
		this.c_code = c_code;
	}
	public Cu(double c_key, String u_id, int cu_used, double cu_date, String c_gift, double c_dc, String c_nm,
			double c_start, double c_end, String c_code) {
		super();
		this.c_key = c_key;
		this.u_id = u_id;
		this.cu_used = cu_used;
		this.cu_date = cu_date;
		this.c_gift = c_gift;
		this.c_dc = c_dc;
		this.c_nm = c_nm;
		this.c_start = c_start;
		this.c_end = c_end;
		this.c_code = c_code;
	}
	public String getSt_nm() {
		return st_nm;
	}
	public void setSt_nm(String st_nm) {
		this.st_nm = st_nm;
	}
	public double getCu_key() {
		return cu_key;
	}
	public void setCu_key(double cu_key) {
		this.cu_key = cu_key;
	}
	public double getC_key() {
		return c_key;
	}
	public void setC_key(double c_key) {
		this.c_key = c_key;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public int getCu_used() {
		return cu_used;
	}
	public void setCu_used(int cu_used) {
		this.cu_used = cu_used;
	}
	public double getCu_date() {
		return cu_date;
	}
	public void setCu_date(double cu_date) {
		this.cu_date = cu_date;
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
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	@Override
	public String toString() {
		return "Cu [cu_key=" + cu_key + ", c_key=" + c_key + ", u_id=" + u_id + ", cu_used=" + cu_used + ", cu_date="
				+ cu_date + ", c_gift=" + c_gift + ", c_dc=" + c_dc + ", c_nm=" + c_nm + ", c_start=" + c_start
				+ ", c_end=" + c_end + ", c_code=" + c_code + ", st_nm=" + st_nm + "]";
	}
	
	
}

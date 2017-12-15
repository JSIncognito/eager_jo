package com.ej.vo;

/*	20141214_JS 
 * //==========================
 * 	사업자번호 double st_key;  
	가게이름 String st_nm; 
	업종 String st_type;
	위도double lat;
	경도 double lot;
	가게사진 String st_img;
	영업사진 String st_time;
	주소 String st_addr;
	별점 int st_star;
	점주아이디 String u_id; 
//==========================
 */
public class Store {
	double st_key;
	String st_nm;
	String st_type;
	double lat;
	double lot;
	String st_img;
	String st_time;
	String st_addr;
	int st_star;
	String u_id;

	public Store() {
		super();
	}
	
	public Store(String st_nm, String st_type, double lat, double lot, String st_time, String st_addr) {
		super();
		this.st_nm = st_nm;
		this.st_type = st_type;
		this.lat = lat;
		this.lot = lot;
		this.st_time = st_time;
		this.st_addr = st_addr;
	}

	public Store(String st_nm, String st_type, double lat, double lot, String st_img, String st_time, String st_addr) {
		super();
		this.st_nm = st_nm;
		this.st_type = st_type;
		this.lat = lat;
		this.lot = lot;
		this.st_img = st_img;
		this.st_time = st_time;
		this.st_addr = st_addr;
	}

	public Store(double st_key, String st_nm, String st_type, double lat, double lot, String st_img, String st_time,
			String st_addr) {
		super();
		this.st_key = st_key;
		this.st_nm = st_nm;
		this.st_type = st_type;
		this.lat = lat;
		this.lot = lot;
		this.st_img = st_img;
		this.st_time = st_time;
		this.st_addr = st_addr;
	}

	public Store(double st_key, String st_nm, String st_type, double lat, double lot, String st_img, String st_time,
			String st_addr, int st_star) {
		super();
		this.st_key = st_key;
		this.st_nm = st_nm;
		this.st_type = st_type;
		this.lat = lat;
		this.lot = lot;
		this.st_img = st_img;
		this.st_time = st_time;
		this.st_addr = st_addr;
		this.st_star = st_star;
	}

	public Store(double st_key, String st_nm, String st_type, double lat, double lot, String st_img, String st_time,
			String st_addr, int st_star, String u_id) {
		super();
		this.st_key = st_key;
		this.st_nm = st_nm;
		this.st_type = st_type;
		this.lat = lat;
		this.lot = lot;
		this.st_img = st_img;
		this.st_time = st_time;
		this.st_addr = st_addr;
		this.st_star = st_star;
		this.u_id = u_id;
	}

	public double getSt_key() {
		return st_key;
	}

	public void setSt_key(double st_key) {
		this.st_key = st_key;
	}

	public String getSt_nm() {
		return st_nm;
	}

	public void setSt_nm(String st_nm) {
		this.st_nm = st_nm;
	}

	public String getSt_type() {
		return st_type;
	}

	public void setSt_type(String st_type) {
		this.st_type = st_type;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLot() {
		return lot;
	}

	public void setLot(double lot) {
		this.lot = lot;
	}

	public String getSt_img() {
		return st_img;
	}

	public void setSt_img(String st_img) {
		this.st_img = st_img;
	}

	public String getSt_time() {
		return st_time;
	}

	public void setSt_time(String st_time) {
		this.st_time = st_time;
	}

	public String getSt_addr() {
		return st_addr;
	}

	public void setSt_addr(String st_addr) {
		this.st_addr = st_addr;
	}

	public int getSt_star() {
		return st_star;
	}

	public void setSt_star(int st_star) {
		this.st_star = st_star;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	@Override
	public String toString() {
		return "Store [st_key=" + st_key + ", st_nm=" + st_nm + ", st_type=" + st_type + ", lat=" + lat + ", lot=" + lot
				+ ", st_img=" + st_img + ", st_time=" + st_time + ", st_addr=" + st_addr + ", st_star=" + st_star
				+ ", u_id=" + u_id + "]";
	}
	
}

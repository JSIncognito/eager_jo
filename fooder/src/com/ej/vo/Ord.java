package com.ej.vo;

/* 20171214_JS
 * //==========================
 * 	�ֹ�Ű double o_key;
	������ּ� String o_addr;
	����� double o_date;
	�ѱݾ� double o_all;
	���αݾ� double o_dc;
	���������ݾ� double o_total;
	��ȭ��ȣ String o_tel;
	�������� int o_way;
	����ھ��̵� String u_id;
	����ڹ�ȣ double st_key;
	��������Ű double st_gift;
	��������Ű double st_dc;
	�̸� String st_nm;
	���� String st_type; 
//==========================
 */
public class Ord {
	double o_key;
	String o_addr;
	double o_date;
	double o_all;
	double o_dc;
	double o_total;
	String o_tel;
	int o_way;
	String u_id;
	double st_key;
	double st_gift;
	double st_dc;
	String st_nm;
	String st_type;
	public Ord() {
		super();
	}
	
	public Ord(String o_addr, double o_date, double o_all, double o_total, String o_tel, int o_way, String st_nm,
			String st_type) {
		super();
		this.o_addr = o_addr;
		this.o_date = o_date;
		this.o_all = o_all;
		this.o_total = o_total;
		this.o_tel = o_tel;
		this.o_way = o_way;
		this.st_nm = st_nm;
		this.st_type = st_type;
	}

	public Ord(String o_addr, double o_date, double o_all, double o_dc, double o_total, String o_tel, int o_way,
			String u_id, double st_key, double st_gift, double st_dc, String st_nm, String st_type) {
		super();
		this.o_addr = o_addr;
		this.o_date = o_date;
		this.o_all = o_all;
		this.o_dc = o_dc;
		this.o_total = o_total;
		this.o_tel = o_tel;
		this.o_way = o_way;
		this.u_id = u_id;
		this.st_key = st_key;
		this.st_gift = st_gift;
		this.st_dc = st_dc;
		this.st_nm = st_nm;
		this.st_type = st_type;
	}

	public Ord(double o_key, String o_addr, double o_date, double o_all, double o_dc, double o_total, String o_tel,
			int o_way, String st_nm, String st_type) {
		super();
		this.o_key = o_key;
		this.o_addr = o_addr;
		this.o_date = o_date;
		this.o_all = o_all;
		this.o_dc = o_dc;
		this.o_total = o_total;
		this.o_tel = o_tel;
		this.o_way = o_way;
		this.st_nm = st_nm;
		this.st_type = st_type;
	}

	public Ord(double o_key, String o_addr, double o_date, double o_all, double o_dc, double o_total, String o_tel,
			int o_way, String u_id, double st_key, double st_gift, double st_dc, String st_nm, String st_type) {
		super();
		this.o_key = o_key;
		this.o_addr = o_addr;
		this.o_date = o_date;
		this.o_all = o_all;
		this.o_dc = o_dc;
		this.o_total = o_total;
		this.o_tel = o_tel;
		this.o_way = o_way;
		this.u_id = u_id;
		this.st_key = st_key;
		this.st_gift = st_gift;
		this.st_dc = st_dc;
		this.st_nm = st_nm;
		this.st_type = st_type;
	}

	public double getO_key() {
		return o_key;
	}

	public void setO_key(double o_key) {
		this.o_key = o_key;
	}

	public String getO_addr() {
		return o_addr;
	}

	public void setO_addr(String o_addr) {
		this.o_addr = o_addr;
	}

	public double getO_date() {
		return o_date;
	}

	public void setO_date(double o_date) {
		this.o_date = o_date;
	}

	public double getO_all() {
		return o_all;
	}

	public void setO_all(double o_all) {
		this.o_all = o_all;
	}

	public double getO_dc() {
		return o_dc;
	}

	public void setO_dc(double o_dc) {
		this.o_dc = o_dc;
	}

	public double getO_total() {
		return o_total;
	}

	public void setO_total(double o_total) {
		this.o_total = o_total;
	}

	public String getO_tel() {
		return o_tel;
	}

	public void setO_tel(String o_tel) {
		this.o_tel = o_tel;
	}

	public int getO_way() {
		return o_way;
	}

	public void setO_way(int o_way) {
		this.o_way = o_way;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public double getSt_key() {
		return st_key;
	}

	public void setSt_key(double st_key) {
		this.st_key = st_key;
	}

	public double getSt_gift() {
		return st_gift;
	}

	public void setSt_gift(double st_gift) {
		this.st_gift = st_gift;
	}

	public double getSt_dc() {
		return st_dc;
	}

	public void setSt_dc(double st_dc) {
		this.st_dc = st_dc;
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

	@Override
	public String toString() {
		return "Ord [o_key=" + o_key + ", o_addr=" + o_addr + ", o_date=" + o_date + ", o_all=" + o_all + ", o_dc="
				+ o_dc + ", o_total=" + o_total + ", o_tel=" + o_tel + ", o_way=" + o_way + ", u_id=" + u_id
				+ ", st_key=" + st_key + ", st_gift=" + st_gift + ", st_dc=" + st_dc + ", st_nm=" + st_nm + ", st_type="
				+ st_type + "]";
	}
	
}

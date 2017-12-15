package com.ej.vo;

/* 20171214_JS
 * //==========================
 * 	사용자아이디 String u_id;
	비밀번호 String u_pwd;
	이름 String u_nm;
	사용자전화번호 String u_tel;
	성별 int u_gen;
	주소 String u_addr;
	생년월일 int u_age;
	사용자 구분 int u_flag; 
//==========================
 */
public class Users {
	String u_id;
	String u_pwd;
	String u_nm;
	String u_tel;
	int u_gen;
	String u_addr;
	int u_age;
	int u_flag;

	public Users() {
		super();
	}
	
	public Users(String u_id, String u_pwd, String u_nm, String u_tel, int u_gen, String u_addr, int u_age, int u_flag) {
		super();
		this.u_id = u_id;
		this.u_pwd = u_pwd;
		this.u_nm = u_nm;
		this.u_tel = u_tel;
		this.u_gen = u_gen;
		this.u_addr = u_addr;
		this.u_age = u_age;
		this.u_flag = u_flag;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}

	public String getU_nm() {
		return u_nm;
	}

	public void setU_nm(String u_nm) {
		this.u_nm = u_nm;
	}

	public String getU_tel() {
		return u_tel;
	}

	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}

	public int getU_gen() {
		return u_gen;
	}

	public void setU_gen(int u_gen) {
		this.u_gen = u_gen;
	}

	public String getU_addr() {
		return u_addr;
	}

	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}

	public int getU_age() {
		return u_age;
	}

	public void setU_age(int u_age) {
		this.u_age = u_age;
	}

	public int getU_flag() {
		return u_flag;
	}

	public void setU_flag(int u_flag) {
		this.u_flag = u_flag;
	}

	@Override
	public String toString() {
		return "Users [u_id=" + u_id + ", u_pwd=" + u_pwd + ", u_nm=" + u_nm + ", u_tel=" + u_tel + ", u_gen=" + u_gen
				+ ", u_addr=" + u_addr + ", u_age=" + u_age + ", u_flag=" + u_flag + "]";
	}
	
}

package com.ej.mapper;

import java.util.List;

import com.ej.vo.Coupon;

public interface CouponMapper {
	public void insert(Coupon obj);
	public void delete(double obj);
	public void update(Coupon obj);
	public Coupon select(double obj);
	public List<Coupon> selectall();
	public List<Coupon> select_area(String st_addr);
	public List<Coupon> select_myCoupon(Double st_key);
}

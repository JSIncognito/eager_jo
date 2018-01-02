package com.ej.coupon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ej.frame.Dao;
import com.ej.mapper.CouponMapper;
import com.ej.vo.Coupon;

@Repository("couponDao")
public class CouponDao implements Dao<Coupon, Double> {
	
	@Autowired
	CouponMapper mapper;

	@Override
	public void insert(Coupon t){
		mapper.insert(t);
	}

	@Override
	public void delete(Double c_key){
		mapper.delete(c_key);
	}

	@Override
	public void update(Coupon t){
		mapper.update(t);
	}

	@Override
	public Coupon select(Double c_key){
		return mapper.select(c_key);
	}

	@Override
	public List<Coupon> select(){
		return mapper.selectall();
	}

	// 현재 지역에서 진행중인 이벤트 및 쿠폰
	public List<Coupon> select_area(String st_addr) {
		return mapper.select_area(st_addr);
	}

	// 로그인한 유저가 갖고있는 쿠폰
	public List<Coupon> select_myCoupon(Double st_key) {
		return mapper.select_myCoupon(st_key);
	}

}

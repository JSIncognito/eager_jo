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
	public void insert(Coupon t) throws Exception {
		mapper.insert(t);
	}

	@Override
	public void delete(Double c_key) throws Exception {
		mapper.delete(c_key);
		
	}

	@Override
	public void update(Coupon t) throws Exception {
		mapper.update(t);		
	}

	@Override
	public Coupon select(Double c_key) throws Exception {
		
		return mapper.select(c_key);
	}

	@Override
	public List<Coupon> select() throws Exception {
 
		return mapper.selectall();
	}
	
	
}

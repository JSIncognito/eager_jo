package com.ej.coupon;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.vo.Coupon;

@Service("couponBiz")
public class CouponBiz implements Biz<Coupon, Double> {
	@Resource(name="couponDao")
	CouponDao dao;
	
	@Override
	public void register(Coupon t){
		dao.insert(t);
	}

	@Override
	public void remove(Double s){
		dao.delete(s);
	}

	@Override
	public void modify(Coupon t){
		dao.update(t);
	}

	@Override
	public Coupon get(Double s){
		return dao.select(s);
	}

	@Override
	public List<Coupon> get(){
		return dao.select();
	}

	// ���� �������� �������� �̺�Ʈ �� ����
	public List<Coupon> select_area(String location) {
		return dao.select_area(location);
	}

	// �α����� ������ �����ִ� ����
	public List<Coupon> select_myCoupon(String user) {
		return dao.select_myCoupon(user);
	}
}

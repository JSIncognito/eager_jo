package com.ej.mapper;

import java.util.List;

import com.ej.vo.Cu;

public interface CuMapper {
	public void insert(Cu obj);
	public void delete(double obj);
	public void update(Cu obj);
	public Cu select(double obj);
	public List<Cu> selectall();
	public List<Cu> select_uCoupon();
}

package com.ej.cu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ej.frame.Dao;
import com.ej.mapper.CuMapper;
import com.ej.vo.Cu;

@Repository("cuDao")
public class CuDao implements Dao<Cu, Double> {
	@Autowired
	CuMapper mapper;

	@Override
	public void insert(Cu t){
		mapper.insert(t);
	}

	@Override
	public void delete(Double cu_key){
		mapper.delete(cu_key);
	}

	@Override
	public void update(Cu t){
		mapper.update(t);
	}

	@Override
	public Cu select(Double cu_key){
		return mapper.select(cu_key);
	}

	@Override
	public List<Cu> select(){
		return mapper.selectall();
	}

	//	20171219_JS Store_menu Add
	public List<Cu> selec_uCoupon(){
		return mapper.select_uCoupon();
	}
	
	
}

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
	public void insert(Cu t) throws Exception {
		mapper.insert(t);
	}

	@Override
	public void delete(Double cu_key) throws Exception {
		mapper.delete(cu_key);
	}

	@Override
	public void update(Cu t) throws Exception {
		mapper.update(t);
	}

	@Override
	public Cu select(Double cu_key) throws Exception {
		return mapper.select(cu_key);
	}

	@Override
	public List<Cu> select() throws Exception {
		return mapper.selectall();
	}
	
	
	
}

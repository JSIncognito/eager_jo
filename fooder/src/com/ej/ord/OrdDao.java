package com.ej.ord;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ej.frame.Dao;
import com.ej.mapper.OrdMapper;
import com.ej.vo.Ord;

@Repository("ordDao")
public class OrdDao implements Dao<Ord, Double> {

	@Autowired
	OrdMapper mapper;
	
	@Override
	public void insert(Ord t) {
		mapper.insert(t);
	}

	@Override
	public void delete(Double s) {
		mapper.delete(s);
	}

	@Override
	public void update(Ord t) {
		mapper.update(t);
	}

	@Override
	public Ord select(Double s) {
		return mapper.select(s);
	}

	@Override
	public List<Ord> select() {
		return mapper.selectall();
	}
	
	public List<Ord> select_myOrder() {
		return mapper.select_myOrder();
	}
	
}

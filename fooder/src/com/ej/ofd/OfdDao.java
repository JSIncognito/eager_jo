package com.ej.ofd;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ej.frame.Dao;
import com.ej.mapper.OfdMapper;
import com.ej.vo.Ofd;

@Repository("ofdDao")
public class OfdDao implements Dao<Ofd, Double> {

	@Autowired
	OfdMapper mapper;
	
	
	@Override
	public void insert(Ofd t) {
		mapper.insert(t);
	}

	@Override
	public void delete(Double s) {
		mapper.delect(s);
	}

	@Override
	public void update(Ofd t) {
		mapper.update(t);
	}

	@Override
	public Ofd select(Double s) {
		return mapper.select(s);
	}

	@Override
	public List<Ofd> select() {
		return mapper.selectall();
	}

}

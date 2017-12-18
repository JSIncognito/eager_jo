package com.ej.ord;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ej.frame.Biz;
import com.ej.frame.Dao;
import com.ej.vo.Ord;

@Service("ordBiz")
public class OrdBiz implements Biz<Ord, Double> {

	@Resource(name="ordDao")
	Dao<Ord, Double> dao;
	
	@Transactional
	@Override
	public void register(Ord t) {
		dao.insert(t);
	}

	@Transactional
	@Override
	public void remove(Double s) {
		dao.delete(s);
	}

	@Transactional
	@Override
	public void modify(Ord t) {
		dao.update(t);
	}

	@Override
	public Ord get(Double s) {
		return dao.select(s);
	}

	@Override
	public List<Ord> get() {
		return dao.select();
	}

}

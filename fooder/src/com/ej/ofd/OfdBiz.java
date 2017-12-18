package com.ej.ofd;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.frame.Dao;
import com.ej.vo.Ofd;

@Service("ofdBiz")
public class OfdBiz implements Biz<Ofd, Double> {

	@Resource(name="ofdDao")
	Dao<Ofd, Double> dao; 

	@Override
	public void register(Ofd t) {
		dao.insert(t);
	}

	@Override
	public void remove(Double s) {
		dao.delete(s);
	}

	@Override
	public void modify(Ofd t) {
		dao.update(t);
	}

	@Override
	public Ofd get(Double s) {
		return dao.select(s);
	}

	@Override
	public List<Ofd> get() {
		return dao.select();
	}

}

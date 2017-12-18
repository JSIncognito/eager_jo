package com.ej.cu;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.frame.Dao;
import com.ej.vo.Cu;

@Service("cuBiz")
public class CuBiz implements Biz<Cu, Double> {

	@Resource(name="cuDao")
	Dao<Cu, Double> dao;

	@Override
	public void register(Cu t) throws Exception {
		dao.insert(t);
	}

	@Override
	public void remove(Double s) throws Exception {
		dao.delete(s);
	}

	@Override
	public void modify(Cu t) throws Exception {
		dao.update(t);
	}

	@Override
	public Cu get(Double s) throws Exception {
		return dao.select(s);
	}

	@Override
	public List<Cu> get() throws Exception {
		return dao.select();
	}
	
	
}

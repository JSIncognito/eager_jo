package com.ej.food;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ej.frame.Biz;
import com.ej.frame.Dao;
import com.ej.vo.Food;

@Service("foodBiz")
public class FoodBiz implements Biz<Food, Double> {

	@Resource(name="foodDao")
	Dao<Food, Double> dao;
	
	@Transactional
	@Override
	public void register(Food t) {
		dao.insert(t);
	}

	@Transactional
	@Override
	public void remove(Double s) {
		dao.delete(s);
	}

	@Transactional
	@Override
	public void modify(Food t) {
		dao.update(t);
	}

	@Override
	public Food get(Double s) {
		return dao.select(s);
	}

	@Override
	public List<Food> get() {
		return dao.select();
	}

	
}

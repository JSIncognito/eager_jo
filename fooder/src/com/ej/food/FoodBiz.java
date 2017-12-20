package com.ej.food;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.vo.Food;

@Service("foodBiz")
public class FoodBiz implements Biz<Food, Double> {

	@Resource(name="foodDao")
	FoodDao dao;

	@Override
	public void register(Food t) {
		dao.insert(t);
	}

	@Override
	public void remove(Double s) {
		dao.delete(s);
	}

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
	//	20171219 JS Store_menu Add
	public List<Food> select_stMenu(Double st_key){
		return dao.select_stMenu(st_key);
	}
	
}

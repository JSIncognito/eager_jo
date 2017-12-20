package com.ej.food;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ej.frame.Dao;
import com.ej.mapper.FoodMapper;
import com.ej.vo.Food;

@Repository("foodDao")
public class FoodDao implements Dao<Food, Double> {

	@Autowired
	FoodMapper mapper;

	@Override
	public void insert(Food t) {
		mapper.insert(t);
	}

	@Override
	public void delete(Double s) {
		mapper.delete(s);
	}

	@Override
	public void update(Food t) {
		mapper.update(t);
	}

	@Override
	public Food select(Double s) {
		return mapper.select(s);
	}

	@Override
	public List<Food> select() {
		return mapper.selectall();
	}
	
	//	20171219 JS Store_menu Add
	public List<Food> select_stMenu(){
		return mapper.select_stMenu();
	}
}

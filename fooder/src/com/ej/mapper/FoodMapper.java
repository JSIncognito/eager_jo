package com.ej.mapper;

import java.util.List;

import com.ej.vo.Food;

public interface FoodMapper {
	public void insert(Food obj);
	public void delete(Double obj);
	public void update(Food obj);
	public Food select(Double obj);
	public List<Food> selectall();	
}

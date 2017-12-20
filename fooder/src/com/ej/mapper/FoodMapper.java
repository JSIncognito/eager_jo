package com.ej.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ej.vo.Food;

public interface FoodMapper {
	public void insert(Food obj);
	public void delete(Double obj);
	public void update(Food obj);
	public Food select(Double obj);
	public List<Food> selectall();	
	public List<Food> select_stMenu(@Param("stKey") Double st_key);
}

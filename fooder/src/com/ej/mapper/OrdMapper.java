package com.ej.mapper;

import java.util.List;

import com.ej.vo.Ord;

public interface OrdMapper {
	public void insert(Ord obj);
	public void delete(Double obj);
	public void update(Ord obj);
	public Ord select(Double obj);
	public List<Ord> selectall();
}

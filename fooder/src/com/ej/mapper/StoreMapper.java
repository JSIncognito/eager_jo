package com.ej.mapper;

import java.util.List;

import com.ej.vo.Store;

public interface StoreMapper {
	public void insert(Store obj);
	public void delete(Double obj);
	public void update(Store obj);
	public Store select(Double obj);
	public List<Store> selectall();

}

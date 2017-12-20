package com.ej.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ej.frame.Dao;
import com.ej.mapper.StoreMapper;
import com.ej.vo.Store;

@Repository("storeDao")
public class StoreDao implements Dao<Store, Double> {

	@Autowired
	StoreMapper mapper;
	
	@Override
	public void insert(Store t) {
		mapper.insert(t);
	}

	@Override
	public void delete(Double s) {
		mapper.delete(s);
	}

	@Override
	public void update(Store t) {
		mapper.update(t);
	}

	@Override
	public Store select(Double s) {
		return mapper.select(s);
	}

	@Override
	public List<Store> select() {
		return mapper.selectall();
	}

	// 사용자 주변의 가게 리스트를 보여주는 메소드 	
	public List<Store> select_stList(String st_type, String st_addr){
		return mapper.select_stList(st_type, st_addr);
	}
	
	// 카테고리별 리스트를 보여주는 메소드
/*	public List<Store> select_cate(){
		return mapper.select_cate();
	}
*/
}

package com.ej.store;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.vo.Store;

@Service("storeBiz")
public class StoreBiz implements Biz<Store, Double> {

	@Resource(name="storeDao")
	StoreDao dao;
	
	@Override
	public void register(Store t) {
		dao.insert(t);
	}

	@Override
	public void remove(Double s) {
		dao.delete(s);
	}

	@Override
	public void modify(Store t) {
		dao.update(t);
	}

	@Override
	public Store get(Double s) {
		return dao.select(s);
	}

	@Override
	public List<Store> get() {
		return dao.select();
	}

	// 사용자 주변의 가게 리스트를 보여주는 메소드	
	public List<Store> select_stList(String st_type, String st_addr){
		return dao.select_stList(st_type, st_addr);
	}
	// 카테고리별 리스트를 보여주는 메소드	
/*	public List<Store> select_cete(){
		return dao.select_cate();
	}
*/	
}

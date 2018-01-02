package com.ej.cu;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.vo.Cu;

@Service("cuBiz")
public class CuBiz implements Biz<Cu, Double> {

	@Resource(name="cuDao")
	CuDao dao;

	@Override
	public void register(Cu t){
		dao.insert(t);
	}

	@Override
	public void remove(Double s){
		dao.delete(s);
	}

	@Override
	public void modify(Cu t){
		dao.update(t);
	}

	@Override
	public Cu get(Double s){
		return dao.select(s);
	}

	@Override
	public List<Cu> get(){
		return dao.select();
	}
	//	20171219_JS Store_menu Add	
	public List<Cu> select_uCoupon(Double st_key){
		return dao.selec_uCoupon(st_key); 
	}
	
	// 1227 ksy
	public List<Cu> select_userCu(String obj){
		return dao.select_userCu(obj);
	}
	
}

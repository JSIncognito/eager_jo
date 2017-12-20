package com.ej.ord;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.vo.Ord;
@Service("ordBiz")
public class OrdBiz implements Biz<Ord, Double> {
	@Resource(name="ordDao")
	OrdDao dao;
	
	
	@Override
	public void register(Ord t){
		dao.insert(t);
	}

	
	@Override
	public void remove(Double s){
		dao.delete(s);
	}

	
	@Override
	public void modify(Ord t){
		dao.update(t);
	}

	@Override
	public Ord get(Double s){
		return dao.select(s);
	}

	@Override
	public List<Ord> get(){
		return dao.select();
	}
	
	//	주문내역 조회	
	public List<Ord> select_myOrder(String u_id){
		return dao.select_myOrder(u_id);
		
	}


	 
	
	
	
}

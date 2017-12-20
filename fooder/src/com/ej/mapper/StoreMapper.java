package com.ej.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ej.vo.Store;

public interface StoreMapper {
	public void insert(Store obj);
	public void delete(Double obj);
	public void update(Store obj);
	public Store select(Double obj);
	public List<Store> selectall();
//	public List<Store> select_stList(String obj1, String obj2);
	public List<Store> select_stList(@Param("stType") String stType, @Param("stAddr") String stAddr); 
//	public Map selectMachineAgentMap(@Param("machineId") int machineId, @Param("agentId") int agentId);
	//	public List<Store> select_cate();
	
	public List<Store> select_myStore(String u_id);
}

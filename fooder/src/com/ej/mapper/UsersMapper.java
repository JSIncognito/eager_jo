package com.ej.mapper;

import java.util.List;

import com.ej.vo.Users;

public interface UsersMapper {
	public void insert(Users obj);
	public void delete(String obj);
	public void update(Users obj);
	public Users select(String obj);
	public List<Users> selectall();
}

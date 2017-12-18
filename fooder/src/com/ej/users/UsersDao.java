package com.ej.users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ej.frame.Dao;
import com.ej.mapper.UsersMapper;
import com.ej.vo.Users;

@Repository("usersDao")
public class UsersDao implements Dao<Users, String> {

	@Autowired
	UsersMapper mapper;
	
	@Override
	public void insert(Users t) {
		mapper.insert(t);
	}

	@Override
	public void delete(String s) {
		mapper.delete(s);
	}

	@Override
	public void update(Users t) {
		mapper.update(t);
		
	}

	@Override
	public Users select(String s) {
		return mapper.select(s);
	}

	@Override
	public List<Users> select() {
		return mapper.selectall();
	}
}

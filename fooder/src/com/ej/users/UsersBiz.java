package com.ej.users;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ej.frame.Biz;
import com.ej.frame.Dao;
import com.ej.vo.Users;

@Service("usersBiz")
public class UsersBiz implements Biz<Users, String> {
	@Resource(name="usersDao")
	Dao<Users, String> dao;
	@Override
	public void register(Users t) {
		dao.insert(t);
	}

	@Override
	public void remove(String s) {
		dao.delete(s);
	}

	@Override
	public void modify(Users t) {
		dao.update(t);
	}

	@Override
	public Users get(String s) {
		return dao.select(s);
	}

	@Override
	public List<Users> get() {
		return dao.select();
	}



}

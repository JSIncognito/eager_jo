package com.ej.mapper;

import java.util.List;

import com.ej.vo.Ofd;

public interface OfdMapper {
	public void insert(Ofd obj);
	public void delect(Double obj);
	public void update(Ofd obj);
	public Ofd select(Double obj);
	public List<Ofd> selectall();
}

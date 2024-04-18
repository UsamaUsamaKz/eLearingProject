package com.Dao;

public interface Dao<T extends Object> {
	void create(T t);
}

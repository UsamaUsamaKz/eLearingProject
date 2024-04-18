package com.Dao;

public interface AccountDao<T>	 extends Dao<T> {
	void create(T account, String password);
}
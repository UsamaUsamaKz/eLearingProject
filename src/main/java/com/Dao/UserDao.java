package com.Dao;

import com.entities.Users;

public interface UserDao extends Dao<Users> {
	void createUser(Users user);
}
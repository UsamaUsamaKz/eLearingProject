package com.Dao;

import com.entities.Role;

public interface RoleDao extends Dao<Role> {
	void createRole(Role role);
}

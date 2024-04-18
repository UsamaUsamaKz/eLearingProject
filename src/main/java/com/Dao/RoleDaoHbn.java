package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.Dao.hibernate.HbnAccountDao;
import com.entities.Role;

public class RoleDaoHbn extends HbnAccountDao<Role> implements RoleDao {
	private static final String FIND_ROLE_SQL_Student = "select authorities from RoleBased where account_email = ?";
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void createRole(Role role) {
		create(role);
	}

	public String getRole(String email) {
		String pass = jdbcTemplate.queryForObject(FIND_ROLE_SQL_Student, new Object[] { email }, String.class);
		return pass;
	}

	public List<Role> showAllteacher() {
		return getAllTeacher();
	}
}

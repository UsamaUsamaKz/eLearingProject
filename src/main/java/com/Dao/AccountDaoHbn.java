package com.Dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.Dao.hibernate.HbnAccountDao;
import com.entities.Student;

public class AccountDaoHbn extends HbnAccountDao<Student> implements AccountDao<Student> {
	private static final String UPDATE_PASSWORD_SQL = "update account set password = ? where username = ?";
	private static final String FIND_PASSWORD_SQL_Student = "select password from account where username = ?";
	private static final String FIND_USERNAME_SQL_Student = "select username from account where username = ?";
	@Autowired
	private BCryptPasswordEncoder passEn;
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setjdbcTemplate(JdbcTemplate jdbc) {
		this.jdbcTemplate = jdbc;
	}
	

	// use to save acount object in data base
	public void create(Student account, String password) {
		create(account);
		jdbcTemplate.update(UPDATE_PASSWORD_SQL, passEn.encode(password), account.getUsername());
	}

	public Student findStudentByUsername(String username) {
		try {
			Long id = jdbcTemplate.queryForObject("select id from account where username=?", new Object[] { username },
					Long.class);
			return get(id);
		} catch (Exception e) {
			return null;
		}
	}
	public String findPasswordByUsername(String username) {
		String pass= jdbcTemplate.queryForObject(FIND_PASSWORD_SQL_Student, new Object[] { username }, String.class);
		return pass;
	}
	public String findUsernameByEmail(String email) {
		String pass= jdbcTemplate.queryForObject(FIND_USERNAME_SQL_Student, new Object[] { email }, String.class);
		return pass;
	}
	public Long findIdByname(String username) {
		return jdbcTemplate.queryForObject("select id from account where username=?", new Object[] { username },
				Long.class);
	}
	
	
}

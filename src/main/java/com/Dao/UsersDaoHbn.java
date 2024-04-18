package com.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Dao.hibernate.HbnAccountDao;
import com.entities.Users;

@Repository
public class UsersDaoHbn extends HbnAccountDao<Users> implements UserDao {
	private static final String FIND_ID_SQL_ACCOUNT = "select id from users where account_email = ?";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void createUser(Users user) {
		create(user);
	}

	public Users findByUserEmail(String email) {

		try {
			Long id = jdbcTemplate.queryForObject(FIND_ID_SQL_ACCOUNT, new Object[] { email }, Long.class);
			return get(id);
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}

}

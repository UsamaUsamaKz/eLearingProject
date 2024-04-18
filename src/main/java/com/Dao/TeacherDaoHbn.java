package com.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.Dao.hibernate.HbnAccountDao;
import com.entities.Teacher;

public class TeacherDaoHbn extends HbnAccountDao<Teacher> implements AccountDao<Teacher> {
	private static final String UPDATE_PASSWORD_SQL = "update teacher set password = ? where username = ?";

	@Autowired
	private BCryptPasswordEncoder passEn;
	@Autowired
	private JdbcTemplate jdbcTemplate;

	

	// use to save acount object in data base
	public void create(Teacher teacher, String password) {
		create(teacher);
		jdbcTemplate.update(UPDATE_PASSWORD_SQL, passEn.encode(password), teacher.getUsername());
	}

	public Teacher findTeacherByUsername(String username) {
		try {
			Long id = jdbcTemplate.queryForObject("select id from teacher where username=?", new Object[] { username },
					Long.class);
			return get(id);
		} catch (Exception e) {
			return null;
		}
	}
	public List<Teacher> getAll(Long id){
		   String sql = "SELECT * FROM teacher WHERE id NOT IN (SELECT teacher_id FROM student_teacher WHERE student_id = ?)";
		    return jdbcTemplate.query(sql,new Object[] { id }, new BeanPropertyRowMapper<>(Teacher.class));
		}

	public Long findIdByname(String username) {
		return jdbcTemplate.queryForObject("select id from teacher where username=?", new Object[] { username },
				Long.class);
	}

}

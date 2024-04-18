package com.services;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.AccountDaoHbn;
import com.Dao.RoleDaoHbn;
import com.Dao.TeacherDaoHbn;
import com.Dao.UsersDaoHbn;
import com.entities.Role;
import com.entities.Student;
import com.entities.Teacher;
import com.entities.UserDetailsAdapter;
import com.entities.Users;

@Service
public class AccountServiceImpl {
	@Inject
	private AccountDaoHbn accountDao;

	@Inject
	private UsersDaoHbn userDaoHbn;

	@Inject
	private TeacherDaoHbn teacherDaoHbn;

	@Inject
	private RoleDaoHbn roleDaoHbn;



	// save Student in db
	@Transactional(readOnly = false)
	public void registerStudent(Student account, String password) {
		accountDao.create(account, password);
	}

	// save User in db
	@Transactional(readOnly = false)
	public void registerUser(Users user) {

		userDaoHbn.createUser(user);
	}

	// save role in db
	@Transactional(readOnly = false)
	public void registerRole(Role role) {
		roleDaoHbn.createRole(role);
	}

	// save role in db
	@Transactional(readOnly = false)
	public void registerTeacher(Teacher teacher, String pass) {
		teacherDaoHbn.create(teacher, pass);
	}
	@Transactional(readOnly = false)
	public Users getAccount(String email) {
		return userDaoHbn.findByUserEmail(email);
	}
	// validate student name from db
	@Transactional(readOnly = false)
	public boolean validateUserEmail(String email) {
		if (userDaoHbn.findByUserEmail(email) == null) {
			return false;
		} else {
			return true;
		}
	}

	@Transactional(readOnly = true)
	public List<Teacher> findAllTeacher(Long id) {
		List<Teacher> t=teacherDaoHbn.getAll(id);
		return t;
		
	}


	@SuppressWarnings("unchecked")
	@Transactional(readOnly = false)
	public UserDetailsAdapter<Student> registerStudentIntoTeacher(String studentname, String teacherName,
			UserDetailsServiceAdapter userdetailAdap) {
		Student student = accountDao.findStudentByUsername(studentname);
		Teacher teacher = teacherDaoHbn.findTeacherByUsername(teacherName);

		Role role = Role.Builder.newInstance().setRole("PAYED_STUDENT").setUser(student.getUser()).build();
		roleDaoHbn.create(role);

		Users user = student.getUser();
		user.getRole().add(role);
		List<Student> studentlistFromTeacher = teacher.getStudents();
		studentlistFromTeacher.add(student);
		teacher.setStudents(studentlistFromTeacher);
		List<Teacher> teacherlistFromStudent = student.getTeacher();
		teacherlistFromStudent.add(teacher);
		student.setTeacher(teacherlistFromStudent);
		accountDao.update(student);
		teacherDaoHbn.update(teacher);
		userDaoHbn.update(user);
		roleDaoHbn.create(role);
		
		return (UserDetailsAdapter<Student>) userdetailAdap.loadUserByUsername(student.getUser().getEmail());
	}
	@Transactional(readOnly = false)
	public Student getAllRegisterTeachers(String name) {
		return accountDao.findStudentByUsername(name);
	}
}
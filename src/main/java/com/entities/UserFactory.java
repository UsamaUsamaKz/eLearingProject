package com.entities;

import java.util.List;

public class UserFactory{
		private Long id;
		private String username, fathername, password, phoneNo, imageName;
		private boolean enabled;
		private List<Student> students; 
		private Users user;
		private List<Teacher> teacherlist;

		private boolean isTeacher;
		 
		public UserFactory() {}
		public static UserFactory newInstance() {
			return new UserFactory();
		}
		
		public Long getId() {
			return id;
		}
		public UserFactory setId(Long id) {
			this.id = id;
			return this;
		}
		public String getUsername() {
			return username;
		}
		public UserFactory setUsername(String username) {
			this.username = username;
			return this;
		}
		public String getFathername() {
			return fathername;
		}
		public UserFactory setFathername(String fathername) {
			this.fathername = fathername;
			return this;
		}
		public String getPassword() {
			return password;
		}
		public UserFactory setPassword(String password) {
			this.password = password;
			return this;
		}
		public String getPhoneNo() {
			return phoneNo;
		}
		public UserFactory setPhoneNo(String phoneNo) {
			this.phoneNo = phoneNo;
			return this;
		}
		public String getImageName() {
			return imageName;
		}
		public UserFactory setImageName(String imageName) {
			this.imageName = imageName;
			return this;
		}
		public boolean isEnabled() {
			return enabled;
		}
		public UserFactory setEnabled(boolean enabled) {
			this.enabled = enabled;
			return this;
		}
		public List<Student> getStudents() {
			return students;
		}
		public UserFactory setStudents(List<Student> students) {
			this.students = students;
			return this;
		}
		public Users getUser() {
			return user;
		}
		public UserFactory setUser(Users user) {
			this.user = user;
			return this;
		}
		
		public boolean isTeacher() {
			return isTeacher;
		}
		public UserFactory setTeacher(boolean isTeacher) {
			this.isTeacher = isTeacher;
			return this;
		}
		
		public List<Teacher> getTeacherlist() {
			return teacherlist;
		}
		public UserFactory setTeacherlist(List<Teacher> teacherlist) {
			this.teacherlist = teacherlist;
			return this;
		}
		public AccountAbst build(boolean type){
			if(type) {
				return new Teacher(this);
			}else {
				return new Student(this);
			}
			
		}
	}



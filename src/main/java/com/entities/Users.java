package com.entities;


import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class Users {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;


	@NotNull
	@Size(min = 1, max = 50)
	@Column(name = "account_email")
	private String email;
	
	@OneToMany(mappedBy = "user") 
	private List<Role> role;
	
	@OneToOne(mappedBy="user")
	private Student student;

	@OneToOne(mappedBy="user")
	private Teacher teacher;
	
	Users(Builder builder){
		this.id=builder.getId();
		this.email=builder.getEmail();
		this.role=builder.getRole();
		this.student=builder.getStudent();
		this.teacher=builder.getTeacher();
		
	}
	public Users(){}
	public static class Builder{
		private Long id;
		private String email;
		private List<Role> role;
		private Student student;
		private Teacher teacher;
		
		public Builder() {}
		public static Builder newInstance() {
			return new Builder();
		}
		public Long getId() {
			return id;
		}
		public Builder setId(Long id) {
			this.id = id;
			return this;
		}

		
		public String getEmail() {
			return email;
		}
		public Builder setEmail(String email) {
			this.email = email;
			return this;
		}
		
		public List<Role> getRole() {
			return role;
		}
		public Builder setRole(List<Role> role) {
			this.role = role;
			return this;
		}
		
		
		public Student getStudent() {
			return student;
		}
		public Builder setStudent(Student student) {
			this.student = student;
			return this;
		}
		public Teacher getTeacher() {
			return teacher;
		}
		public Builder setTeacher(Teacher teacher) {
			this.teacher = teacher;
			return this;
		}
		public Users build(){
			return new Users(this);
		}
	}

	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<Role> getRole() {
		return role;
	}
	public void setRole(List<Role> role) {
		this.role = role;
	}

	
}

package com.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Table(name = "teacher")
public class Teacher extends AccountAbst{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	private String username, fathername, password, phoneNo, imageName;
	private boolean enabled;
	
	@ManyToMany(mappedBy = "teacherlist")
	private List<Student> students; 
	
	 @OneToOne(fetch = FetchType.EAGER)
	    private Users user;
	 
		public Teacher(UserFactory builder) {
		super();
		this.id = builder.getId();
		this.username = builder.getUsername();
		this.fathername = builder.getFathername();
		this.password = builder.getPassword();
		this.phoneNo = builder.getPhoneNo();
		this.imageName = builder.getImageName();
		this.enabled = builder.isEnabled();
		this.students = builder.getStudents();
		this.user = builder.getUser();
	}
		public Teacher() {}

		
	
	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public Long getId() {
		return id;
	}

	@SuppressWarnings("unused")
	public void setId(Long id) {
		this.id = id;
	}

	@NotNull
	@Size(min = 1, max = 60)
	@Column(name = "username")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	@NotNull
	@Size(min = 1, max = 50)
	@Column(name = "fathername")
	public String getFathername() {
		return fathername;
	}

	@Size(min = 1, max = 255)
	@Column(name = "password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@NotNull
	@Column(name = "enabled")
	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	

//	public List<Users> getRole() {
//		return role;
//	}
//
//	public void setRole(List<Users> role) {
//		this.role = role;
////	}


	@Size(min = 1, max = 50)
	@Column(name = "phoneNo")
	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	
	@Column(name = "imageName")
	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", fathername=" + fathername + ", password=" + password
				+ ", enabled=" + enabled + ", role="  + "]";
	}
}

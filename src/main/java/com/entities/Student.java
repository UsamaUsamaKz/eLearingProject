package com.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "account")
public class Student extends AccountAbst  {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	private String username, fathername, password,phoneNo, imageName;
	private boolean enabled;


    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "student_teacher",
               joinColumns = {@JoinColumn(name = "student_id")},
               inverseJoinColumns={@JoinColumn(name="teacher_id")})
    private List<Teacher> teacherlist;
	
    @OneToOne
    private Users user;
	public Student(UserFactory builder) {
		super();
		this.id = builder.getId();
		this.username = builder.getUsername();
		this.fathername = builder.getFathername();
		this.password = builder.getPassword();
		this.phoneNo = builder.getPhoneNo();
		this.imageName = builder.getImageName();
		this.enabled = builder.isEnabled();
		this.teacherlist = builder.getTeacherlist();
		this.user = builder.getUser();
	}
		public Student() {}

//		public static class Builder{
//			private Long id;
//			private String username, fathername, password, phoneNo, imageName;
//			private boolean enabled;
//			private List<Teacher> teacher; 
//			private Users user;
//			 
//			public Builder() {}
//			public static Builder newInstance() {
//				return new Builder();
//			}
//			
//			public Long getId() {
//				return id;
//			}
//			public Builder setId(Long id) {
//				this.id = id;
//				return this;
//			}
//			public String getUsername() {
//				return username;
//			}
//			public Builder setUsername(String username) {
//				this.username = username;
//				return this;
//			}
//			public String getFathername() {
//				return fathername;
//			}
//			public Builder setFathername(String fathername) {
//				this.fathername = fathername;
//				return this;
//			}
//			public String getPassword() {
//				return password;
//			}
//			public Builder setPassword(String password) {
//				this.password = password;
//				return this;
//			}
//			public String getPhoneNo() {
//				return phoneNo;
//			}
//			public Builder setPhoneNo(String phoneNo) {
//				this.phoneNo = phoneNo;
//				return this;
//			}
//			public String getImageName() {
//				return imageName;
//			}
//			public Builder setImageName(String imageName) {
//				this.imageName = imageName;
//				return this;
//			}
//			public boolean isEnabled() {
//				return enabled;
//			}
//			public Builder setEnabled(boolean enabled) {
//				this.enabled = enabled;
//				return this;
//			}
//			public List<Teacher> getTeacher() {
//				return teacher;
//			}
//			public Builder setTeacher(List<Teacher> teacher) {
//				this.teacher = teacher;
//				return this;
//			}
//			public Users getUser() {
//				return user;
//			}
//			public Builder setUser(Users user) {
//				this.user = user;
//				return this;
//			}
//			public Student build(){
//				return new Student(this);
//			}
//		}
    
    
	public List<Teacher> getTeacher() {
		return teacherlist;
	}

	public void setTeacher(List<Teacher> teacher) {
		this.teacherlist = teacher;
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
//	}


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

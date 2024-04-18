package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "RoleBased")
public class Role {


	
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name = "Roleid")
		private Long id;

		@NotNull
		@Size(min = 1, max = 50)
		@Column(name = "authorities")
		private String role;
		
		@ManyToOne
		@JoinColumn(name = "users_id")
		private Users user;
		
		Role(Builder builder){
			this.id=builder.getId();
			this.role=builder.getRole();
			this.user=builder.getUser();
			
		}
		public Role(){}
		public static class Builder{
			private Long id;
			private String role;
			private Users user;
			
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
		
			public String getRole() {
				return role;
			}
		
			public Builder setRole(String authorities) {
				this.role = authorities;
				return this;
			}
			
			public Users getUser() {
				return user;
			}
			public Builder setUser(Users user) {
				this.user = user;
				return this;
			}
			public Role build(){
				return new Role(this);
			}
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getRole() {
			return role;
		}

		public void setRole(String role) {
			this.role = role;
		}
		public Users getUser() {
			return user;
		}
		public void setUser(Users user) {
			this.user = user;
		}
	
		
	}



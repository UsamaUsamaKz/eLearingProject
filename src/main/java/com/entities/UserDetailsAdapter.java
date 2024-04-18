package com.entities;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@SuppressWarnings({ "serial" })
public class UserDetailsAdapter<T extends AccountAbst> implements UserDetails {
	private  T account;
	private String password;
	private List<Role> role;
	private String email;
	

	@Override
	public Collection<GrantedAuthority> getAuthorities() {
		Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>(2);
		for (Role roles : role) {
			authorities.add(new SimpleGrantedAuthority(roles.getRole()));
		}
		return authorities;
	}

	public UserDetailsAdapter(T account) {
		this.account = account;
	}
	public Long getId() { return account.getId(); }
	public String getfathername() { return account.getFathername(); }
	public String getPhoneNo() { return account.getPhoneNo(); }
	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return account.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return account.isEnabled();
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	public List<Role> getRole() {
		return role;
	}

	public void setRole(List<Role> role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "UserDetailsAdapter [account=" + account + ", password=" + password + "]";
	}

}

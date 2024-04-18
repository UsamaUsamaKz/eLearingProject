package com.entities;

public abstract class AccountAbst {
	public abstract Long getId(); 
	public abstract void setId(Long id);
	
	public abstract String getUsername(); 
	public abstract void setUsername(String username);
	
	public abstract void setFathername(String fathername);
	public abstract String getFathername(); 
	
	public abstract String getPassword(); 
	public abstract void setPassword(String password); 
	
	public abstract boolean isEnabled();
	public abstract void setEnabled(boolean enabled); 
	
	public abstract String getPhoneNo(); 
	public abstract void setPhoneNo(String phoneNo); 
	
	public abstract String getImageName();
	public abstract void setImageName(String imageName); 
	
	public abstract Users getUser();
	public abstract void setUser(Users user);
}

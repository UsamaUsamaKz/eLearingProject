package com.web;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
//import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.ScriptAssert;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


public class AccountForm {

	private String username, password, confirmPassword, email, fatherName, phoneNo;
	private CommonsMultipartFile image;
	private boolean acceptTerms = false;
	@NotNull(message = "Plz Enter The UserName")
	@Size(min = 1, max = 50)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@NotNull
	@Size(min = 1, max = 50,message="Please Enter The Password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@NotNull
	@Size(min = 1, max = 50 ,message="Password Not Match")
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@AssertTrue(message = "{account.acceptTerms.assertTrue.message}")
	public boolean getAcceptTerms() {
		return acceptTerms;
	}

//    @AssertTrue(message = "{account.password.mismatch.message}")
    public boolean ispasscheck() {
        return password.equals(confirmPassword);
    }
	@NotNull
	@Size(min = 1, max = 50,message="Please Enter Your Personal Number")
	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	@NotNull(message="{org.hibernate.validator.constraints.Email.message}")
	public String getEmail() {
		return email;
	}

	@NotNull
	@Size(min = 1, max = 50,message="Please Enter Your Father Name")
	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAcceptTerms(boolean acceptTerms) {
		this.acceptTerms = acceptTerms;
	}
	
	@NotNull(message="Select Your Profile Picture")
	public CommonsMultipartFile getImage() {
		return image;
	}

	public void setImage(CommonsMultipartFile image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).append("username", username).toString();
	}

//    // Add a custom validation method
//    public boolean isValidPasswordConfirmation() {
//        return confirmPassword != null && confirmPassword.equals(password);
//    }
}

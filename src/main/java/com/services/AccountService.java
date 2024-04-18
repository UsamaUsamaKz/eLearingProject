package com.services;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import com.entities.Student;
import com.entities.Users;

@Service
public interface AccountService {
	boolean registerAccount(Student account, String password, Errors errors);

	void registerRole(Users role);

	UserDetails findUserbyUsername(String username);
}

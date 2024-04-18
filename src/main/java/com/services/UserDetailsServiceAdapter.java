package com.services;



import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.UsersDaoHbn;
import com.entities.Role;
import com.entities.Student;
import com.entities.Teacher;
import com.entities.UserDetailsAdapter;
import com.entities.Users;



@Service("userDetailsService")
@Transactional(readOnly = true)
public class UserDetailsServiceAdapter implements UserDetailsService {
	@Inject
	private UsersDaoHbn userDaoHbn;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Users user=userDaoHbn.findByUserEmail(email);
		String role="";
		if(!user.equals(null)) {
			for (Role roles : user.getRole()) {
				role=roles.getRole();
			}
		}
			if (user.equals(null)){
				throw new UsernameNotFoundException("No such user: " + email);
			}else if (user.getRole().equals(null)) {
				throw new UsernameNotFoundException("User " + email + " has no authorities");
			}else if(role.equals("STUDENT")||role.equals("PAYED_STUDENT")) {
				Student student=user.getStudent();
				 UserDetailsAdapter<Student> adapter=new UserDetailsAdapter<Student>(student);
				 adapter.setPassword(student.getPassword());
				 adapter.setRole(user.getRole());
				 adapter.setEmail(user.getEmail());
				 return adapter;
			}else {
				 Teacher teacher=user.getTeacher();
				 UserDetailsAdapter<Teacher> adapter= new UserDetailsAdapter<Teacher>(teacher);
				 adapter.setPassword(teacher.getPassword());
				 adapter.setRole(user.getRole());
				 adapter.setEmail(user.getEmail());
				 return adapter;
			}
	}

}

package com.web;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.entities.AccountAbst;
import com.entities.Role;
import com.entities.Student;
import com.entities.Teacher;
import com.entities.UserDetailsAdapter;
import com.entities.UserFactory;
import com.entities.Users;
import com.services.AccountServiceImpl;
import com.services.UserDetailsServiceAdapter;

@Controller
//@RequestMapping("/users")

public class AccountController {
	private enum authority {
		TEACHER, STUDENT
	}
	private static final String VN_REG_FORM = "signin";
	private static final String VN_REG_OK = "redirect:home";

	@Autowired
	private UserDetailsServiceAdapter userdetailAdap;
	@Autowired
	private AccountServiceImpl accountService;
	@Inject
	@Qualifier("authenticationManager")
	private AuthenticationManager authMgr;

	@SuppressWarnings("static-method")
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setAllowedFields(new String[] { "username", "fatherName", "password", "confirmPassword", "acceptTerms",
				"email", "phoneNo", "image" });
		StringTrimmerEditor trimer = new StringTrimmerEditor(true);
		binder.registerCustomEditor(String.class, "username", trimer);
	}

	
	

	@SuppressWarnings("static-method")
	@RequestMapping(value = "/")
	public String getRegistration() {
		return "redirect:home";
	}

	@SuppressWarnings("static-method")
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String getRegistrationForm(Model model) {
		model.addAttribute("account", new AccountForm());
		return "signin";
	}

	@RequestMapping(value = "/sign", method = RequestMethod.POST)
	public String postRegistrationForm(@ModelAttribute("account") @Valid AccountForm form, BindingResult result,
			@RequestParam("role") String check, HttpSession s) {

		this.checkUserEmail(form, result);
		convertPasswordError(result, form);
		if (!result.hasFieldErrors()) {
			this.setUser(check, form, s);
			Authentication authRequest = new UsernamePasswordAuthenticationToken(form.getEmail(), form.getPassword());
			Authentication authResult = authMgr.authenticate(authRequest);
			SecurityContextHolder.getContext().setAuthentication(authResult);
		}
		return (result.hasErrors() ? VN_REG_FORM : VN_REG_OK);
	}

	private void setUser(String check, AccountForm form, HttpSession s) {
		Student student = null;
		Teacher teacher = null;
		ArrayList<Role> array = new ArrayList<>();
		Users user = null;
		String roles = null;

		if (!check.equals("teacher")) {
			student = (Student) toAccount(form, check);
			roles = String.valueOf(authority.STUDENT);
			user = Users.Builder.newInstance().setEmail(form.getEmail()).setStudent(student).setRole(array).build();
			student.setUser(user);
			accountService.registerUser(user);// need to save user in data base
			accountService.registerStudent(student, form.getPassword());

		} else {
			teacher = (Teacher) toAccount(form, check);
			roles = String.valueOf(authority.TEACHER);
			user = Users.Builder.newInstance().setEmail(form.getEmail()).setTeacher(teacher).setRole(array).build();
			teacher.setUser(user);
			accountService.registerUser(user);// need to save user in data base
			accountService.registerTeacher(teacher, form.getPassword());

		}

		Role role = Role.Builder.newInstance().setRole(roles).build();
		array.add(role);
		role.setUser(user);
		this.setimage(s, form);
		accountService.registerRole(role);// need to save role in data bass
	}

	@SuppressWarnings("static-method")
	private AccountAbst toAccount(AccountForm form, String check) {
		AccountAbst account = UserFactory.newInstance().setUsername(form.getUsername())
				.setFathername(form.getFatherName()).setPhoneNo(form.getPhoneNo())
				.setImageName(form.getImage().getOriginalFilename()).setTeacher(true).setTeacherlist(null)
				.setEnabled(form.getAcceptTerms()).build(check.equals("teacher"));
		return account;
	}

	@SuppressWarnings("static-method")
	private void setimage(HttpSession s, AccountForm form) {
		
		String userDirectory = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "userImage" + File.separator + form.getUsername()+form.getPhoneNo();
		File userDir = new File(userDirectory);

		if (!userDir.exists()) {
			userDir.mkdirs(); // Create the directory and any necessary parent directories
		}

		String path = userDirectory + File.separator + form.getImage().getOriginalFilename();
		try {
			FileOutputStream stream = new FileOutputStream(path);
			stream.write(form.getImage().getBytes());
			stream.close();
			System.out.println("done image");

		} catch (Exception e) {
			System.out.println(e);

		}
	}

	private void checkUserEmail(AccountForm form, BindingResult result) {
		if (accountService.validateUserEmail(form.getEmail())) {
			result.rejectValue("email", "error.duplicate");
		}
	}

	private static void convertPasswordError(BindingResult result, AccountForm form) {
		if (!form.ispasscheck()) {
			if (!result.hasFieldErrors("password")) {
				result.rejectValue("password", "error.mismatch");
			}
		}
	}

	@SuppressWarnings("static-method")
	@RequestMapping("/Login")
	public String forLogin() {
		return "LoginPage";
	}

	@SuppressWarnings("static-method")
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// Session ko invalidate karke logout kare
		
		session.invalidate();

		// Redirect to the login page or any other appropriate page
		return "redirect:/beforeAfterLogin";
	}

	@SuppressWarnings("static-method")
	@RequestMapping("/home")
	public String SecurityCheck() {
		return "home-starter";
	}

	@SuppressWarnings("static-method")
	@RequestMapping("/About")
	@PreAuthorize("hasRole('STUDENT')")
	public String about() {
		return "about";
	}

	@SuppressWarnings("static-method")
	@RequestMapping("/Contact")
	@PreAuthorize("hasRole('STUDENT')")
	public String contact() {
		return "contact";
	}

	@SuppressWarnings("static-method")
	@RequestMapping("/Courses")
	@PreAuthorize("hasRole('STUDENT')")
	public String courses() {
		return "courses";
	}

	@RequestMapping(value = "/Account", method = RequestMethod.POST)
	public String AccountSetting(@RequestParam("email") String username, @RequestParam("password") String Password) {
		Authentication authRequest = new UsernamePasswordAuthenticationToken(username, Password);
		Authentication authResult = authMgr.authenticate(authRequest);
		SecurityContextHolder.getContext().setAuthentication(authResult);
		return "home-starter";
	}

	@RequestMapping("/Teachers")
	@PreAuthorize("hasRole('STUDENT')")
	public ModelAndView teacherData(ModelAndView model) {
		UserDetailsAdapter auth =this.getAuthstudent();
		model.addObject("check","teacher");
		model.addObject("teachersData", accountService.findAllTeacher(auth.getId()));
		model.setViewName("teacherDetails");
		return model;
	}

	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	@PreAuthorize("hasRole('STUDENT')")
	public String registerStudent(@RequestParam("teacherName") String teachername) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		UserDetailsAdapter<Student> adapter = accountService.registerStudentIntoTeacher(auth.getName(), teachername,
				userdetailAdap);
		Authentication newAuth = new UsernamePasswordAuthenticationToken(adapter, null, adapter.getAuthorities());
		SecurityContextHolder.getContext().setAuthentication(newAuth);
		return "home-starter";
	}
	
	@RequestMapping("/Registration")
	@PreAuthorize("hasRole('STUDENT')")
	public ModelAndView ShowRegisterTeacher(ModelAndView model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				model.addObject("check","student");
				model.addObject("teachersData",accountService.getAllRegisterTeachers(auth.getName()).getTeacher());
		model.setViewName("teacherDetails");
		return model;
	}
	public UserDetailsAdapter getAuthstudent() {
		return (UserDetailsAdapter) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

	}
}

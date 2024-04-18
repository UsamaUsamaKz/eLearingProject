<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<spring:message var="pageTitle" code="newUserRegistration.pageTitle" />
<spring:message var="msgAllFieldsRequired"
	code="newUserRegistration.message.allFieldsRequired" />
<html>
<head>
<title>${pageTitle}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Client Signup Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"
	type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link
	href="//fonts.googleapis.com/css?family=Old+Standard+TT:400,400i,700"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--web font-->
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main main-agileits">
		<div class="main-agilerow">
			<div class="signup-wthreetop">
				<h2>${pageTitle}</h2>
				<p>World First E_Learning WEB-APPlICATION</p>
			</div>
			<div class="contact-wthree">
				<form:form cssClass="main" action="sign" modelAttribute="account" method="post" enctype="multipart/form-data">
					<div class="form-w3step1">
						<form:input path="username" type="text" name="UserName"
							placeholder="User Name" cssClass="short" cssErrorClass="short error" />
					</div>
					<div>
						<form:errors path="username" cssClass="error"/>
					</div>
					<div class="form-w3step1">
						<form:input path="image" type="file" name="image"
							placeholder="Select Profile Image" />
					</div>
					<div>
						<form:errors path="image" cssClass="error"/>
					</div>
					
					<div class="form-w3step1">
						<form:input path="password" type="password" name="Password"
							placeholder="Password" />
					</div>
					<div>
						<form:errors path="password" cssClass="error"/>
					</div>
					<div class="form-w3step1">
						<form:input path="confirmPassword" type="password"
							name="confirm password" placeholder="Confirm Password" cssClass="short" cssErrorClass="short error" />
					</div>
					<div>
						<form:errors path="confirmPassword" cssClass="error"/>
					</div>
					<div class="form-w3step1">
						<form:input path="fatherName" type="text" name="fatherName"
							placeholder="Father Name"  cssClass="short" cssErrorClass="short error"/>
					</div>
					<div>
						<form:errors path="fatherName" cssClass="error"/>
					</div>
					<div class="form-w3step1">
						<form:input path="phoneNo" type="text" name="Number"
							placeholder="Mobile number"  cssClass="short" cssErrorClass="short error"/>
					</div>
					<div>
						<form:errors path="phoneNo" cssClass="error"/>
					</div>
					<div class="form-w3step1">
						<form:input path="email" type="email" name="email" placeholder="Email"  cssClass="short" cssErrorClass="short error"/>
					</div>
					<div>
						<form:errors path="email" cssClass="error"/>
					</div>
					<div class="agileits-row2 w3ls-formrow2">
						<form:checkbox id="acceptTerms" path="acceptTerms"  cssClass="short" cssErrorClass="short error"/>
						<label for="acceptTerms"><span></span>I accept the terms
							of Use</label>
					</div>
					<div>
						<form:errors path="acceptTerms" cssClass="error"/>
					</div>
					<div class="form-w3step1">

                    <div class="radio-buttons">
                        <input type="radio" id="teacherRole" name="role" value="teacher"   />
                        <label for="teacherRole"><span></span>Teacher</label>

                        <input type="radio" id="studentRole" name="role" value="student" checked />
                        <label for="studentRole"><span></span>Student</label>
                    </div>
                  
                </div>
					<input type="submit" value="SUBMIT">
				</form:form>
			</div>
		</div>
	</div>
	<!-- //main -->
	<!-- copyright -->
	<div class="w3copyright-agile">
		<p>
			© 2017 Client Signup Form. All rights reserved | Design by <a
				href="http://w3layouts.com/" target="_blank">W3layouts</a>
		</p>
	</div>
	<!-- //copyright -->
</body>
</html>
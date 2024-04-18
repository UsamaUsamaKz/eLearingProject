
<!doctype html>

<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<c:set var="googlefonturl1"
	value="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700"></c:set>
<c:set var="googlefonturl2"
	value="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></c:set>

<head>
<title>Teachers Details</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="${googlefonturl1}">

<link rel="stylesheet" href="${googlefonturl2}">

<link rel="stylesheet"
	href="<c:url value="/resources/css/teacherDetail/style.css"/>">
<script>
	function handleRowClick(row) {
		console.log("done")
		var cells = row.getElementsByTagName("td");
		let rowData = [];

		for (var i = 0; i < cells.length; i++) {
			rowData.push(cells[i].textContent);
		}
		var popup = document.getElementById('search');

		popup.style.visibility = 'visible';
		popup.style.opacity = '1';
		var heading = document.getElementById("name");
		heading.textContent = rowData[2];
		var heading = document.getElementById("fathername");
		heading.textContent = rowData[3];
		var heading = document.getElementById("PhoneNo");
		heading.textContent = rowData[4];
		var heading = document.getElementById("Email");
		heading.textContent = rowData[5];
		
		var newSrc = "<c:url value='/resources/userImage/'/>";
		$("#image").attr("src", newSrc + rowData[2]+rowData[4] + "/" + rowData[0]);

		//use for close popup window
		var closeButton = document.getElementById('close');
		closeButton.addEventListener('click', function() {
			var popup = document.getElementById('search');
			popup.style.visibility = 'hidden';
			popup.style.opacity = '0';
		});
		document.getElementById('teacherName').value = rowData[2];
		console.log(newSrc);
	}
	
</script>

</head>
<body>
	<section class="ftco-section">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center mb-4">Teacher Details</h1>
					<div class="table-wrap">
						<table class="table">
							<thead class="thead-primary">
								<tr>

									<th>Status</th>
									<th>ID</th>
									<th>Name</th>
									<th>Father Name</th>
									<c:if test="${check eq 'student'}">
										<th>Email</th>
									</c:if>

									<th>Phone No</th>
									<th>Register</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="teacher" items="${ teachersData }">
									<tr onclick="handleRowClick(this);">
										<th scope="row" class="scope">Teacher</th>
										<td style="display: none;"><c:out
												value="${ teacher.getImageName() }"></c:out></td>
										<td><c:out value="${ teacher.getId() }"></c:out></td>
										<td><c:out value="${ teacher.getUsername() }"></c:out></td>
										<td><c:out value="${ teacher.getFathername() }"></c:out></td>
										
										<td><c:out value="${ teacher.getPhoneNo() }"></c:out></td>
										<c:if test="${check eq 'student'}">
											<td><c:out value="${ teacher.getUser().getEmail() }"></c:out></td>
										</c:if>
										<td><button class="btn btn-primary" value="">View
												Detail</button></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>


		<div id="search" class="pop-overlay">
			<div class="popup">
				<div class="card">
					<img id="image" src="" alt="Avatar"
						style="width: 100%; height: 400px;">
					<div id="card-content" class="container">
						<h4>
							<b id="name"></b>
						</h4>
						<h6 id="fathername"></h6>
						<h6 id="Email"></h6>
						<h6 id="PhoneNo"></h6>
						<form id="myForm" action="Register" method="post">

							<input type="hidden" name="teacherName" id="teacherName" value="" />
							<c:if test="${check eq 'teacher' }">
								<input id="submit" class="btn btn-primary pd-5" type="submit"
									value="Register" style="width: 140px; margin-left: 100px;" />
							</c:if>
							
						</form>
					</div>
				</div>

			</div>
			<a id="close" class="close" href="">×</a>
		</div>



	</section>
	<script
		src="<c:url value="/resources/js/teacherDetail-js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/js/teacherDetail-js/popper.js"/>"></script>

	<script
		src="<c:url value="/resources/js/teacherDetail-js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/teacherDetail-js/main.js"/>"></script>

</body>
</html>


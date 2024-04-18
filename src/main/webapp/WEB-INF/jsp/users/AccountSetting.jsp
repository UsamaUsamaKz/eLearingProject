
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>	
<c:set var="googlefonturl1" value="//fonts.googleapis.com/css?family=Nunito:400,700&display=swap"></c:set>
<c:set var="googlefonturl2" value="//fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"></c:set>

  <head>
	  
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Study Course - Education Category Bootstrap Responsive Template | Home : W3layouts</title>

    <!-- google fonts -->
    <link href="<c:import url="${googlefonturl1}"/>" rel="stylesheet">
    <link href="<c:import url="${googlefonturl2}"/>" rel="stylesheet">
    
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style-starter.css"/>">
    
  </head>
  <body>
<!--/search-right-->
        <div class="search-right">
          <a href="#search" title="search" onclick=><span class="fa fa-search" aria-hidden="true"></span></a>
          <!-- search popup -->
          <div id="search" class="pop-overlay">
            <div class="popup">

             <!--  <form action="error.html" method="GET" class="search-box">
                <input type="search" placeholder="Search" name="search" required="required" autofocus="">
                <button type="submit" class="btn"><span class="fa fa-search" aria-hidden="true"></span></button>
              </form>
 			-->
            </div>
            <a class="close" href="#close">×</a>
          </div>
          </div>
          <!-- /search popup -->
</body>
</html>
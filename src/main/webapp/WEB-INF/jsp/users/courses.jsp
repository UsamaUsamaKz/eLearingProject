<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
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

    <title>Study Course - Education Category Bootstrap Responsive Template | Courses : W3layouts</title>

     <!-- google fonts -->
    <link href="<c:import url="${googlefonturl1}"/>" rel="stylesheet">
    <link href="<c:import url="${googlefonturl2}"/>" rel="stylesheet">
    
    <!-- Template CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style-starter.css"/>">
    
  </head>
  <body>
<!--header-->
  			<%@include file="/WEB-INF/jspf/header.jspf" %>

<!--/header-->
<!-- about breadcrumb -->
<section class="w3l-breadcrumb">
    <div class="breadcrumb-bg breadcrumb-bg-about py-5">
        <div class="container pt-lg-5 pt-3 p-lg-4 pb-3">
            <h2 class="title mt-5 pt-lg-5 pt-sm-3">Online Courses</h2>
            <ul class="breadcrumbs-custom-path pb-sm-5 pb-4 mt-2 text-center mb-md-5">
                <li><a href="Home">Home</a></li>
                <li class="active"> / Courses </li>
            </ul>
        </div>
    </div>
    <div class="waveWrapper waveAnimation">
        <svg viewBox="0 0 500 150" preserveAspectRatio="none">
            <path d="M-5.07,73.52 C149.99,150.00 299.66,-102.13 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none;"></path>
        </svg>
    </div>
</section>
<!-- //about breadcrumb -->
<section class="w3l-courses">
    <div class="blog pb-5" id="courses">
        <div class="container py-lg-5 py-md-4 py-2">
            <div class="row">
                <div class="col-lg-4 col-md-6 item">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#course-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="<c:url value="/resources/images/starter-image/c1.jpg"/>"
                                    alt="Card image cap">
                            </a>
                            <div class="post-pos">
                                <a href="#reciepe" class="receipe blue">Beginner</a>
                            </div>
                        </div>
                        <div class="card-body course-details">
                            <div class="price-review d-flex justify-content-between mb-1align-items-center">
                                <p>$35.00</p>
                                <ul class="rating-star">
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star-o"></span></li>
                                </ul>
                            </div>
                            <a href="#course-single" class="course-desc">Open Programming Courses for everyone : Python
                            </a>
                            <div class="course-meta mt-4">
                                <div class="meta-item course-lesson">
                                    <span class="fa fa-clock-o"></span>
                                    <span class="meta-value"> 20 hrs </span>
                                </div>
                                <div class="meta-item course-">
                                    <span class="fa fa-user-o"></span>
                                    <span class="meta-value"> 50 </span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <img src="<c:url value="/resources/images/starter-image/a1.jpg"/>" alt="" class="img-fluid rounded-circle">
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value mx-1">by</span> <a href="#author"> Olivia</a>
                                    </li>
                                    <li>
                                        <span class="meta-value mx-1">in</span> <a href="#author"> Programing</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 item mt-md-0 mt-5">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#course-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="<c:url value="/resources/images/starter-image/c2.jpg"/>"
                                    alt="Card image cap">
                            </a>
                            <div class="course-price-badge"> Free</div>
                            <div class="post-pos">
                                <a href="#reciepe" class="receipe blue">Beginner</a>
                            </div>
                        </div>
                        <div class="card-body course-details">
                            <div class="price-review d-flex justify-content-between mb-1align-items-center">
                                <p>$0.00</p>
                                <ul class="rating-star">
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star-o"></span></li>
                                </ul>
                            </div>
                            <a href="#course-single" class="course-desc">Learning to Write as a clean Professional
                                Author</a>
                            <div class="course-meta mt-4">
                                <div class="meta-item course-lesson">
                                    <span class="fa fa-clock-o"></span>
                                    <span class="meta-value"> 20 hrs </span>
                                </div>
                                <div class="meta-item course-">
                                    <span class="fa fa-user-o"></span>
                                    <span class="meta-value"> 50 </span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <img src="<c:url value="/resources/images/starter-image/a2.jpg"/>" alt="" class="img-fluid rounded-circle">
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value mx-1">by</span> <a href="#author"> Isabella</a>
                                    </li>
                                    <li>
                                        <span class="meta-value mx-1">in</span> <a href="#author"> Teaching</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 item mt-lg-0 mt-5">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#course-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="<c:url value="/resources/images/starter-image/c3.jpg"/>"
                                    alt="Card image cap">
                            </a>
                            <div class="course-price-badge-new"> New</div>
                        </div>
                        <div class="card-body course-details">
                            <div class="price-review d-flex justify-content-between mb-1align-items-center">
                                <p>$49.00</p>
                                <ul class="rating-star">
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star-o"></span></li>
                                </ul>
                            </div>
                            <a href="#course-single" class="course-desc">Learn Master JQuery in a Short Period of Time</a>
                            <div class="course-meta mt-4">
                                <div class="meta-item course-lesson">
                                    <span class="fa fa-clock-o"></span>
                                    <span class="meta-value"> 20 hrs </span>
                                </div>
                                <div class="meta-item course-">
                                    <span class="fa fa-user-o"></span>
                                    <span class="meta-value"> 50 </span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <img src="<c:url value="/resources/images/starter-image/a3.jpg"/>" alt="" class="img-fluid rounded-circle">
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value mx-1">by</span> <a href="#author"> Alexander</a>
                                    </li>
                                    <li>
                                        <span class="meta-value mx-1">in</span> <a href="#author"> Programing</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 item mt-5 pt-lg-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#course-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="<c:url value="/resources/images/starter-image/c4.jpg"/>"
                                    alt="Card image cap">
                            </a>
                            <div class="post-pos">
                                <a href="#reciepe" class="receipe blue">Beginner</a>
                            </div>
                        </div>
                        <div class="card-body course-details">
                            <div class="price-review d-flex justify-content-between mb-1align-items-center">
                                <p>$35.00</p>
                                <ul class="rating-star">
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star-o"></span></li>
                                </ul>
                            </div>
                            <a href="#course-single" class="course-desc">Open Programming Courses for everyone : Python
                            </a>
                            <div class="course-meta mt-4">
                                <div class="meta-item course-lesson">
                                    <span class="fa fa-clock-o"></span>
                                    <span class="meta-value"> 20 hrs </span>
                                </div>
                                <div class="meta-item course-">
                                    <span class="fa fa-user-o"></span>
                                    <span class="meta-value"> 50 </span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <img src="<c:url value="/resources/images/starter-image/a4.jpg"/>" alt="" class="img-fluid rounded-circle">
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value mx-1">by</span> <a href="#author"> William</a>
                                    </li>
                                    <li>
                                        <span class="meta-value mx-1">in</span> <a href="#author"> Programing</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 item mt-5 pt-lg-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#course-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="<c:url value="/resources/images/starter-image/c5.jpg"/>"
                                    alt="Card image cap">
                            </a>
                            <div class="course-price-badge"> Free</div>
                            <div class="post-pos">
                                <a href="#reciepe" class="receipe blue">Beginner</a>
                            </div>
                        </div>
                        <div class="card-body course-details">
                            <div class="price-review d-flex justify-content-between mb-1align-items-center">
                                <p>$0.00</p>
                                <ul class="rating-star">
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star-o"></span></li>
                                </ul>
                            </div>
                            <a href="#course-single" class="course-desc">Learning to Write as a clean Professional
                                Author</a>
                            <div class="course-meta mt-4">
                                <div class="meta-item course-lesson">
                                    <span class="fa fa-clock-o"></span>
                                    <span class="meta-value"> 20 hrs </span>
                                </div>
                                <div class="meta-item course-">
                                    <span class="fa fa-user-o"></span>
                                    <span class="meta-value"> 50 </span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <img src="<c:url value="/resources/images/starter-image/a1.jpg"/>" alt="" class="img-fluid rounded-circle">
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value mx-1">by</span> <a href="#author"> Olivia</a>
                                    </li>
                                    <li>
                                        <span class="meta-value mx-1">in</span> <a href="#author"> Programing</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 item mt-5 pt-lg-2">
                    <div class="card">
                        <div class="card-header p-0 position-relative">
                            <a href="#course-single" class="zoom d-block">
                                <img class="card-img-bottom d-block" src="<c:url value="/resources/images/starter-image/c6.jpg"/>"
                                    alt="Card image cap">
                            </a>
                            <div class="course-price-badge-new"> New</div>
                        </div>
                        <div class="card-body course-details">
                            <div class="price-review d-flex justify-content-between mb-1align-items-center">
                                <p>$49.00</p>
                                <ul class="rating-star">
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star"></span></li>
                                    <li><span class="fa fa-star-o"></span></li>
                                </ul>
                            </div>
                            <a href="#course-single" class="course-desc">Learn Master JQuery in a Short Period of Time</a>
                            <div class="course-meta mt-4">
                                <div class="meta-item course-lesson">
                                    <span class="fa fa-clock-o"></span>
                                    <span class="meta-value"> 20 hrs </span>
                                </div>
                                <div class="meta-item course-">
                                    <span class="fa fa-user-o"></span>
                                    <span class="meta-value"> 50 </span>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="author align-items-center">
                                <img src="<c:url value="/resources/images/starter-image/a2.jpg"/>" alt="" class="img-fluid rounded-circle">
                                <ul class="blog-meta">
                                    <li>
                                        <span class="meta-value mx-1">by</span> <a href="#author"> Isabella</a>
                                    </li>
                                    <li>
                                        <span class="meta-value mx-1">in</span> <a href="#author"> Teaching</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- pagination -->
            <div class="pagination-wrapper mt-5 pt-lg-3 text-center">
                <ul class="page-pagination">
                    <li><a class="next" href="#url"><span class="fa fa-angle-left"></span> Prev</a></li>
                    <li><span aria-current="page" class="page-numbers current">1</span></li>
                    <li><a class="page-numbers" href="#url">2</a></li>
                    <li><a class="page-numbers" href="#url">3</a></li>
                    <li><a class="page-numbers" href="#url">....</a></li>
                    <li><a class="next" href="#url">Next <span class="fa fa-angle-right"></span></a></li>
                </ul>
            </div>
            <!-- //pagination -->
        </div>
    </div>
</section>
<!-- footer -->
			<%@include file="/WEB-INF/jspf/footer.jspf" %>
<!-- //footer -->

<!-- Template JavaScript -->
<script src="<c:url value="/resources/js/starter-js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/resources/js/starter-js/theme-change.js"/>"></script>

<!-- stats number counter-->
<script src=""></script>
<script src="<c:url value="/resources/js/starter-js/jquery.countup.js"/>"></script>
<script>
  $('.counter').countUp();
</script>
<!-- //stats number counter -->

<script src="<c:url value="/resources/js/starter-js/owl.carousel.js"/>"></script>
<!-- script for banner slider-->
<script>
  $(document).ready(function () {
    $('.owl-one').owlCarousel({
      loop: true,
      margin: 0,
      nav: false,
      dots: false,
      responsiveClass: true,
      autoplay: true,
      autoplayTimeout: 5000,
      autoplaySpeed: 1000,
      autoplayHoverPause: false,
      responsive: {
        0: {
          items: 1
        },
        480: {
          items: 1
        },
        667: {
          items: 1
        },
        1000: {
          items: 1,
          nav: true
        }
      }
    })
  })
</script>
<!-- //script -->

<!-- script for tesimonials carousel slider -->
<script>
  $(document).ready(function () {
      $("#owl-demo1").owlCarousel({
          loop: true,
          margin: 20,
          nav: false,
          responsiveClass: true,
          responsive: {
              0: {
                  items: 1,
                  nav: false
              },
              768: {
                  items: 2,
                  nav: false
              },
              1000: {
                  items: 3,
                  nav: false,
                  loop: false
              }
          }
      })
  })
</script>
<!-- //script for tesimonials carousel slider -->

<!-- disable body scroll which navbar is in active -->
<script>
  $(function () {
    $('.navbar-toggler').click(function () {
      $('body').toggleClass('noscroll');
    })
  });
</script>
<!-- disable body scroll which navbar is in active -->

<!--/MENU-JS-->
<script>
  $(window).on("scroll", function () {
    var scroll = $(window).scrollTop();

    if (scroll >= 80) {
      $("#site-header").addClass("nav-fixed");
    } else {
      $("#site-header").removeClass("nav-fixed");
    }
  });

  //Main navigation Active Class Add Remove
  $(".navbar-toggler").on("click", function () {
    $("header").toggleClass("active");
  });
  $(document).on("ready", function () {
    if ($(window).width() > 991) {
      $("header").removeClass("active");
    }
    $(window).on("resize", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
    });
  });
</script>
<!--//MENU-JS-->

<!--//MENU-JS-->
<script src="<c:url value="/resources/js/starter-js/bootstrap.min.js"/>"></script>


</body>

</html>

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

  <!-- header -->
  			<%@include file="/WEB-INF/jspf/header.jspf" %>
  <!-- header End-->


<!-- main-slider -->
<section class="w3l-main-slider" id="home">
    <div class="companies20-content">
        <div class="owl-one owl-carousel owl-theme">
            <div class="item">
                <li>
                    <div class="slider-info banner-view bg bg2">
                        <div class="banner-info">
                            <div class="container">
                                <div class="banner-info-bg">
                                    <h5>50% Discount on all Popular Courses</h5>
                                    <p class="mt-4 pr-lg-4">Take the first step to your journey to success with us</p>
                                    <a class="btn btn-style btn-primary mt-sm-5 mt-4 mr-2" href="about.html"> Ready to
                                        get started?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </div>
            <div class="item">
                <li>
                    <div class="slider-info  banner-view banner-top1 bg bg2">
                        <div class="banner-info">
                            <div class="container">
                                <div class="banner-info-bg">
                                    <h5>Learn and Improve Yourself in Less Time </h5>
                                    <p class="mt-4 pr-lg-4">Our self improvement courses is very effective </p>
                                    <a class="btn btn-style btn-primary mt-sm-5 mt-4 mr-2" href="about.html"> Ready to
                                        get started?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </div>
            <div class="item">
                <li>
                    <div class="slider-info banner-view banner-top2 bg bg2">
                        <div class="banner-info">
                            <div class="container">
                                <div class="banner-info-bg">
                                    <h5>Be More Productive to Be More Successful</h5>
                                    <p class="mt-4 pr-lg-4">Don't waste your time, check out our productive courses</p>
                                    <a class="btn btn-style btn-primary mt-sm-5 mt-4 mr-2" href="about.html"> Ready to
                                        get started?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </div>
            <div class="item">
                <li>
                    <div class="slider-info banner-view banner-top3 bg bg2">
                        <div class="banner-info">
                            <div class="container">
                                <div class="banner-info-bg">
                                    <h5>Enhance your skills with best online courses</h5>
                                    <p class="mt-4 pr-lg-4">Take the first step to your journey to success with us</p>
                                    <a class="btn btn-style btn-primary mt-sm-5 mt-4 mr-2" href="about.html"> Ready to
                                        get started?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </div>
        </div>
    </div>

    <div class="waveWrapper waveAnimation">
        <svg viewBox="0 0 500 150" preserveAspectRatio="none">
            <path d="M-5.07,73.52 C149.99,150.00 299.66,-102.13 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none;"></path>
        </svg>
    </div>
</section>
<!-- /main-slider -->
<section class="w3l-courses">
    <div class="blog pb-5" id="courses">
        <div class="container py-lg-5 py-md-4 py-2">
            <h5 class="title-small text-center mb-1">Join our learn Courses</h5>
            <h3 class="title-big text-center mb-sm-5 mb-4">Featured Online <span>Courses</span></h3>
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
                                <img src=" <c:url value="/resources/images/starter-image/a1.jpg"/>" alt="" class="img-fluid rounded-circle">
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
                                <img class="card-img-bottom d-block" src=" <c:url value="/resources/images/starter-image/c5.jpg"/>"
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
                            <a href="#course-single" class="course-desc">Learning to Write as a clean and Professional
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
                                <img src=" <c:url value="/resources/images/starter-image/a2.jpg"/>" alt="" class="img-fluid rounded-circle">
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
                                <img class="card-img-bottom d-block" src=" <c:url value="/resources/images/starter-image/c6.jpg"/>"
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
                                <img src=" <c:url value="/resources/images/starter-image/a4.jpg"/>" alt="" class="img-fluid rounded-circle">
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
            </div>
            <div class="mt-5 text-more">
                <p class="pt-md-3 sample text-center">
                    Control your personal preference settings to get notified about appropriate courses
                    <a href="courses.html">View All Courses <span class="pl-2 fa fa-long-arrow-right"></span></a>
                </p>
            </div>
        </div>
    </div>
</section>
<section class="w3l-features py-5" id="facilities">
    <div class="call-w3 py-lg-5 py-md-4 py-2">
        <div class="container">
            <div class="row main-cont-wthree-2">
                <div class="col-lg-5 feature-grid-left">
                    <h5 class="title-small mb-1">Study and graduate</h5>
                    <h3 class="title-big mb-4">Our Facilities </h3>
                    <p class="text-para">Curabitur id gravida risus. Fusce eget ex fermentum, ultricies nisi ac sed,
                        lacinia est.
                        Quisque ut lectus consequat, venenatis eros et, commodo risus. Nullam sit amet laoreet elit.
                        Suspendisse non magna a velit efficitur. </p>
                    <p class="mt-3">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptas ab qui impedit, libero illo
                        quia sequi quibusdam iure. Error minus quod reprehenderit quae dolor velit soluta animi
                        voluptate dicta enim? Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio, provident!</p>
                    <a href="#url" class="btn btn-primary btn-style mt-md-5 mt-4">Discover More</a>
                </div>
                <div class="col-lg-7 feature-grid-right mt-lg-0 mt-5">
                    <div class="call-grids-w3 d-grid">
                        <div class="grids-1 box-wrap">
                            <a href="#more" class="icon"><span class="fa fa-certificate"></span></a>
                            <h4><a href="#feature" class="title-head">Global Certificate</a></h4>
                            <p>Vivamus a ligula quam. Ut blandit eu leo non. Duis sed doloramet laoreet.</p>
                        </div>
                        <div class="grids-1 box-wrap">
                            <a href="#more" class="icon"><span class="fa fa-book"></span></a>
                            <h4><a href="#feature" class="title-head">Books & Library</a></h4>
                            <p>Vivamus a ligula quam. Ut blandit eu leo non. Duis sed dolor amet laoreet.</p>
                        </div>
                        <div class="grids-1 box-wrap">
                            <a href="#more" class="icon"><span class="fa fa-trophy"></span></a>
                            <h4><a href="#feature" class="title-head">Scholarship</a></h4>
                            <p>Vivamus a ligula quam. Ut blandit eu leo non. Duis sed dolor amet laoreet.</p>
                        </div>
                        <div class="grids-1 box-wrap">
                            <a href="#more" class="icon"><span class="fa fa-graduation-cap"></span></a>
                            <h4><a href="#feature" class="title-head">Alumni Support</a></h4>
                            <p>Vivamus a ligula quam. Ut blandit eu leo non. Duis sed dolor amet laoreet.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="w3l-homeblock3 py-5">
    <div class="container py-lg-5 py-md-4 py-2">
        <h5 class="title-small text-center mb-1">From the news</h5>
        <h3 class="title-big text-center mb-sm-5 mb-4">Latest <span>News</span></h3>
        <div class="row top-pics">
            <div class="col-md-6">
                <div class="top-pic1">
                    <div class="card-body blog-details">
                        <a href="#blog-single" class="blog-desc">Enhance your educational skills and also experience with best online courses
                        </a>
                        <div class="author align-items-center">
                            <img src=" <c:url value="/resources/images/starter-image/team1.jpg"/>" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="#author">Isabella ava</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> Nov 19, 2020 </span>. <span class="meta-value ml-2"><span
                                            class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mt-md-0 mt-4">
                <div class="top-pic2">
                    <div class="card-body blog-details">
                        <a href="#blog-single" class="blog-desc">Be more productive to be more Successful. Take your first jouney
                        </a>
                        <div class="author align-items-center">
                            <img src=" <c:url value="/resources/images/starter-image/team2.jpg"/>" alt="" class="img-fluid rounded-circle" />
                            <ul class="blog-meta">
                                <li>
                                    <a href="#author">Charlotte mia</a> </a>
                                </li>
                                <li class="meta-item blog-lesson">
                                    <span class="meta-value"> Nov 19, 2020 </span>. <span class="meta-value ml-2"><span
                                            class="fa fa-clock-o"></span> 1 min</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="mt-4">
                    <div class="top-pic3">
                        <div class="card-body blog-details">
                            <a href="#blog-single" class="blog-desc"> Our self improvement courses are more effective. Start leaarning online
                            </a>
                            <div class="author align-items-center">
                                <img src=" <c:url value="/resources/images/starter-image/team3.jpg"/>" alt="" class="img-fluid rounded-circle" />
                                <ul class="blog-meta">
                                    <li>
                                        <a href="#author">Elizabeth</a> </a>
                                    </li>
                                    <li class="meta-item blog-lesson">
                                        <span class="meta-value"> Nov 19, 2020 </span>. <span
                                            class="meta-value ml-2"><span class="fa fa-clock-o"></span> 1 min</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mt-md-5 mt-4 text-more text-center">
            <a href="blog.html">View All Posts <span class="pl-2 fa fa-long-arrow-right"></span></a>
        </div>
    </div>
</div>
<!-- middle -->
<div class="middle py-5">
    <div class="container py-lg-5 py-md-4 py-2">
        <div class="welcome-left text-center py-lg-4">
            <h5 class="title-small mb-1">Start learning online</h5>
            <h3 class="title-big">Enhance your skills with best online courses</h3>
            <a href="#started" class="btn btn-style btn-outline-light mt-sm-5 mt-4 mr-2">Get started now</a>
            <a href="contact.html" class="btn btn-style btn-primary mt-sm-5 mt-4">Contact Us</a>
        </div>
    </div>
</div>
<!-- //middle -->
<section class="w3l-team py-5" id="team">
    <div class="call-w3 py-lg-5 py-md-4">
        <div class="container">
            <div class="row main-cont-wthree-2">
                <div class="col-lg-5 feature-grid-left">
                    <h5 class="title-small mb-1">Experienced professionals</h5>
                    <h3 class="title-big mb-4">Meet our teachers</h3>
                    <p class="text-para">Curabitur id gravida risus. Fusce eget ex fermentum, ultricies nisi ac sed,
                        lacinia est.
                        Quisque ut lectus consequat, venenatis eros et, commodo risus. Nullam sit amet laoreet elit.
                        Suspendisse non magna a velit efficitur. </p>
                    <p class="mt-3">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptas ab qui impedit,
                        libero illo
                        quia sequi quibusdam iure. Error minus quod reprehenderit quae dolor velit soluta animi
                        voluptate dicta enim? Lorem ipsum dolor sit amet consectetur adipisicing elit. Odio, provident!
                    </p>
                    <a href="#url" class="btn btn-primary btn-style mt-md-5 mt-4">Discover More</a>
                </div>
                <div class="col-lg-7 feature-grid-right mt-lg-0 mt-5">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="box16">
                                <a href="#url"><img src="<c:url value="/resources/images/starter-image/team1.jpg"/>" alt="" class="img-fluid radius-image" /></a>
                                <div class="box-content">
                                    <h3 class="title"><a href="#url">James</a></h3>
                                    <span class="post">Director</span>
                                    <ul class="social">
                                        <li>
                                            <a href="#" class="facebook">
                                                <span class="fa fa-facebook-f"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="twitter">
                                                <span class="fa fa-twitter"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-sm-0 mt-3">
                            <div class="box16">
                                <a href="#url"><img src="<c:url value="/resources/images/starter-image/team2.jpg"/>" alt="" class="img-fluid radius-image" /></a>
                                <div class="box-content">
                                    <h3 class="title"><a href="#url">Victoria</a></h3>
                                    <span class="post">Managing Director</span>
                                    <ul class="social">
                                        <li>
                                            <a href="#" class="facebook">
                                                <span class="fa fa-facebook-f"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="twitter">
                                                <span class="fa fa-twitter"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-lg-4 mt-3">
                            <div class="box16">
                                <a href="#url"><img src="<c:url value="/resources/images/starter-image/team3.jpg"/>" alt="" class="img-fluid radius-image" /></a>
                                <div class="box-content">
                                    <h3 class="title"><a href="#url">Isabella</a></h3>
                                    <span class="post">Teacher</a></span>
                                    <ul class="social">
                                        <li>
                                            <a href="#" class="facebook">
                                                <span class="fa fa-facebook-f"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="twitter">
                                                <span class="fa fa-twitter"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 mt-lg-4 mt-3">
                            <div class="box16">
                                <a href="#url"><img src="<c:url value="/resources/images/starter-image/team4.jpg"/>" alt="" class="img-fluid radius-image" /></a>
                                <div class="box-content">
                                    <h3 class="title"><a href="#url">Elizabeth</a></h3>
                                    <span class="post">Teacher</a></span>
                                    <ul class="social">
                                        <li>
                                            <a href="#" class="facebook">
                                                <span class="fa fa-facebook-f"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" class="twitter">
                                                <span class="fa fa-twitter"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- testimonials -->
<section class="w3l-testimonials" id="clients">
    <!-- /grids -->
    <div class="cusrtomer-layout py-5">
        <div class="container py-lg-4 py-md-3 pb-lg-0">

            <h5 class="title-small text-center mb-1">Testimonials</h5>
            <h3 class="title-big text-center mb-sm-5 mb-4">Happy Clients & Feedbacks</h3>
            <!-- /grids -->
            <div class="testimonial-width">
                <div id="owl-demo1" class="owl-two owl-carousel owl-theme">
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><<c:url value="/resources/images/starter-image/team1.jpg"/>" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>John wilson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="<c:url value="/resources/images/starter-image/team2.jpg"/>" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Julia sakura</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="<c:url value="/resources/images/starter-image/team3.jpg"/>" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Roy Linderson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="<c:url value="/resources/images/starter-image/team4.jpg"/>" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Mike Thyson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="<c:url value="/resources/images/starter-image/team2.jpg"/>" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Laura gill</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="<c:url value="/resources/images/starter-image/team3.jpg"/>" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Smith Johnson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="<c:url value="/resources/images/starter-image/team2.jpg"/>" class="img-fluid"
                                            alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Laura gill</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testimonial-content">
                            <div class="testimonial">
                                <blockquote>
                                    <q>Lorem ipsum dolor sit amet elit. Velit beatae
                                        laudantium
                                        voluptate rem ullam dolore nisi voluptatibus esse quasi, doloribus tempora.
                                        Dolores molestias adipisci dolo amet!.</q>
                                </blockquote>
                                <div class="testi-des">
                                    <div class="test-img"><img src="<c:url value="/resources/images/starter-image/team3.jpg"/>" class="img-fluid" alt="client-img">
                                    </div>
                                    <div class="peopl align-self">
                                        <h3>Smith Johnson</h3>
                                        <p class="indentity">Student</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /grids -->
    </div>
    <!-- //grids -->
</section>
<!-- //testimonials -->


<section class="w3l-clients py-5" id="clients">
    <div class="call-w3 py-md-4 py-2">
        <div class="container">
            <div class="company-logos text-center">
                <div class="row logos">
                    <div class="col-lg-2 col-md-3 col-4">
                        <img src="<c:url value="/resources/images/starter-image/brand1.png"/>" alt="" class="img-fluid">
                    </div>
                    <div class="col-lg-2 col-md-3 col-4">
                        <img src="<c:url value="/resources/images/starter-image/brand2.png"/>" alt="" class="img-fluid">
                    </div>
                    <div class="col-lg-2 col-md-3 col-4">
                        <img src="<c:url value="/resources/images/starter-image/brand3.png"/>" alt="" class="img-fluid">
                    </div>
                    <div class="col-lg-2 col-md-3 col-4 mt-md-0 mt-4">
                        <img src="<c:url value="/resources/images/starter-image/brand4.png"/>" alt="" class="img-fluid">
                    </div>
                    <div class="col-lg-2 col-md-3 col-4 mt-lg-0 mt-4">
                        <img src="<c:url value="/resources/images/starter-image/brand5.png"/>" alt="" class="img-fluid">
                    </div>
                    <div class="col-lg-2 col-md-3 col-4 mt-lg-0 mt-4">
                        <img src="<c:url value="/resources/images/starter-image/brand1.png"/>" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
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
<script src="<c:url value="/resources/js/starter-js/jquery.waypoints.min.js"/>"></script>
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
<script src="<c:url value="/resources/js/starter-js/bootstrap.min.js"/>"></script>


</body>

</html>
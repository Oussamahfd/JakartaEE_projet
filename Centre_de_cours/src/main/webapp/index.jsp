<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="DAO.etudao"%>
<%@ page import="java.sql.ResultSet, java.sql.SQLException"%>
<%@ page import="classes.Etud"%>
<%@ page import="classes.Absence"%>
<%@ page import="classes.Prof" %>
<%@ page import="java.sql.ResultSet, java.sql.SQLException"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormatSymbols" %>
<%!
	DAO.etudao et;%>

    <%
    et = new DAO.etudao();
 Calendar calendar = Calendar.getInstance();

        // Obtenez le jour de la semaine actuel (dimanche = 1, lundi = 2, ..., samedi = 7)
        int jourSemaine = calendar.get(Calendar.DAY_OF_WEEK);

        // Convertissez le jour de la semaine en français
        String[] joursSemaine = new DateFormatSymbols(Locale.FRENCH).getWeekdays();
        String nomJour = joursSemaine[jourSemaine];
        Integer visiteurCount = (Integer) session.getAttribute("visiteurCount");

 // Si elle n'existe pas, initialisez-la à 1, sinon augmentez-la de 1
 if (visiteurCount == null) {
	 et.ajtvisit(nomJour);
	 visiteurCount=1;
 } else {
     
 }

 // Mettez à jour la variable de session
 session.setAttribute("visiteurCount", visiteurCount);%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Enlightened Cours</title>
	<meta charset="UTF-8">
	<meta name="description" content="WebUni Education Template">
	<meta name="keywords" content="webuni, education, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="assets/img/logo.png" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="asts/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="asts/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="asts/css/owl.carousel.css"/>
	<link rel="stylesheet" href="asts/css/style.css"/>


	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header section -->
	<header class="header-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="site-logo">
						<!-- <img src="asts/img/logo.png" alt=""> -->
					</div>
					<div class="nav-switch">
						<i class="fa fa-bars"></i>
					</div>
				</div>
				<div class="col-lg-9 col-md-9">
    <a href="form/Login.jsp" class="site-btn header-btn">Login</a>
    <a href="form/Signup.jsp" style="margin-left: 1000px; border-top: 2px solid white;" class="site-btn header-btn">Signup</a>

    <nav class="main-menu" style="margin-left: -10px;">
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="courses.html">Courses</a></li>
            <li><a href="blog.html">News</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="Aboutus.html">About Us</a></li>
        </ul>
    </nav>
</div>
			</div>
		</div>
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section set-bg" data-setbg="asts/img/pexels-pixabay-301926.jpg">
		<div class="container">
			<div class="hero-text text-white">
				<h2>Get The Best Courses For your Study </h2>
				<p>Discover our tutoring center committed to academic excellence, where every student receives personalized support to thrive in their studies. Join us on an enriching educational journey where success becomes a reality.</p>
			</div>
			
		</div>
	</section>
	<!-- Hero section end -->


	<!-- categories section -->
	<section class="categories-section spad">
		<div class="container">
			<div class="section-title">
				<h2>Our Course Categories</h2>
			</div>
			<div class="row">
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="asts/img/categories/ecn.jpg"></div>
						<div class="ci-text">
							<h5>Economy</h5>
							<p>For all levels</p>
							
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="asts/img/categories/2.jpg"></div>
						<div class="ci-text">
							<h5>Math</h5>
							<p>For All levels</p>
							
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="asts/img/categories/4.jpg"></div>
						<div class="ci-text">
							<h5>Physics</h5>
							<p>For All levels</p>
							
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="asts/img/categories/svt.jpg"></div>
						<div class="ci-text">
							<h5>SVT</h5>
							<p>For All levels</p>
							
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="asts/img/categories/eng.jpg"></div>
						<div class="ci-text">
							<h5>English</h5>
							<p>For All levels</p>
							
						</div>
					</div>
				</div>
				<!-- categorie -->
				<div class="col-lg-4 col-md-6">
					<div class="categorie-item">
						<div class="ci-thumb set-bg" data-setbg="asts/img/categories/phl.jpg"></div>
						<div class="ci-text">
							<h5>Philosophie</h5>
							<p>For All levels</p>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- categories section end -->


	<!-- search section -->
	<section class="search-section">
		<div class="container">
			<div class="search-warp">
				<div class="section-title text-white">
					<h2></h2>
				</div>
				
			</div>
		</div>
	</section>
	<!-- search section end -->


	<!-- course section -->
	<section class="course-section spad">
		<div class="container">
			<div class="section-title mb-0">
				<h2>Featured Courses</h2>
			</div>
		</div>
		<div class="course-warp">
			<ul class="course-filter controls">
				<li class="control active" data-filter="all">All</li>
				<li class="control" data-filter=".finance">1 BAC ALL LEVELS</li>
				<li class="control" data-filter=".design">2 BAC SM</li>
				<li class="control" data-filter=".web">2 BAC PC/SVT</li>
				<li class="control" data-filter=".photo">2 BAC ECO</li>
				
			</ul>                                       
			<div class="row course-items-area">
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/ecn.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Organisation economy</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Youssef El Mansouri, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design web photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/MATH.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Math</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Karim Ben Abdeljalil, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<div class="mix col-lg-3 col-md-4 col-sm-6 design web photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/enlg.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>English</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Ahmed El Mahjoubi, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/ph.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Physics</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Jamal Rahmouni, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6  web">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/svt.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>SVT</h5>
								<p>Price: 150 DHS</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Hassan El Fassi, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/ecn.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Accounting</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Khalid Bouzidi, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 finance photo web design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/phl.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>philosophy</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Ali Amrani, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 photo">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/ecn.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Economy general</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Mohamed Cherkaoui, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<!-- course -->
				<div class="mix col-lg-3 col-md-4 col-sm-6 design">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/in.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>Engineering science</h5>
								<p>For all levels</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Rachid El Khatib, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<div class="mix col-lg-3 col-md-4 col-sm-6 finance">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/islm.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>ISLAMIQUE</h5>
								<p>For 1 BAC</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Mustapha Laaroussi, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<div class="mix col-lg-3 col-md-4 col-sm-6 finance">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/fr.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>FRANCAIS</h5>
								<p>For 1 BAC</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Said Bouhaddou, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<div class="mix col-lg-3 col-md-4 col-sm-6 finance">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/arbjpg.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>ARABE</h5>
								<p>For 1 BAC</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Omar Benjelloun, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
				<div class="mix col-lg-3 col-md-4 col-sm-6 finance ">
					<div class="course-item">
						<div class="course-thumb set-bg" data-setbg="asts/img/courses/soc.jpg">
							<div class="price">Price: 150 DHS</div>
						</div>
						<div class="course-info">
							<div class="course-text">
								<h5>SOCIOLOGIE</h5>
								<p>For 1 BAC</p>
								<div class="students">120 Students</div>
							</div>
							<div class="course-author">
								<div class="ca-pic set-bg" data-setbg="asts/img/authors/acc.jpg"></div>
								<p>Pr. Hamza El Mernissi, <span>Professeur</span></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="banner-section spad">
		<div class="container">
			<div class="section-title mb-0 pb-2">
				<h2>Join Our Community Now!</h2>
			</div>
			<div class="text-center pt-5">
				<a href="form/Signup.jsp" class="site-btn">Register Now</a>
			</div>
		</div>
	</section>
	</section>
	
	<!-- banner section end -->


	<!-- footer section -->
	<footer class="footer-section spad pb-0">
		<div class="footer-top">
			<div class="footer-warp">
				<div class="row">
					<div class="widget-item">
						<h4>Contact Info</h4>
						<ul class="contact-list">
							<li>1481 Creekside Lane <br>Avila Beach, CA 931</li>
							<li>+53 345 7953 32453</li>
							<li>yourmail@gmail.com</li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Engeneering</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Graphic Design</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Development</h4>
						<ul>
							<li><a href="">Applied Studies</a></li>
							<li><a href="">Computer Engeneering</a></li>
							<li><a href="">Software Engeneering</a></li>
							<li><a href="">Informational Engeneering</a></li>
							<li><a href="">System Engeneering</a></li>
						</ul>
					</div>
					<div class="widget-item">
						<h4>Newsletter</h4>
						<form class="footer-newslatter">
							<input type="email" placeholder="E-mail">
							<button class="site-btn">Subscribe</button>
							<p>*We donâ€™t spam</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-warp">
				<ul class="footer-menu">
					<li><a href="#">Terms & Conditions</a></li>
					<li><a href="#">Register</a></li>
					<li><a href="#">Privacy</a></li>
				</ul>
				<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
			</div>
		</div>
	</footer> 
	<!-- footer section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="asts/js/jquery-3.2.1.min.js"></script>
	<script src="asts/js/bootstrap.min.js"></script>
	<script src="asts/js/mixitup.min.js"></script>
	<script src="asts/js/circle-progress.min.js"></script>
	<script src="asts/js/owl.carousel.min.js"></script>
	<script src="asts/js/main.js"></script>
</html>
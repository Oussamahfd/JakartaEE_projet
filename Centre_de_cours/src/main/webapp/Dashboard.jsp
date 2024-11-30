<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="DAO.etudao" %>
		<%@ page import="classes.Etud" %>
		<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
	<%@ page import="java.sql.ResultSet, java.sql.SQLException" %>

<%
    String id = (String) session.getAttribute("fullnm");
    if (id == null) {
        response.sendRedirect("form/Login.jsp");
    }
%>

		
<%!
	DAO.etudao et;%>
<%
    et = new DAO.etudao();


ResultSet rsnbprf = et.allprfnum();
session.setAttribute("rspn",rsnbprf);

ResultSet rsnbetd = et.alletdnum();
session.setAttribute("rspnt",rsnbetd);

ResultSet totalpaietd = et.totalpaietd();
session.setAttribute("rstp",totalpaietd);

ResultSet totalvisit = et.visiteurs();
session.setAttribute("rsvt",totalvisit);

ResultSet totalpaiparm = et.totalpaietdparmoi();
session.setAttribute("rstprm",totalpaiparm);

ResultSet totalpaiprf = et.totalpaieprf();




ResultSet rsnbprfs = (ResultSet) session.getAttribute("rspn");
int valnbprf = 0;
if (rsnbprfs.next()) {
	valnbprf = rsnbprfs.getInt(1);
	session.setAttribute("valnbprf",valnbprf);
    // Utilisez valtotalpaiprf comme nécessaire
} else {
    // Gérer le cas où il n'y a pas de résultats
}


ResultSet rsnbetds = (ResultSet) session.getAttribute("rspnt");
int valnbetds = 0;
if (rsnbetds.next()) {
	valnbetds = rsnbetds.getInt(1);
	session.setAttribute("valnbetds",valnbetds);
    // Utilisez valtotalpaiprf comme nécessaire
} 

ResultSet totalpaietds = (ResultSet) session.getAttribute("rstp");
float valtotalpaiets = 0;
if (totalpaietds.next()) {
	valtotalpaiets = totalpaietds.getFloat(1);
	session.setAttribute("valtotalpaiets",valtotalpaiets);

} 

ResultSet totalvisits = (ResultSet) session.getAttribute("rsvt");
List<Integer> intList = new ArrayList<>();
while (totalvisits.next()) {
    for (int i = 1; i <= 7; i++) {
        int value = totalvisits.getInt(i);
        intList.add(value);
    }
}
ResultSet rstprm = (ResultSet) session.getAttribute("rstprm");
List<Float> flotList = new ArrayList<>();
while (rstprm.next()) {
    for (int i = 1; i <= 9; i++) {
        float value = rstprm.getInt(i);
        flotList.add(value);
    }
}

float valtotalpaiprf =0;
if (totalpaiprf.next()) {
	valtotalpaiprf = totalpaiprf.getFloat(1);
	session.setAttribute("valtotalpaiprf",valtotalpaiprf);

}



String noms = (String) session.getAttribute("fullnm");
String prnms = (String) session.getAttribute("fullpn");
String mls = (String) session.getAttribute("fullmail");
String rl = (String) session.getAttribute("fullrl");
String spc = " ";
%>



<!DOCTYPE html>
<html lang="en">

<head>
<!-- main dashboard -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" type="image/png" href="assets/img/logo.png">

<title>Dashboard</title>
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<!-- Material Icons/sidebar -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- CSS Files -->
<link id="pagestyle" href="assets/css/material-dashboard.css?v=3.1.0"
	rel="stylesheet" />
<!-- Nepcha Analytics (nepcha.com) -->
<!-- Nepcha is a easy-to-use web analytics. No cookies and fully compliant with GDPR, CCPA and PECR. -->
<script defer data-site="YOUR_DOMAIN_HERE"
	src="https://api.nepcha.com/js/nepcha-analytics.js"></script>

<!-- sidebar / navbar -->
<link rel="stylesheet" href="style.css">


<!-- Custom CSS -->
<link href="css/style.min.css" rel="stylesheet">
<!--pagination -->
<link rel="stylesheet" href="css/pagination.css">
<!-- btn groupe -->
<link rel="stylesheet" href="css/btngrp.css">

<!-- unused -->
<!-- Boxiocns CDN Link -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template">
<meta name="description"
	content="Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<link rel="canonical"
	href="https://www.wrappixel.com/templates/ample-admin-lite/" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<!-- button ajouter -->
<link
	href="https://fonts.googleapis.com/css2?family=Bruno+Ace&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="stylebtn.css" />

<!-- menu sidebar -->
        <link rel="stylesheet" href="css/stylemenu.css">

</head>

<body class="g-sidenav-show  bg-gray-200">

	<!-- navbar  -->
	
	<div >
		<header class="topbar" style="background-color:black;">
		
		<div class="datetime" style="color:white; margin-right: 600px;z-index:1;"></div>
		
		
			<span class="navigation__group">
                <img class="icon" src="assets/img/notification.svg" alt="Notification">
                <img class="profile" src="assets/img/profileo.png" alt="Joe Doe Picture">
            </span>
            <div class="dropdown__wrapper hide dropdown__wrapper--fade-in none" style="background-color:black;">
               <div class="dropdown__group">
                    <div class="user-name" style="color:white;"><%= prnms%><%= spc %><%= noms %></div>
                    <div class="email" style="color:light-blue;"><%= mls%></div>
                </div>
                <hr class="divider" style="border-color: white; border-style: solid; border-width: 1px;">
                <nav>
                    <ul>
                        <li style="color:white;">
                            <i class="fa-solid fa-user" style="color: #ffffff;"></i> My Profile
                        </li>
                        <li style="color:white;">
                            <i class="fa-solid fa-gear" style="color: #ffffff;"></i> Settings
                        </li>
                    </ul>
                    <hr class="divider" style="color:white;">
                    <ul>
                        <li style="color:white;">
                            <img src="assets/img/tutorials.svg" alt="Tutorials"> Tutorials
                        </li>
                        <li style="color:white;">
                            <i class="fa-solid fa-circle-question" style="color: #ffffff;"></i> Help Center
                        </li>
                    </ul>
                    <hr class="divider" style="border-color: white; border-style: solid; border-width: 1px;">
                     <form action="Disconn" method="post" style="list-style-type: none; padding: 0; margin: 0;">
    <ul style="list-style-type: none; margin-top:10px;">
        <li style="color: #E3452F;">
            <i class="fa-solid fa-right-from-bracket" style="color: #E3452F;"></i>
            <input type="submit" value="Log out" style="background:none; border:none; padding:0; color:inherit; cursor:pointer;">
        </li>
    </ul>
</form>
                </nav>
            </div>
		</header>
	</div>

	<!-- sidebar-->
	<div class="sidebar close" style="background-color:black;">
		<div class="logo-details">
			<i class="fa-solid fa-school" style="color: #ffffff;"></i> <span class="logo_name">EnlightenEd</span>
		</div>
		<ul class="nav-links">
			<li><a href="Dashboard.jsp"> <i class='bx bx-grid-alt'></i> <span
					class="link_name">Dashboard</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="Dashboard.jsp">Dashboard</a></li>
				</ul></li>
			<li>
				<div class="iocn-link" >
					<a href="#"> <i class='bx bxs-edit-alt'></i> <span
						class="link_name">Gestion</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu" style="background-color:#020203;">
					<li><a class="link_name" href="#">Gestion</a></li>
					<li style="margin-left: -35px;"><a href="gestionprofs.jsp?page=1"><i
							class="fa-solid fa-user-tie"></i></i>Profs</a></li>
					<li style="margin-left: -35px;"><a href="getionetuds.jsp?page=1"><i
							class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<!-- <li style="margin-left: -35px;"><a href="getionemps.jsp"><i
							class="fa-solid fa-briefcase"></i>Employés</a></li> -->
				</ul>
			</li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bxs-credit-card-alt'></i> <span
						class="link_name">Paiement</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu" style="background-color:#020203;">
					<li><a class="link_name" href="#">Paiement</a></li>
					<li style="margin-left: -35px;"><a href="paimentprofs.jsp?page=1"><i
							class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left: -35px;"><a href="paimentetuds.jsp?page=1"><i
							class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<!-- <li style="margin-left: -35px;"><a href="paimentemps.jsp"><i
							class="fa-solid fa-briefcase"></i>Employés</a></li> -->
				</ul>
			</li>

			<!-- <li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bxs-cog' style="margin-left: -px;"></i>
						<span class="link_name">Organisation</span>
					</a> <i class='bx bxs-chevron-down arrow' style="margin-left: -15px;"></i>
				</div>
				<ul class="sub-menu" style="background-color:#020203;">
					<li><a class="link_name" href="#">Organisation</a></li>
					<li style="margin-left: -35px;"><a href="organisationmat.jsp"><i
							class="fa-solid fa-book"></i>Matières</a></li>
					<li style="margin-left: -35px;"><a href="organisationniv.jsp"><i
							class="fa-solid fa-layer-group"></i>Niveaux</a></li>
					<li style="margin-left: -35px;"><a href="organisationgrp.jsp"><i
							class="fa-solid fa-people-group"></i>Groupes</a></li>
				</ul>
			</li> -->
			<li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bx-stopwatch'></i> <span
						class="link_name">Absences</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu" style="background-color:#020203;">
					<li><a class="link_name" href="#">Absences</a></li>
					<li style="margin-left: -35px;"><a href="absenceprofs.jsp?page=1"><i
							class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left: -35px;"><a href="absencetuds.jsp?page=1"><i
							class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<!-- <li style="margin-left: -35px;"><a href="absencemps.jsp"><i
							class="fa-solid fa-briefcase"></i>Employés</a></li> -->
				</ul>
			</li>
			<li>
				<div class="iocn-link" >
					<a href="#"> <i class='bx bxs-calendar'></i> <span
						class="link_name">Emploi de temps</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu" style="background-color:#020203;">
					<li><a class="link_name" href="#">Emploi de temps</a></li>
					<li style="margin-left: -35px;"><a href="emploiprofs.jsp"><i
							class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left: -35px;"><a href="emploigrps.jsp"><i
							class="fa-solid fa-people-group"></i>Groupes</a></li>
					<!-- <li style="margin-left: -35px;"><a href="emploisalle.jsp"><i
							class="fas fa-school"></i>Salles</a></li> -->
				</ul>
			</li>

			<li><a href="annonces.jsp?page=1"> <i class='bx bxs-news'></i> <span
					class="link_name">Annonces</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="annonces.jsp?page=1">Annonces</a></li>
				</ul></li>

			
		</ul>
	</div>


	<!-- main dashboard -->
<section class="home-section">
		<div class="home-content">
			<i class='bx bx-menu'></i>
		</div>

		<main
			class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

			<!-- End Navbar -->
			<div class="container-fluid py-4">
				<div class="row">
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card" style="border-radius: 20px;">
							<div class="card-header p-3 pt-2"
								style="background-color: transparent;">
								<div
									class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
									<i class="material-icons opacity-10">person</i>
								</div>
								
								<div class="text-end pt-1">
									<p class="text-sm mb-0 text-capitalize">Total des etudiants</p>
									<h4 class="mb-0"><%=valnbetds %></h4>
								</div>
								
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<!-- <span class="text-success text-sm font-weight-bolder">+55%
									</span> -->Cette année
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card" style="border-radius: 20px;">
							<div class="card-header p-3 pt-2"
								style="background-color: transparent;">
								<div
									class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
									<i class="material-icons opacity-10">person</i>
								</div>
								<div class="text-end pt-1">
									<p class="text-sm mb-0 text-capitalize">Total profs</p>
									<h4 class="mb-0"><%=valnbprf %></h4>
								</div>
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<!-- <span class="text-success text-sm font-weight-bolder">+3%
									</span> -->Cette année
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
						<div class="card" style="border-radius: 20px;">
							<div class="card-header p-3 pt-2"
								style="background-color: transparent;">
								<div
									class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
									<i class="bi bi-cash-coin opacity-10"></i>
								</div>
								<div class="text-end pt-1">
									<p class="text-sm mb-0 text-capitalize">Total Salaires payé</p>
									<h4 class="mb-0"><%=valtotalpaiprf %> DHS</h4>
								</div>
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<!-- <span class="text-danger text-sm font-weight-bolder">-2%</span> -->
									Cette année
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6">
						<div class="card" style="border-radius: 20px;">
							<div class="card-header p-3 pt-2"
								style="background-color: transparent;">
								<div
									class="icon icon-lg icon-shape bg-gradient-info shadow-info text-center border-radius-xl mt-n4 position-absolute">
									
									<i class="fa-solid fa-money-bill opacity-10"></i>
								</div>
								<div class="text-end pt-1">
									<p class="text-sm mb-0 text-capitalize">Total des profits</p>
									<h4 class="mb-0"><%=valtotalpaiets %> DHS</h4>
								</div>
							</div>
							<hr class="dark horizontal my-0">
							<div class="card-footer p-3">
								<p class="mb-0">
									<!-- <span class="text-success text-sm font-weight-bolder">+5%
									</span> --> Cette année
								</p>
							</div>
						</div>
					</div>
				</div>
				
    <div class="row">
        <!-- Première colonne pour le premier graphique -->
        <div class="col-lg-6 col-md-6 mt-4 mb-4">
            <div class="card z-index-2" style="border-radius: 10px;">
                <div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
								<div
									class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
									<div class="chart">
										<canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
									</div>
								</div>
							</div>
							<div class="card-body">
								<h6 class="mb-0 ">Website Views</h6>
								<p class="text-sm ">les dernières visiteurs de plateforme </p>
								<hr class="dark horizontal">
								<div class="d-flex ">
									<i class="material-icons text-sm my-auto me-1">schedule</i>
									<p class="mb-0 text-sm">la dernière statistiques 1 min ago</p>
								</div>
							</div>
            </div>
        </div>
        <!-- Deuxième colonne pour le deuxième graphique -->
        <div class="col-lg-6 col-md-6 mt-4 mb-4">
            <div class="card z-index-2" style="border-radius: 10px;">
                <div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
								<div
									class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1">
									<div class="chart">
										<canvas id="chart-line" class="chart-canvas" height="170"></canvas>
									</div>
								</div>
							</div>
							<div class="card-body">
								<h6 class="mb-0 ">total des paiments (en DHS)</h6>
								<p class="text-sm ">
									les paiements pour chaque mois des etudiants
								</p>
								<hr class="dark horizontal">
								<div class="d-flex ">
									<i class="material-icons text-sm my-auto me-1">schedule</i>
									<p class="mb-0 text-sm">la dernière statistiques 1 min ago</p>
								</div>
							</div>
            </div>
        </div>
    </div>
    <!-- Nouvelle ligne pour le troisième graphique en bas des deux premiers -->
    <!-- <div class="row">
        <div class="col-lg-12 mt-4 mb-3">
            <div class="card z-index-2" style="border-radius: 10px;">
                <div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
								<div
									class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1">
									<div class="chart">
										<canvas id="chart-line-tasks" class="chart-canvas"
											height="170"></canvas>
									</div>
								</div>
							</div>
							<div class="card-body">
								<h6 class="mb-0 ">Completed Tasks</h6>
								<p class="text-sm ">Last Campaign Performance</p>
								<hr class="dark horizontal">
								<div class="d-flex ">
									<i class="material-icons text-sm my-auto me-1">schedule</i>
									<p class="mb-0 text-sm">just updated</p>
								</div>
							</div>
            </div>
        </div>
    </div> -->


				

				<footer class="footer py-4  ">
					<div class="container-fluid">
						<div class="row align-items-center justify-content-lg-between">
							<div class="col-lg-6 mb-lg-0 mb-4">
								<div
									class="copyright text-center text-sm text-muted text-lg-start">
									©
									<script>
										document
												.write(new Date().getFullYear())
									</script>
									, made with <i class="fa fa-heart"></i> by <a
										href="https://www.creative-tim.com" class="font-weight-bold"
										target="_blank">Creative Tim</a> for a better web.
								</div>
							</div>
							<div class="col-lg-6">
								<ul
									class="nav nav-footer justify-content-center justify-content-lg-end">
									<li class="nav-item"><a
										href="https://www.creative-tim.com"
										class="nav-link text-muted" target="_blank">Creative Tim</a></li>
									<li class="nav-item"><a
										href="https://www.creative-tim.com/presentation"
										class="nav-link text-muted" target="_blank">About Us</a></li>
									<li class="nav-item"><a
										href="https://www.creative-tim.com/blog"
										class="nav-link text-muted" target="_blank">Blog</a></li>
									<li class="nav-item"><a
										href="https://www.creative-tim.com/license"
										class="nav-link pe-0 text-muted" target="_blank">License</a></li>
								</ul>
							</div>
						</div>
					</div>
				</footer>

			</div>

		</main>



	</section>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="assets/js/plugins/chartjs.min.js"></script>
	
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script src="assets/js/material-dashboard.min.js?v=3.1.0"></script>
	
	
	<script>
		var ctx = document.getElementById("chart-bars").getContext("2d");

		new Chart(ctx, {
			type : "bar",
			data : {
				labels : [ "M", "T", "W", "T", "F", "S", "S" ],
				datasets : [ {
					label : "Visiteurs",
					tension : 0.4,
					borderWidth : 0,
					borderRadius : 4,
					borderSkipped : false,
					backgroundColor : "rgba(255, 255, 255, .8)",
					data : [ <%=intList.get(0) %>,<%=intList.get(1) %>,<%=intList.get(2) %>,<%=intList.get(3) %>,<%=intList.get(4) %>,<%=intList.get(5) %>,<%=intList.get(6) %> ],
					maxBarThickness : 6
				}, ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							suggestedMin : 0,
							suggestedMax : 500,
							beginAtZero : true,
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
							color : "#fff"
						},
					},
					x : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							display : true,
							color : '#f8f9fa',
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
				},
			},
		});

		var ctx2 = document.getElementById("chart-line").getContext("2d");

		new Chart(ctx2, {
			type : "line",
			data : {
				labels : [ "Oct", "Nov", "Dec", "Jan", "Fev", "Mar", "Apr","Mai", "Jun" ],
				datasets : [ {
					label : "Profits",
					tension : 0,
					borderWidth : 0,
					pointRadius : 5,
					pointBackgroundColor : "rgba(255, 255, 255, .8)",
					pointBorderColor : "transparent",
					borderColor : "rgba(255, 255, 255, .8)",
					borderColor : "rgba(255, 255, 255, .8)",
					borderWidth : 4,
					backgroundColor : "transparent",
					fill : true,
					data : [ <%=flotList.get(0) %>,<%=flotList.get(1) %>,<%=flotList.get(2) %>,<%=flotList.get(3) %>,<%=flotList.get(4) %>,<%=flotList.get(5) %>,<%=flotList.get(6) %>,<%=flotList.get(7) %>,<%=flotList.get(8) %> ],
					maxBarThickness : 6

				} ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							display : true,
							color : '#f8f9fa',
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x: {
					    grid: {
					        drawBorder: false,
					        display: false,
					        drawOnChartArea: false,
					        drawTicks: false,
					        borderDash: [5, 5]
					    },
					    ticks: {
					        display: true,
					        color: '#f8f9fa',
					        padding: 10,
					        font: {
					            size: 14,
					            weight: 300,
					            family: "Roboto",
					            style: 'normal',
					            lineHeight: 2
					        },
					        maxTicksLimit: 10
						}
					},
				},
			},
		});

		var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

		new Chart(ctx3, {
			type : "line",
			data : {
				labels : [ "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
						"Nov", "Dec" ],
				datasets : [ {
					label : "Mobile apps",
					tension : 0,
					borderWidth : 0,
					pointRadius : 5,
					pointBackgroundColor : "rgba(255, 255, 255, .8)",
					pointBorderColor : "transparent",
					borderColor : "rgba(255, 255, 255, .8)",
					borderWidth : 4,
					backgroundColor : "transparent",
					fill : true,
					data : [ 50, 40, 300, 220, 500, 250, 400, 230, 500 ],
					maxBarThickness : 6

				} ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							display : true,
							padding : 10,
							color : '#f8f9fa',
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : '#f8f9fa',
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
				},
			},
		});
	</script>


	<!-- sidebar / navbar -->
	<script src="script.js"></script>
	
	<script src="assets/js/scriptmenu.js"></script>
	<script>
	 function updateDateTime() {
	        var datetimeElement = document.querySelector('.datetime');
	        var now = new Date();
	        var dateOptions = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
	        var timeOptions = { hour: 'numeric', minute: 'numeric', hour12: false }; // Exclure les secondes

	        var dateString = now.toLocaleDateString(undefined, dateOptions);
	        var timeString = now.toLocaleTimeString(undefined, timeOptions);

	        datetimeElement.innerHTML = dateString + ' - ' + timeString;
	    }

	    setInterval(updateDateTime, 1000);
	    updateDateTime();
	</script>
</body>

</html>
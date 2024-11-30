<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- main dashboard -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="assets/img/favicon.png">
<title>Material Dashboard 2 by Creative Tim</title>
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

<link rel="icon" type="image/png" sizes="16x16"
	href="plugins/images/favicon.png">
<!-- Custom CSS -->
<link href="css/style.min.css" rel="stylesheet">

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

</head>

<body class="g-sidenav-show  bg-gray-200">

	<!-- navbar  -->
	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5"
		data-sidebartype="full" data-sidebar-position="absolute"
		data-header-position="absolute" data-boxed-layout="full">
		<header class="topbar" data-navbarbg="skin5">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">

				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin5">
					<ul class="navbar-nav d-none d-md-block d-lg-none">
						<li class="nav-item"><a
							class="nav-toggler nav-link waves-effect waves-light text-white"
							href="javascript:void(0)"><i class="ti-menu ti-close"></i></a></li>
					</ul>

					<!-- Right side toggle and nav items -->

					<ul class="navbar-nav ms-auto d-flex align-items-center">

						<!-- Search -->

						<li class=" in">
							<form role="search" class="app-search d-none d-md-block me-3">
								<input type="text" placeholder="Search..."
									class="form-control mt-0"> <a href="" class="active">
									<i class="fa fa-search"></i>
								</a>
							</form>
						</li>

						<!-- User profile and search -->

						<li><a class="profile-pic" href="#"> <img
								src="plugins/images/users/varun.jpg" alt="user-img" width="36"
								class="img-circle"><span class="text-white font-medium">Steave</span></a>
						</li>

					</ul>
				</div>
			</nav>
		</header>
	</div>

	<!-- sidebar-->
	<div class="sidebar close">
		<div class="logo-details">
			<i class='bx bxl-c-plus-plus'></i> <span class="logo_name">CodingLab</span>
		</div>
		<ul class="nav-links">
			<li><a href="#"> <i class='bx bx-grid-alt'></i> <span
					class="link_name">Dashboard</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="#">Dashboard</a></li>
				</ul></li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bxs-edit-alt'></i> <span
						class="link_name">Gestion</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li ><a class="link_name" href="#">Gestion</a></li>
					<li style="margin-left:-35px;"><a href="gestionprofs.jsp"><i class="fa-solid fa-user-tie"></i></i>Profs</a></li>
					<li style="margin-left:-35px;"><a href="getionetuds.jsp"><i class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<li style="margin-left:-35px;"><a href="getionemps.jsp"><i class="fa-solid fa-briefcase"></i>Emplois</a></li>
				</ul>
			</li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bxs-credit-card-alt'></i> <span
						class="link_name">Paiement</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">Paiement</a></li>
					<li style="margin-left:-35px;"><a href="paimentprofs.jsp"><i
							class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left:-35px;"><a href="paimentetuds.jsp"><i class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<li style="margin-left:-35px;"><a href="paimentemps.jsp"><i class="fa-solid fa-briefcase"></i>Emplois</a></li>
				</ul>
			</li>
			
				<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bxs-cog' style="margin-left:-px;"></i> <span class="link_name">Organisation</span>
					</a> <i class='bx bxs-chevron-down arrow' style="margin-left:-15px;"></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">Organisation</a></li>
					<li style="margin-left:-35px;"><a href="organisationmat.jsp"><i class="fa-solid fa-book"></i>Matières</a></li>
					<li style="margin-left:-35px;"><a href="organisationniv.jsp"><i class="fa-solid fa-layer-group"></i>Niveaux</a></li>
					<li style="margin-left:-35px;"><a href="organisationgrp.jsp"><i class="fa-solid fa-people-group"></i>Groupes</a></li>
				</ul>
			</li>
			<li>
			
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bx-stopwatch'></i> <span
						class="link_name">Absences</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li ><a class="link_name" href="#">Absences</a></li>
					<li style="margin-left:-35px;"><a href="absenceprofs.jsp"><i class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left:-35px;"><a href="absencetuds.jsp"><i class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<li style="margin-left:-35px;"><a href="absencemps.jsp"><i class="fa-solid fa-briefcase"></i>Emplois</a></li>
				</ul>
			</li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bxs-calendar'></i> <span
						class="link_name">Emploi de temps</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li ><a class="link_name" href="#">Emploi de temps</a></li>
					<li style="margin-left:-35px;"><a href="emploiprofs.jsp"><i class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left:-35px;"><a href="emploigrps.jsp"><i class="fa-solid fa-people-group"></i>Groupes</a></li>
					<li style="margin-left:-35px;"><a href="emploisalle.jsp"><i class="fas fa-school"></i>Salles</a></li>
				</ul>
			</li>
		
		<li><a href="annonces.jsp"> <i class='bx bxs-news'></i> <span
					class="link_name">Annonces</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="annonces.jsp">Annonces</a></li>
				</ul></li>

			<li>
				<div class="profile-details">
					<div class="profile-content">
						<img src="image/profile.jpg" alt="profileImg">
					</div>
					<div class="name-job">
						<div class="profile_name">Prem Shahi</div>
						<div class="job">Web Desginer</div>
					</div>
					<i class='bx bx-log-out'></i>
				</div>
			</li>
		</ul>
	</div>


	<!-- main dashboard -->
	<section class="home-section">
		<div class="home-content">
			<i class='bx bx-menu'></i>
		</div>

	</section>

	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="assets/js/plugins/chartjs.min.js"></script>
	<script>
		var ctx = document.getElementById("chart-bars").getContext("2d");

		new Chart(ctx, {
			type : "bar",
			data : {
				labels : [ "M", "T", "W", "T", "F", "S", "S" ],
				datasets : [ {
					label : "Sales",
					tension : 0.4,
					borderWidth : 0,
					borderRadius : 4,
					borderSkipped : false,
					backgroundColor : "rgba(255, 255, 255, .8)",
					data : [ 50, 20, 10, 22, 50, 10, 40 ],
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
					borderColor : "rgba(255, 255, 255, .8)",
					borderWidth : 4,
					backgroundColor : "transparent",
					fill : true,
					data : [ 50, 40, 300, 320, 500, 350, 200, 230, 500 ],
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
	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script src="assets/js/material-dashboard.min.js?v=3.1.0"></script>


	<!-- sidebar / navbar -->
	<script src="script.js"></script>
</body>

</html>
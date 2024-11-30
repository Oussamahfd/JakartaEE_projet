<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- main dashboard -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" type="image/png" href="assets/img/logo.png">


<title>Ajouter Paiment Employé</title>
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
                <img class="profile" src="assets/img/joe-doe-profile.png" alt="Joe Doe Picture">
            </span>
            <div class="dropdown__wrapper hide dropdown__wrapper--fade-in none" style="background-color:black;">
                <div class="dropdown__group">
                    <div class="user-name" style="color:white;">Joe Doe</div>
                    <div class="email" style="color:light-blue;">joe.doe@atheros.ai</div>
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
                    <ul>
                        <li style="color: #E3452F;">
                            <i class="fa-solid fa-right-from-bracket" style="color: #E3452F;"></i>Log out
                        </li>
                    </ul>
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
			<li><a href="#"> <i class='bx bx-grid-alt'></i> <span
					class="link_name">Dashboard</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="#">Dashboard</a></li>
				</ul></li>
			<li>
				<div class="iocn-link" >
					<a href="#"> <i class='bx bxs-edit-alt'></i> <span
						class="link_name">Gestion</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu" style="background-color:#020203;">
					<li><a class="link_name" href="#">Gestion</a></li>
					<li style="margin-left: -35px;"><a href="gestionprofs.jsp"><i
							class="fa-solid fa-user-tie"></i></i>Profs</a></li>
					<li style="margin-left: -35px;"><a href="getionetuds.jsp"><i
							class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<li style="margin-left: -35px;"><a href="getionemps.jsp"><i
							class="fa-solid fa-briefcase"></i>Employés</a></li>
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
					<li style="margin-left: -35px;"><a href="paimentprofs.jsp"><i
							class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left: -35px;"><a href="paimentetuds.jsp"><i
							class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<li style="margin-left: -35px;"><a href="paimentemps.jsp"><i
							class="fa-solid fa-briefcase"></i>Employés</a></li>
				</ul>
			</li>

			<li>
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
			</li>
			<li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bx-stopwatch'></i> <span
						class="link_name">Absences</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu" style="background-color:#020203;">
					<li><a class="link_name" href="#">Absences</a></li>
					<li style="margin-left: -35px;"><a href="absenceprofs.jsp"><i
							class="fa-solid fa-user-tie"></i>Profs</a></li>
					<li style="margin-left: -35px;"><a href="absencetuds.jsp"><i
							class="fa-solid fa-user-graduate"></i>Etudiants</a></li>
					<li style="margin-left: -35px;"><a href="absencemps.jsp"><i
							class="fa-solid fa-briefcase"></i>Employés</a></li>
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
					<li style="margin-left: -35px;"><a href="emploisalle.jsp"><i
							class="fas fa-school"></i>Salles</a></li>
				</ul>
			</li>

			<li><a href="annonces.jsp"> <i class='bx bxs-news'></i> <span
					class="link_name">Annonces</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="annonces.jsp">Annonces</a></li>
				</ul></li>

			<li>
				<div class="profile-details" style="background-color:#020203;">
					<div class="profile-content">
						<img src="image/profile.jpg" alt="profileImg">
					</div>
					<div class="name-job" >
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

		<!-- button ajouter -->
		<main
			class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
	<div class="fr" style=" width: 80%; float: right;margin-right: 7%;background-color:white; border-radius:10px;">
            <h1 style="font-family: 'FS Me', sans-serif;margin-left:113px;">Ajouter Une Paiment</h1>
            <form method="POST" action="">
               <div class="form-group" style ="display:flex; width:90%;margin-left:35px;">
                  <label for="student-name" style="color:black;">Nom de l'étudiant</label>
                  <input type="text" style="width:50%;margin-right:5px;border-color:black;border-radius:7px;" class="form-control" id="nom_etudient" placeholder="Entrez le nom de l'étudiant" name="nom_etudient">
               
                  <label for="student-id" style="color:black;">ID de l'étudiant</label>
                  <input type="text" style="width:50%;margin-right:5px;border-color:black;border-radius:7px;" class="form-control" id="id_etudient" placeholder="Entrez l'ID de l'étudiant" name="id_etudient">
               </div>
               <div class="form-group" style ="display:flex; width:90%;margin-left:35px;">
                  <label for="student-formation" style="color:black;">Nom de la formation</label>
                  <input type="text" style="width:50%;margin-left:12px;border-color:black;border-radius:7px;" class="form-control" id="formation" placeholder="Entrez le nom de la formation" name="formation">
               </div>
               <div class="form-group" style ="display:flex; width:90%;margin-left:35px;">
                  <label for="student-grade" style="color:black;">Date D'absence</label>
                   <input type="date" style="width:50%;margin-left:12px;border-color:black;border-radius:7px;" class="form-control" id="date_a" placeholder="Entrez la note de l'étudiant" name="date_a">
               </div>
               <div class="form-group" style ="display:flex; width:90%;margin-left:35px;">
                  <label for="student-grade" style="color:black;">HeurD'absence</label>
                   <input type="time" style="width:50%;margin-left:12px;border-color:black;border-radius:7px;" class="form-control" id="heur" placeholder="Entrez la note de l'étudiant" name="heur">
               </div>
               <div style ="display:flex;margin-left:40%;">
               <button type="submit" class="btn btn-primary" style ="background-color:black;border-radius:9px;" onmouseover="this.style.color='black'" onmouseout="this.style.color='white'">Enregistrer</button>
                <button type="button" class="btn btn-primary" style ="margin-left:4px;background-color:black;border-radius:9px;" onmouseover="this.style.color='black'" onmouseout="this.style.color='white'">Annuler</button>
                </div>
            </form>
         </div>
		</main>
		<footer>
		<div class="container-fluid" style="">
			<div class="row align-items-center justify-content-lg-between">
				<div class="col-lg-6 mb-lg-0 mb-4">
					<div class="copyright text-center text-sm text-muted text-lg-start">
						©
						<script>
                document.write(new Date().getFullYear())
              </script>
						made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
							href="https://www.creative-tim.com" class="font-weight-bold"
							target="_blank">Creative Tim</a> for a better web.
					</div>
				</div>
				<div class="col-lg-6">
					<ul
						class="nav nav-footer justify-content-center justify-content-lg-end">
						<li class="nav-item"><a href="https://www.creative-tim.com"
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



	</section>

	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="assets/js/plugins/chartjs.min.js"></script>
	
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<script src="assets/js/material-dashboard.min.js?v=3.1.0"></script>


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
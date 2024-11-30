<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@ page import="DAO.etudao" %>
		<%@ page import="classes.Etud" %>
	<%@ page import="java.sql.ResultSet, java.sql.SQLException" %>
	<%@ page import="classes.Paiement" %>
	<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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


<title>Paiments Des Etudiants</title>
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
			<!-- <div>
				<a href="Ajouteretudsgpamt.jsp"><button>
						<i class="bi bi-plus-square-fill"></i> Ajouter Un Paiment
					</button></a>
			</div> -->
		</div>

		<!-- button ajouter -->
		<main
			class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
			<div style="font-family: 'Red Hat Display', sans-serif;display: flex;align-items: center;margin-left: 73%;font-size:14pt;margin-bottom:13px;"><span>Home/Paiments</span><span style="color: #2596be;">/</span><span style="color: #2596be; text-decoration: underline;">Etudiants</span></div>
			 <div class="search-container" style="margin-left: 59%;">
        	<form style="display: flex; align-items: center;" action="Serprfepaim"  method="post">
				<select class="education-level" name="nive">
					<option class="opt" value="2-bac-pc">2-bac-pc</option>
					<option class="opt" value="2-bac-sm">2-bac-sm-a</option>
					<option class="opt" value="2-bac-sm">2-bac-sm-b</option>
					<option class="opt" value="2-bac-eco">2-bac-eco</option>
					<option class="opt" value="2-bac-svt">2-bac-svt</option>
					<option class="opt" value="1-bac">1-bac</option>
					

				</select> <select class="education-level" name="grpe">
					<option value="1">Groupe 1</option>
					<option value="2">Groupe 2</option>
					<option value="3">Groupe 3</option>
					<option value="4">Groupe 4</option>
					<option value="5">Groupe 5</option>
				</select>
				<button class="search-button">
					<i class='bx bx-search-alt-2'></i> Search
				</button>
				</form>
    </div>

			<div class="container-fluid py-4">
				<div class="row">
					<div class="col-12">
						<div class="card my-4" style="border-radius:12px;">
							<div
								class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
								<div class=" shadow p-3 border-radius-lg pt-4 pb-3" style="BACKGROUND-COLOR:BLACK;">
									<h6 class="text-white text-capitalize ps-3" style="text-align:center;font-size:18pt;"><b>Table Des paiments(Etudiants)</b></h6>
								</div>
							</div>
							<div class="card-body px-0 pb-2">
								<div class="table-responsive p-0">
									<table class="table align-items-center mb-0">
										<thead>
											<tr>
												<th
													class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Id</th>
												<th
													class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Nom complet</th>
												
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Octobre</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">November</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Decembre</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Janvier</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Fevrier</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Mars</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Avril</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Mai</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Juin</th>
												<th
													class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7"></th>
												<th class="text-secondary opacity-7"></th>
											</tr>
										</thead>
										<% ResultSet rs = (ResultSet) session.getAttribute("rs");  String es=" ";
										int cmp =0;
	List<Paiement> etudList = new ArrayList<>();
	while (rs.next()) {
        String nom = rs.getString("nom");
        String prenom = rs.getString("prenom");
        String email = rs.getString("mail");
        int idpai = rs.getInt("user_id");
        boolean oct = rs.getBoolean("octorbe");
        boolean nov = rs.getBoolean("novembre");
        boolean dec = rs.getBoolean("decembre");
        boolean jan = rs.getBoolean("janvier");
        boolean fev = rs.getBoolean("fevrier");
        boolean mar = rs.getBoolean("mars");
        boolean avr = rs.getBoolean("avril");
        boolean mai = rs.getBoolean("mai");
        boolean jui = rs.getBoolean("juin");
        

        Paiement etud = new Paiement(nom, prenom, email, idpai, oct, nov, dec, jan,fev, mar, avr, mai, jui);
        etudList.add(etud);
        cmp++;
    }
	

	
	int rst = cmp/10; rst+=1;
	int rest = cmp%10;
	String nbpg = request.getParameter("page");
	int pageNumber;
	if (nbpg == null) {
		 pageNumber =1;
	    
	}
	else {pageNumber = Integer.parseInt(nbpg);}
	
	
	int cp =pageNumber*10;
	if (pageNumber == rst){cp=pageNumber*10-10+rest;}
	
	
	%>
										<tbody>
										<%
										for (int i = pageNumber*10-10; i < cp; i++) {
											Paiement paim = etudList.get(i);
%>
										
										
										
											<tr>
											<td>
													<p class="text-center text-xs font-weight-bold mb-0"><%=paim.getId() %></p>
													
												</td>
												<td>
													<div class="d-flex px-2 py-1">
														
														<div class="d-flex flex-column justify-content-center">
															<h6 class="text-center mb-0 text-sm"><%=paim.getNom() %><%=es %><%=paim.getPrenom() %></h6>
															<p class="text-center text-xs text-secondary mb-0"><%=paim.getEmail() %></p>
														</div>
													</div>
												</td>
												<td>
													<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getOct()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
													
												</td>
												<td>
																<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getNov()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
										
													
												</td>
												
												<td>
																<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getDec()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
										
													
												</td>
												<td>
																<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getJan()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
										
													
												</td>
												<td>
																<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getFev()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
										
													
												</td>
												<td>
																<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getMar()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
										
													
												</td>
												<td>
																<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getAvr()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
										
													
												</td>
												<td>
			<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getMai()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
																							
												</td>
												<td>
			<p class="text-center text-xs font-weight-bold mb-0"><% if (paim.getJun()) { %>
                <i class="fa-solid fa-circle-check" style="color:green;"></i>
            <% } else { %>
                <i class="fa-solid fa-circle-xmark" style="color:red;"></i>
            <% } %></p>
																							
												</td>
																			
											
												<td class="align-middle" style="color: green;">
    <form action="ajtpm.jsp" method="post">
        <input type="hidden" name="userIddd" value="<%= paim.getId() %>">
        <button type="submit" class="text-secondary font-weight-bold green text-xs" style="color: green;" data-toggle="tooltip" data-original-title="Edit user">
            Edit
        </button>
    </form>
</td>
												
												
														
														
											</tr>

<%} %>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>
			
	<div class="pagination" style="justify-content: center;align-items: center;">
		<ul>
		<%String nbpgac = request.getParameter("page");
		if(nbpgac != null){
		int pageNumberac = Integer.parseInt(nbpg);
		int prevpg =0;
		int nextpg =0;
		if(pageNumberac >0 && pageNumberac!=1){prevpg = pageNumberac-1;}
		else if (pageNumberac == 1){prevpg=1;}%>
		<li class="Previous"><a href="?page=<%=prevpg%>">Previous</a></li>
		<%for(int i=1 ;i<=rst;i++){ %>
			
			<li class="page active"><a href="?page=<%=i%>"><%=i %></a></li>
			<%} %>
			<%if(pageNumberac <5 && pageNumberac!=5){nextpg = pageNumberac+1;} else if (pageNumberac == 5){nextpg=5;}%>
			<li class="Next"><a href="?page=<%=nextpg%>">Next</a></li>
		</ul>
		<%}%>
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
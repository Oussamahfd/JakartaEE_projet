<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="DAO.etudao" %>
	<%@ page import="java.sql.ResultSet, java.sql.SQLException" %>
<%!
	DAO.etudao et;%>
<%
    et = new DAO.etudao();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form method="post" action="ko">
      <h1>SIGN UP</h1>
      <div class="input-box">
        <input type="text" placeholder="Nom" name="nom"  required>
        <i class='bx bxs-user'></i>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Prenom" name="prenom"  required>
        <i class='bx bxs-user'></i>
      </div>
      
            <button type="submit" class="btn">Sign Up</button>
      </form>

</body>
</html>
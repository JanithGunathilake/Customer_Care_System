<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "css/index.css	">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>UserAccount</title>
</head>
<body>
	
	<h1>Customer Care System</h1>
	<form action="UserAccountServlet" method="post">
	<button class="btn" style="" type = "submit" >User Account</button>
	</form>
	<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#">Inquiries</a></li>
  <li><a href="#">Contact Us</a></li>
  <li><a href="#">About</a></li>
  	
  <li><a href="login.jsp">Login</a></li>
  <li><a href="registercustomer.jsp">Sign Up</a></li>
  
  
 
	
  
</ul>
<br><br><br>

		<table border = "1" >
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var = "cid" value = "${cus.cid}"/>
	<c:set var = "name" value = "${cus.name}"/>
	<c:set var = "phone_number" value = "${cus.phone_number}"/>
	<c:set var = "email" value = "${cus.email}"/>
	<c:set var = "type" value = "${cus.type}"/>
	<c:set var = "password" value = "${cus.password}"/>
	
	
	
	<tr>
	<td>Customer ID</td>
	<td>${cus.cid}</td>
	</tr>
	<tr>
	<td>Customer Name</td>
	<td>${cus.name}</td>
	</tr>
	<tr>
	<td>Customer Phone Number</td>
	<td>${cus.phone_number}</td>
	</tr>
	<tr>
	<td>Customer Email</td>
	<td>${cus.email}</td>
	</tr>
	<tr>
	<td>Customer Type</td>
	<td>${cus.type}</td>
	</tr>
	<tr>
	<td>Customer Password</td>
	<td>${cus.password}</td>
	</tr>
	

	
	</c:forEach>
</table>
	
	
	<br><br><br><br><br><br>
	
	<footer>
	Online Customer Care System
	<br>
	All rights reversed.
	</footer>
	










	
		
		
</body>
</html>
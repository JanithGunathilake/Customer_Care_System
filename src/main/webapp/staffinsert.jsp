<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/staffinsert.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>

<title>Manage Questions</title>
</head>
<body>

<section id="menubar">

 

   <div class="logo">
   <h2>Admin Dashboard</h2>
	</div>
		

<div class="topics">
	<ul>
   <li><form action = "admindashboard.jsp" method = "post"><i class="fas fa-chart-pie"></i><button class="hehehe" type="submit">Dashboard</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-comment-alt"></i><button class="hehehe" type="submit">Manage Inquiries</button></form></li>
   <li><form action = "ManageQuestionServlet" method = "post"><i class="fas fa-comment-alt"></i><button class="hehehe" type="submit">Manage Questions</button></form></li>
   <li><form action = "StaffManageServlet" method = "post"><i class="fas fa-user"></i><button class="hehehe" type="submit">Manage Staff</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-user"></i><button class="hehehe" type="submit">Manage Users</button></form></li>
   </ul>
</div>

</section>

<section id="page">
	 
     <div class="display">
     

<div class="fm">
  <form class="fmm" action="StaffInsertServlet" method = "post">
  <center><h1>Register Staff Member</h1></center> <br>
    <label for="firstname">First Name</label>
    <input type="text" name="firstname" placeholder="Your name.."> <br>

    <label for="lastname">Last Name</label>
    <input type="text" name="lastname" placeholder="Your last name.."><br>
    
    <label for="phone_number">Phone Number</label>
    <input type="text" name="phone_number" placeholder="Your Phone Number.."><br>
    
    <label for="email">Email</label>
    <input type="text" name="email" placeholder="Your Email.."><br>
    <br>
    <label for="address">Address</label>
    <input type="text" name="address" placeholder="Your Address.."><br>
    
    <label for="password">Password</label>
    <input type="text" name="password" placeholder="Your Password.."><br>

  
    <input type="submit" value="Submit">
  </form>
</div>


           </div>
  
</section>

</body>
</html>
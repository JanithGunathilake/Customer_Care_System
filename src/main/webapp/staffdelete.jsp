<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/staffdelete.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
	

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
		String sid = request.getParameter("sid");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String phone_number = request.getParameter("phone_number");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String password = request.getParameter("passwordf");
		%>


    <section id="menubar">



   <div class="logo">
   <h2>Admin Dashboard</h2>
	</div>
	

<div class="topics">
	<ul>
   <li><form action = "#" method = "post"><i class="fas fa-chart-pie"></i><button class="hehehe" type="submit">Dashboard</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-comment-alt"></i><button class="hehehe" type="submit">Manage Inquiries</button></form></li>
   <li><form action = "ManageQuestionServlet" method = "post"><i class="fas fa-comment-alt"></i><button class="hehehe" type="submit">Manage Questions</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-user"></i><button class="hehehe" type="submit">Manage Staff</button></form></li>
   <li><form action = "#" method = "post"><i class="fas fa-user"></i><button class="hehehe" type="submit">Manage Users</button></form></li>
   </ul>
</div>

</section>

<section id="page">

   	<div class="display">
   	
   	<form class="fmm" action="StaffDeleteServlet" method = "post">
		  <center><h1>Delete Staff Member</h1></center> <br>
		  
		  	<label for="firstname">Staff ID</label>
		    <input type="text" name="sid" value = "<%=sid%>" readonly> <br>
		  
		    <label for="firstname">First Name</label>
		    <input type="text" name="firstname" value = "<%=firstname %>"readonly> <br>
		
		    <label for="lastname">Last Name</label>
		    <input type="text" name="lastname" value = "<%=lastname%>"readonly><br>
		    
		    <label for="phone_number">Phone Number</label>
		    <input type="text" name="phone_number" value = "<%=phone_number%>"readonly><br>
		    
		    <label for="email">Email</label>
		    <input type="text" name="email" value = "<%=email%>"readonly><br>
		    <br>
		    <label for="address">Address</label>
		    <input type="text" name="address" value = "<%=address%>"readonly><br>
		    
		    <label for="password">Password</label>
		    <input type="text" name="password" value = "<%=password%>"readonly><br>
		
		  
		    <input type="submit" value="Delete">
		  </form>
   	
   	


     </div>
  
</section>
</body>
</html>
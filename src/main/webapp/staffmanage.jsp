<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/managestaff.css">
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
     
     
     	
     	<a href = "staffinsert.jsp" >Add New Staff Member</a> <br> </div>
     	 <div class="display">
     	<table>
     	
     	<tr style = "background-color:#ff66cc;">
     	<td>Staff ID</td>
     	
     	
     	
     	<td>First Name</td>
     	
     	
     	
     	<td>Last Name</td>
     	
     	
     	
     	<td>Phone Number</td>
     	
     	
     	
     	<td>Email</td>
     	
     	
     	
     	<td>Address</td>
     	
     	
     	
     	<td>Password</td>
     	
     	
     	<td>Edit</td>
     	
     	
     	<td>Delete</td>
     	
     		
     	</tr>
     	
     	
     	
     	
     	<c:forEach var = "sta" items = "${staDetails}">
     	
     	<c:set var = "sid" value = "${sta.sid}"/>
     	<c:set var = "firstname" value = "${sta.firstname}"/>
     	<c:set var = "lastname" value = "${sta.lastname}"/>
     	<c:set var = "phone_number" value = "${sta.phone_number}"/>
     	<c:set var = "email" value = "${sta.email}"/>
     	<c:set var = "address" value = "${sta.address}"/>
     	<c:set var = "password" value = "${sta.password}"/>
     	
     	
     	<tr>
     	<td>${sta.sid}</td>
     	<td>${sta.firstname}</td>
     	<td>${sta.lastname}</td>
     	<td>${sta.phone_number}</td>
     	<td>${sta.email}</td>
     	<td>${sta.address}</td>
     	<td>${sta.password}</td>
     	
     	<c:url value = "staffupdate.jsp" var = "staupdate">
     	<c:param name = "sid" value = "${sid}"/> 
     	<c:param name = "firstname" value = "${firstname}"/> 
     	<c:param name = "lastname" value = "${lastname}"/> 
     	<c:param name = "phone_number" value = "${phone_number}"/> 
     	<c:param name = "email" value = "${email}"/> 
     	<c:param name = "address" value = "${address}"/> 
     	<c:param name = "password" value = "${password}"/> 
     	</c:url>
     	<td><a href = "${staupdate}"><input type = "button" name = "update" value = "Edit"></a></td>
     	
     	<c:url value = "staffdelete.jsp" var = "stadelete">
     	<c:param name = "sid" value = "${sid}"/> 
     	<c:param name = "firstname" value = "${firstname}"/> 
     	<c:param name = "lastname" value = "${lastname}"/> 
     	<c:param name = "phone_number" value = "${phone_number}"/> 
     	<c:param name = "email" value = "${email}"/> 
     	<c:param name = "address" value = "${address}"/> 
     	<c:param name = "password" value = "${password}"/> 
     	</c:url>
     	<td><a href = "${stadelete}"><input type = "button" name = "delete" value = "Delete"></a></td>
     	
     	</tr>
     	
     	
     	
     	
     	</c:forEach>
     
     </table>
     
           </div>
  
</section>

</body>



</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/manageque.css">
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
     
    
   
   				<form action = "addque" method = "post">
		<button class= "addbtn" type = "submit" name = "submit" value = "ADD Question">ADD Question</button>
	</form> <br/> </div>
	
	<div class="display">
	
	<table>
	<c:forEach var="que" items="${questionS}">
	
	<c:set var = "qid" value = "${que.qid}" />
	<c:set var = "question" value = "${que.question}" />
	<c:set var = "answer" value = "${que.answer}" />
	
	<tr class="tr">
	<td style= "background-color:#333; color:white;">Question ID - </td>
	<td style= "background-color:#333; color:white">${qid}</td>
	</tr>
	
	<tr class="tr">
	<td>Question - </td>
	<td>${question}</td>
	</tr>
	
	<tr class="tr">
	<td>Answer - </td>
	<td>${answer}</td>
	</tr> 
	
	<tr>
		<td>
		<c:url value = "updatequestion.jsp" var = "updateque">
		<c:param name = "qid" value = "${qid}"/>
		<c:param name = "question" value = "${question}"/>
		<c:param name = "answer" value = "${answer}"/>
	
	</c:url>
	
	<a href = "${updateque}">
		<button class= "manbtn" type = "submit" name = "update" value = "Edit">Edit</button>
	</a>
	</td>
	
		<td>
		<c:url value = "deletequestion.jsp" var = "deleteque">
		<c:param name = "qid" value = "${qid}"/>
		<c:param name = "question" value = "${question}"/>
		<c:param name = "answer" value = "${answer}"/>
	
	</c:url>
	
	<a href = "${deleteque}">
		<button class= "manbtn" type = "submit" name = "delete" value = "Delete">Delete</button>
	</a>
	</td>
	
	</tr>
	
	</c:forEach>
	
	</table> 

   
			
      

      </div>
  
</section>

</body>



</html>






	
	
	
	
	
	
	
	
	
	
	
	

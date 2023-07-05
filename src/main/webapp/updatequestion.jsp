<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/updateque.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>

<meta charset="ISO-8859-1">
<title>Update Question</title>
</head>
<body>

	<%
		String qid = request.getParameter("qid");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
	%>
	
	
	
	<body>


    

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
	
   
			<form class = "con" action = "editque" method = "post">
			
	
		
			
			<label style = "font-size:30px;"for="id"><b>Question ID</b></label>
			<input type = "text" name = "qid" value = "<%= qid %>" readonly>
		
		
		
			<label for="question"><b>Question</b></label>
			<input type = "text" name = "question" value = "<%= question %>">
		
		
		
			<label for="answer"><b>Answer</b></label>
			<input type = "text" name = "answer" value = "<%= answer %>">
		
		
	
	
		<br>
		
		<button class= "manbtn" type = "submit" name = "submit" value = "Update Question">Update Question</button>

	</form>
      

      </div>
  
</section>

</body>
	
	
	
	
	
	
	
	
</body>
</html>
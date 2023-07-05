<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Questionnaire</title>
</head>
<body>

	<table>
	<c:forEach var="que" items="${questionS}">
	
	<c:set var = "qid" value = "${que.qid}" />
	<c:set var = "qid" value = "${que.question}" />
	<c:set var = "qid" value = "${que.answer}" />
	
	<tr>
	<td>Question ID - </td>
	<td>${que.qid}</td>
	</tr>
	
	<tr>
	<td>Question - </td>
	<td>${que.question}</td>
	</tr>
	
	<tr>
	<td>Answer - </td>
	<td>${que.answer}</td>
	</tr> 
	
	</c:forEach>
	
	</table> 
	
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register From</title>
<link rel="stylesheet" href="css/regcus	.css">

<script>
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }
</script>

</head>
<body>

	<div class="form-container">

   <form action="CustomerRegisterServlet" method="post">
      <h3>Registation</h3>

      

      <input type="text" name="name" required placeholder="Enter your Name">
      
	<input type="text" name="phone_number" placeholder="Enter your Phone Number">
	<input type="email" name="email" required placeholder="Enter your Email">
	
		<select name="type">
         <option value="Seller">Seller</option>
         <option value="Buyer">Buyer</option>
        </select>
      <input type="text" name="password" required placeholder="Enter your Password"><br>
      <br>
      

      <button type="submit" name="submit" value="Register me" class="manbtn">Register</button>


      <p>Already have an Account?  <a href="login.jsp">Login</a></p>
   </form>

</div>

</body>
</html>
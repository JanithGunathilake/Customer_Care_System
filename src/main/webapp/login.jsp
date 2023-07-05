<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/log.css">
<meta charset="ISO-8859-1">
<title>Login</title>
<style type = "text/css">
	font-family : Hind SemiBold;
</style>
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

   <form action = "log" method = "post">
      <h3>Login</h3>

      

      
	  <input type = "email" name = "email" required placeholder = "Enter Your Email">
      
      <input type = "password" name = "password" required placeholder = "Enter Your Password" id = "myInput">
      <input type="checkbox" style="margin-bottom: 40px; margin-left: -525px; cursor: pointer;" onclick="myFunction()"> 
      <label style="margin-bottom: 40px; margin-left: -215px">Show Password</label>
          <p style="margin-top: -10px;"><a href="stafflogin.jsp" class="text">>> For Staff Login Click Here...</a></p>    
      
      <button type="submit" name="submit" value="Login" class="manbtn">Login</button>
      

      <p>Not a member? Create your account for FREE!
         <br>
        <a href="registercustomer.jsp">>> Register</a></p>

   </form>

</div>



	
	
	
	
</body>
</html>
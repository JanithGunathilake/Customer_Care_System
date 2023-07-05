<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/stafflog.css">
<meta charset="ISO-8859-1">
<title>Staff Login</title>
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

   <form action = "StaffLoginServlet" method = "post">
      <h3>Login</h3>

      

      
	  <input type = "email" name = "email" required placeholder = "Enter Your Email">
      
      <input type = "password" name = "password" required placeholder = "Enter Your Password" id = "myInput">
      <input type="checkbox" style="margin-bottom: 40px; margin-left: -525px; cursor: pointer;" onclick="myFunction()"> 
      <label style="margin-bottom: 40px; margin-left: -215px">Show Password</label>
          <p style="margin-top: -10px;"><a href="login.jsp" class="text">>> For Customer Login Click Here...</a></p>    
      <br>
      <button type="submit" name="submit" value="Login" class="manbtn">Login</button>
      

  

   </form>

</div>

</body>
</html>
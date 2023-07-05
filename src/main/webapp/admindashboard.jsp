<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/dashbord.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>

<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
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
   <li><form action = "usersmanage.jsp" method = "post"><i class="fas fa-user"></i><button class="hehehe" type="submit">Manage Users</button></form></li>
   </ul>
</div>

</section>

<section id="page">

   

   

      

      <div class="display">
         <table>
           
               <tr id="tableheadrow">
                  <td>Name</td>
                  <td>Title</td>
                  <td>Status</td>
                  <td>Position</td>
                  
               </tr>
            
            <tbody>

	 <tr>
                  <td class="staff">

                     <img src="images/jk.jpg" alt="">
                     <div class="description">
                        <h5>Janith Gunathilaka</h5>
                        <p>janithkavinda@gmail.com</p>
                     </div>
                  </td>

                  <td class="position">
                     <h5>Founder</h5>
                     <p>Customer Care System</p>
                  </td>

                  <td class="status">
                     <p>Active</p>
                  </td>

                  <td class="respo">
                     <p>Owner</p>
                  </td>
               </tr>


               <tr>
                  <td class="staff">

                     <img src="images/ss.jpg" alt="">
                     <div class="description">
                        <h5>Sansala Silva</h5>
                        <p>sansalasilva@gmail.com</p>
                     </div>
                  </td>

                  <td class="position">
                     <h5>System Administrator</h5>
                     <p>Customer Care System</p>
                  </td>

                  <td class="status">
                     <p>Active</p>
                  </td>

                  <td class="respo">
                     <p>Employee</p>
                  </td>

                

               </tr>
               <tr>
                  <td class="staff">

                     <img src="images/rs.jpg" alt="">
                     <div class="description">
                        <h5>Ranush Sanjula</h5>
                        <p>ranushsanjula@gmail.com</p>
                     </div>
                  </td>

                  <td class="position">
                     <h5>Agent</h5>
                     <p>Customer Care System</p>
                  </td>

                  <td class="status">
                     <p>Active</p>
                  </td>

                  <td class="respo">
                     <p>Employee</p>
                  </td>

                 

               </tr>
               <tr>
                  <td class="staff">

                     <img src="images/bs.jpg" alt="">
                     <div class="description">
                        <h5>Bavantha Senanayake</h5>
                        <p>bavantha@gmail.com</p>
                     </div>
                  </td>

                  <td class="position">
                     <h5>Genaral Manager</h5>
                     <p>Customer Care System</p>
                  </td>

                  <td class="status">
                     <p>Active</p>
                  </td>

                  <td class="respo">
                     <p>Employee</p>
                  </td>

                

               </tr>
              

            <tbody>
         </table>
      </div>
  
</section>

</body>
</html>
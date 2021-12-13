<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../includes/adminNav.jsp" />  
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../resources/styles/productadminstyle.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fuzzy+Bubbles&family=Ubuntu:wght@300;500&display=swap" rel="stylesheet">
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>View Users</title>
  </head>
  
  <body>
  
  
  	<!-- Page Content  -->
        
    		<h1>Admin Dashboard</h1>
			<a href="/admin/adduser"><button type="button" class="btn btn-success">Add User</button>
			</a>
			<br>
			<hr>
		    <div class="table-responsive">
		        <table class="content-table table" id="table-id">
		            <thead>
		                <tr>
		                    
		                    <th>User Id </th>
		                    <th>User Name</th>
		                    <th>Email</th>
		                    <th>Password</th>
		                    <th>Phone Number</th>
		                    <th>Address</th>
		                    
		                </tr>
		            </thead>
		                <tbody>
		                	 <c:forEach var="user" items="${users}" >
					            <tr>
					            <td>${user.userid}</td>
					            <td>${user.username}</td>
					            <td>${user.email}</td>
					            <td>${user.password}</td>
					            <td>${user.phoneNumber}</td>
					            <td>${user.address}</td>
					            
					            <td class="d-flex">
					            	<a href="/admin/edituser?userid=${user.userid}" class="btn btn-warning btn-sm">EDIT</a>
					            	<a href="/admin/deleteuser-${user.userid}-user" class="btn btn-danger ml-2 btn-sm">DELETE</a>
					            </td>
					            </tr>
		        			</c:forEach>
		                </tbody>
		                    
		                </table> 
		            </div>
  </body>	
  </html>
	    
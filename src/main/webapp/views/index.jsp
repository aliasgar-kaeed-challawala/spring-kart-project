<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <link rel="stylesheet" type="text/css" href="../resources/styles/registrationstyle.css" >
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap" rel="stylesheet"> -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;500&display=swap" rel="stylesheet">
   
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>User Registration</title>

    <!-- <style>
      body {
        color: #ff0000;
      }
    </style> -->
  </head>

  <body>
      <center>
        <div class="card d-flex justify-content-center form-card" style="width: 18rem;">   
            <div class="card-body">
              <h3 class="card-title form-head">Register</h3>
              
               <form:form method="POST" modelAttribute="user">
               
                <label for="username" class="form-element" >Username</label><br>
                 <form:input placeholder="Enter username" type="text" class="form-element form-input-elt" path="username" id="username"/><br>
                <form:errors path="username" cssClass="error"/>
                
                
                
               
                
                <label for="password" class="form-element" >Password</label><br>
                <form:input type="password" placeholder="Enter password" class="form-element form-input-elt" path="password" id="password"/><br>
                <form:errors path="password" cssClass="error"/>
                
                
                <label for="email" class="form-element" >Email</label><br>
                <form:input type="email" placeholder="Enter email" class="form-element form-input-elt" path="email" id="email"/><br>
                <form:errors path="email" cssClass="error"/>
               
                
                <label for="address" class="form-element" >Address</label><br>
                <form:input type="text" placeholder="Enter address" class="form-element form-input-elt" path="address" id="address"/><br>
                <form:errors path="address" cssClass="error"/>
                
               
                <label for="phoneNumber" class="form-element">Phone number:</label><br>
                <form:input placeholder="Enter phone number" class="form-element form-input-elt" path="phoneNumber" id="phoneNumber"/><br>
                <form:errors path="phoneNumber" cssClass="error"/>
                
                
                <input type="submit" value="Sign me up!!" class="btn button btn-outline-success" >
          
              </form:form>
              <p>Already a user? <a href="/login">Sign In</a></p>
            </div>
          </div>

      </center>

    
   
    
  </body>
</html>
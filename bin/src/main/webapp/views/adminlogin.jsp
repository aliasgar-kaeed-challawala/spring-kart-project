<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <link rel="stylesheet" type="text/css" href="../resources/styles/loginstyle.css" >
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
              <h3 class="card-title form-head">Admin Login</h3>
              <form  method="POST">
                <label for="username" class="form-element" >Username</label><br>
                <input type="text" placeholder="Enter username" class="form-element form-input-elt" name="username" id="username" /><br>
                <label for="password" class="form-element" >Password</label><br>
                <input type="password"  placeholder="Enter password" class="form-element form-input-elt" name="password" id="password" /><br>
                
                <input type="submit" value="Sign in" class="btn button btn-outline-success" >
          
              </form>
              
            </div>
          </div>

      </center>

    
   
    
  </body>
</html>
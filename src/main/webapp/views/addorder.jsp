<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <link rel="stylesheet" type="text/css" href="../resources/styles/addproductstyle.css" >
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
    <title>Add Order</title>

    <style>
      .errors {
        color: red;
      }
    </style>
  </head>

  <body>
      <center>
        <div class="card d-flex justify-content-center form-card" style="width: 18rem;">   
            <div class="card-body">
              <h3 class="card-title form-head">Add order</h3>
              
               <form:form method="POST" modelAttribute="bill">
               
                <label for="username" class="form-element" >Username</label><br>
                 <form:input placeholder="Enter username" type="text" class="form-element form-input-elt" path="username" id="username" required="required"/><br>
                <form:errors path="username" cssClass="error"/>
                
                
                <label for="userid" class="form-element" >User Id</label><br>
                <form:input type="number" placeholder="Enter User ID" class="form-element form-input-elt" path="userid" id="userid" required="required"/><br>
                <form:errors path="userid" cssClass="error"/>
                
                
                <label for="billdate" class="form-element" >Order Date</label><br>
                <form:input type="date" placeholder="Enter Bill Date" class="form-element form-input-elt" path="billdate" id="billdate" required="required"/><br>
                <form:errors path="billdate" cssClass="error"/>
               
                
                <label for="billamount" class="form-element" >Bill Amount</label><br>
                <form:input type="number" placeholder="Enter Bill Amount" class="form-element form-input-elt" path="total" id="billamount" required="required"/><br>
                <form:errors path="total" cssClass="error"/>
                
               
                
                
                
                <input type="submit" value="Add Order" class="btn button btn-outline-success" >
          
              </form:form>
              
            </div>
          </div>

      </center>
      
 </body>
 </html>
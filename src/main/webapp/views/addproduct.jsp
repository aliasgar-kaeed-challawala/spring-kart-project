<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <jsp:include page="../includes/adminNav.jsp" />   --%>
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
    <title>Add Product</title>

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
              
               <form:form method="POST" modelAttribute="product">
               
                <label for="productname" class="form-element" >Product name</label><br>
                 <form:input placeholder="Enter product name" type="text" class="form-element form-input-elt" path="productname" id="productname" required="true"/><br>
                <form:errors path="productname" cssClass="error"/>
                
                
                
               
                
                <label for="brand" class="form-element" >Brand</label><br>
                <form:input type="text" placeholder="Enter product brand" class="form-element form-input-elt" path="brand" id="brand" required="true"/><br>
                <form:errors path="brand" cssClass="error"/>
                
                
                <label for="category" class="form-element" >Select Category</label><br>
                <form:select id="category" name="category" path="category"><br>
                	 <form:option value="Television" label="Television"/>  
        			 <form:option value="Mobile" label="Mobile"/>  
       				 <form:option value="Laptop" label="Laptop"/>  
       				 <form:option value="Video Games" label="Video Games"/>  
       				 <form:option value="Cameras" label="Cameras"/>
       				 <form:option value="Headphones" label="Headphones"/>
       				 <form:option value="Smart Watches" label="Smart Watches"/>      
       				 <form:option value="Tablets" label="Tablets"/>  
 				</form:select>
                <form:errors path="category" cssClass="error"/>
               
                
                <label for="description" class="form-element" >Description</label><br>
                <form:input type="text" placeholder="Enter Description" class="form-element form-input-elt" path="description" id="description" required="true"/><br>
                <form:errors path="description" cssClass="error"/>
                
               
                <label for="image" class="form-element">Image URL</label><br>
                <form:input placeholder="Enter Image URL" class="form-element form-input-elt" path="image" id="image" required="true"/><br>
                <form:errors path="image" cssClass="error"/>
                
                <label for="price" class="form-element" >Price</label><br>
                <form:input type="number" placeholder="Enter Price" class="form-element form-input-elt" path="price" id="price" required="true"/><br>
                <form:errors path="price" cssClass="error"/>
                
                <label for="stock" class="form-element" >Stock</label><br>
                <form:input type="number" placeholder="Enter Stock" class="form-element form-input-elt" path="stock" id="stock" required="true"/><br>
                <form:errors path="stock" cssClass="error"/>
                
                
                <input type="submit" value="Add product" class="btn button btn-outline-success" >
          
              </form:form>
              
            </div>
          </div>

      </center>

    
   
    
  </body>
</html>
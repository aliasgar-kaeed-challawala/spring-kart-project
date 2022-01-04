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
    <title>View Products</title>
  </head>
  
  <body>
  
  
  	<!-- Page Content  -->
        
			<span><h1>All Products</h1></span>
			<br>
			<hr>

			<a href="/admin/addproduct"><button type="button" class="btn btn-success" style="margin-left:10px">Add Product</button>
			</a>
			<br>
			<hr>
		    <div class="table-responsive">
		        <table class="content-table table" id="table-id" style="margin-left:10px">
		            <thead>
		                <tr>
		                    
		                    <th>Product Id </th>
		                    <th>Brand</th>
		                    <th>Category</th>
		                    <th>Description</th>
		                    <th>Image</th>
		                    <th>Price</th>
		                    <th>Product Name</th>
		                    <th>Stock</th>
		                </tr>
		            </thead>
		                <tbody>
		                	 <c:forEach var="product" items="${products}" >
					            <tr>
					            <td>${product.productid}</td>
					            <td>${product.brand}</td>
					            <td>${product.category}</td>
					            <td>${product.description}</td>
					            <td><img src="${product.image}" class="product-img"></td>
					            <td>${product.price}</td>
					            <td>${product.productname}</td>
					            <td>${product.stock}</td>
					            <td class="d-flex">
					            	<a href="/admin/editproduct?productid=${product.productid}" style="margin-right:10px" class="btn btn-warning btn-sm">EDIT</a>
					            	<a href="/admin/deleteproduct-${product.productid}-product" class="btn btn-danger ml-2 btn-sm">DELETE</a>
					            </td>
					            </tr>
		        			</c:forEach>
		                </tbody>
		                    
		                </table> 
		            </div>
  </body>	
  </html>
	    
		            
		           
	

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Products By Category</title>
<!-- Local Stylesheet -->
<!-- <link rel="stylesheet" type="text/css"
	href="../resources/css/admin-styles.css"> -->
<!-- Font Awesome CDN -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
</head>
<body>
	
	<section id="movie-cards">
		<div class="container-fluid">
			<!-- <div style="padding: 2rem;">
				<h1>List of Products</h1>
			</div> -->
			<div class="d-flex justify-content-between" style="padding: 2rem;">
				<h1>List of Products</h1>
				<div class="d-flex justify-content-between">
				<a href="/cart"><button type="button" class="btn btn-outline-info" style="margin-right:5px;"> My Cart</button></a>
				<a href="/"><button type="button" class="btn btn-outline-primary">Home</button></a>
				</div>
			</div>
			
			<!-- Start of Deck 1 -->
			<!-- For loop len(list)%3 -->
			<div class="row card-deck-spacing">
				<!-- For loop : 3 times-->	
				<c:forEach items="${products}" var="product">
					<div class="col-lg-4 p-3 d-flex align-items-stretch">
						<div class="card" height="100" width="50">
							<img src="${product.image}" class="card-img-top">
							<div class="card-body">
								<h6 class="card-title">${product.productname.toUpperCase()}</h6>
								<b><p>&#8377;${product.price}</p> </b>
								<div class="badge-div">
									<span class="badge  badge-info">${product.category.toUpperCase()}</span>
									<span class="badge badge-success">${product.brand.toUpperCase()}</span>
								</div>

								<p class="card-text">${product.description}</p>
								<br>
								<form:form  action="/addtocart?productid=${product.productid}" method="post">
								Quantity:<input type="number" value="1" name="quantity"/>
								
							</div>
							<div class="card-footer">
								<!-- <a class="btn btn-dark btn-block btn-login"
									style="color: #ffffff;" -->
									<%-- href="/addtocart?productid=${product.productid}" role="button">Add to cart</a> --%>
								
								<input class="btn btn-dark btn-block btn-login" style="color: #ffffff;" type="submit" value="Add to Cart">
						</form:form>   
							</div>
							

						</div>
					</div>
				</c:forEach>

			</div>
		
		</div>
		
	</section>
</body>
</html>	
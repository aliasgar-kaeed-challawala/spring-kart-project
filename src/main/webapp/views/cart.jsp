<%-- <%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.example.model.ProductDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>

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
	
	<section>
		<div class="container">
            <div class="row">
                <div class="col">
                    <h4 class="d-flex justify-content-between align-items-center" style="margin-top:30px;">
                        <span class="text-secondary">Your cart</span>
                        <span class="badge bg-secondary rounded-pill" style="color:white;">${cart.size()}</span>
                    </h4>
                    <ul class="list-group mb-3">
                        <%
                            ArrayList<ProductDTO> products = (ArrayList<ProductDTO>) request.getSession().getAttribute("cart");

                            double Total = 0.0;
                            
                            for (ProductDTO product : products){	
                                Total += product.getPrice();
                                
                                    out.println("<li class=\"list-group-item d-flex justify-content-between lh-sm\">" +
                                                    "<div>" +
                                                   
                                                    
                                                        "<h6 class=\"my-0\">"+product.getProductname()+"</h6>" +
                                                        "<small class=\"text-muted\">"+product.getBrand()+"</small>" +
                                                        "<br>"+
                                                         "<a href=/removecartitem?productid="+product.getProductid()+"><button type=\"button\" style=\"margin:20px 10px;\" class=\"btn btn-sm btn-outline-danger\">Remove item</button></a>"+
                                                    "</div>" +
                                                    "<span class=\"text-muted\">&#8377;"+String.format("%.2f",product.getPrice())+"</span>" +
                                                   
                                                "</li>"
                                				                
                                                );
                                
                                
                                
                            }

                            out.println("<li class=\"list-group-item d-flex justify-content-between\">\n" +
                                            "<span>Total (INR)</span>\n" +
                                            "<strong name='amount'>&#8377;"+String.format("%.2f",Total)+"</strong>\n" +
                                            "<input type=\"hidden\" name=\"amount\" value=\""+String.format("%.2f",Total)+"\">"+
                                        "</li>");
                        %>
                    </ul>
                </div>
                
				
	</section>
	<center><a href="/checkout" class="btn btn-outline-secondary">Proceed to checkout</a></center>
</body>
</html>	 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

	<div align="center">	
           <h1 id="pdheading">Your Cart</h1>
           
           <c:set var="inputDisplay" value="1" /> <!-- This same as your request attribute -->
			<c:choose>
			    <c:when test="${cartItems.size() != 0}">
			        
			    
    	   <form method="post" action="checkout" > 
            <table id="cartItems" >
                <tr >
                <th>S. No </th>
                <th>Product Name</th>
                <th>Price</th>
                <th>Amount</th>
                <th>Quantity</th>
                <th colspan="2" >ACTION</th>
                 </tr>
                
                <c:forEach var="cartItem" items="${cartItems}" varStatus="status">
                <tr>
                	<td>
                	<input type="checkbox" value="${cartItem.cartItemId}" name="proceedToPayment">
                	</td>
                    <td>${status.index + 1}</td>
                    <td>${cartItem.productid.productname}</td>
                    <td>${cartItem.productid.price}</td>
                    <td>
	             	<input type="number" value="${cartItem.quantity}" name="quantity" required>
	             	
	             	</td>
                    
                    <td>${cartItem.productid.price * cartItem.quantity}</td>
                    <td>    
                        <a class="actionlink" href="/getProduct/${cartItem.productid.productid}">View</a>
                    </td>
                    <td>
                    	<a class="actionlink" href="/removeCartItem/${cartItem.cartItemId}">Remove</a>
                    </td>
                    <%-- <td>
                    	<img style="object-fit: cover;" src="${cartItem.productId.imageUrl}" width="100" height="100"/>
                    </td>   --%>       
                </tr>
                </c:forEach>             
            </table>
            
            <input type="submit" name="submit" value="Proceed to checkout">
            </form>
            
            </c:when>
			    <c:otherwise>
			        <h2>Your Cart is Empty</h2>
			    </c:otherwise>      
			</c:choose>
        </div>

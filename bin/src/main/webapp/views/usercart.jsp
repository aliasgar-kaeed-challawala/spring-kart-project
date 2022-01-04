<%@page import="java.util.ArrayList"%>
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
</html>	
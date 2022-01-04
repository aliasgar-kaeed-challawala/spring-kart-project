<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
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

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Orders</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</head>

<body>
    <center>
        <h1 class="fs-2" style="margin-top: 20px;">My Orders</h1>
    </center>
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />
    <c:set var="inputDisplay" value="1" /> <!-- This same as your request attribute -->
	<c:choose>
		<c:when test="${bills.size() != 0}">
		<%-- <form method="post" action="checkout" > --%>
    	<div class="container">
        <div class="row">
            <div class="col">
                <h4 class="d-flex justify-content-between align-items-center" style="margin-top:30px;">
                    <span><a href="/logout"><button type="button" class="btn btn-outline-warning">Logout</button></a></span>
                    <span class="badge bg-secondary rounded-pill" style="color:white;">${bills.size()}</span>
                </h4>
                 <ul class="list-group mb-3"> 
                <c:forEach var="bill" items="${bills}" varStatus="status">
              
                    <li class="list-group-item d-flex justify-content-between align-items-center lh-sm\">
                        <div>
                            <h6 class="my-0">Bill Id : ${bill.billid}</h6>
                            <small class="text-muted"></small>
                            <br>
                            <p class="my-0">Bill Date: ${bill.billdate}</p>
                            <a href="/viewdetails?billid=${bill.billid}" ><button type="button" style="margin:20px 10px;"
                                    class="btn btn-sm btn-outline-info">View details
                                    </button></a> 
                            
                        </div>
                        <span class="text-muted">&#8377;${bill.total}</span>
						
                       <%--  <c:set var="total" value="${total+${cartItem.product.price*cartItem.quantity }}"/> --%>
                     
                    </li>
                    </c:forEach>  
           
                  
                    
                </ul>
                <%-- </form> --%>
            </div>
        </div>
            
       
       </c:when>
        <c:otherwise>
			        <center><h2 style="color:#1982c4;margin-top:50px">No orders placed</h2>
			        <br>
			        <a href="/"><button type="button" class="btn btn-outline-secondary">Go back to home</button></a>
			        </center>
			        
			    </c:otherwise>      
			</c:choose>
</body>

</html>

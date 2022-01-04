<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</head>
<body>
		  <%-- <c:forEach var="bill" items="${billitems}">
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between align-items-center lh-sm\">
                        <div>
                            <h6 class="my-0">Bill Item Id : ${bill.billItemNo}</h6>
                            <small class="text-muted"></small>
                            <br>
                            <p class="my-0">Product Name: ${bill.productid.productname}</p>
                            <p class="my-0">Quantity: ${bill.quantity}</p>
                            <p class="my-0">Price: ${bill.productid.price}</p>
                        </div>
                        <span class="text-muted">&#8377;${bill.total}</span>
						
                        <c:set var="total" value="${total+${cartItem.product.price*cartItem.quantity }}"/>
                     
                    </li>
                    </c:forEach>    --%>
                    
                    <%-- <% 
                    	LinkedHashSet items = PageContext.findAttribute("billitems");
                    	Iterator itr = iterator();
 
        				while (itr.hasNext())
            			System.out.print(itr.next() + ", ");
                    	
                    %> --%>
                    <%-- <c:forEach items="${billitems}" var="bill">
                    	${bill.productid}<br>
                    </c:forEach> --%>
       <center>
        <h1 class="fs-2" style="margin-top: 20px;">Order Details</h1>
    </center>
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />
    <c:set var="inputDisplay" value="1" /> <!-- This same as your request attribute -->
	
		<%-- <form method="post" action="checkout" > --%>
    	<div class="container">
        <div class="row">
            <div class="col">
                <h4 class="d-flex justify-content-between align-items-center" style="margin-top:30px;">
                    <span><a href="/logout"><button type="button" class="btn btn-outline-warning">Logout</button></a></span>
                    <span class="badge bg-secondary rounded-pill" style="color:white;">${bills.size()}</span>
                </h4>
                
                <c:forEach var="bill" items="${billitems}" varStatus="status">
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between align-items-center lh-sm\">
                        <%-- <div>
                            <h6 class="my-0">Bill Id : ${bill.billid}</h6>
                            <small class="text-muted"></small>
                            <br>
                            <p class="my-0">Bill Date: ${bill.billdate}</p>
                            <a href="/viewdetails?billid=${bill.billid}" ><button type="button" style="margin:20px 10px;"
                                    class="btn btn-sm btn-outline-info">View details
                                    </button></a> 
                            
                        </div> --%>
                        <div>
                            <h6 class="my-0">Bill Item Id : ${bill.billItemNo}</h6>
                            <small class="text-muted"></small>
                            <br>
                            <p class="my-0">Product Name: ${bill.productid.productname}</p>
                            <p class="my-0">Quantity: ${bill.quantity}</p>
                            <p class="my-0">Price: ${bill.productid.price}</p>
                        </div>
                        <span class="text-muted">&#8377;${bill.price}</span>
						
                       <%--  <c:set var="total" value="${total+${cartItem.product.price*cartItem.quantity }}"/> --%>
                     
                    </li>
                      
                    </c:forEach>  
                    <div class="pt-3 d-flex justify-content-end">
                   <b><span class="font-weight-bold">&#8377;${total}</span></b> 
                    </div>
                    
           
                  
                    
                </ul>
                <hr>
                <%-- </form> --%>
            </div>
        </div>
            
       
      
</body>
</html>
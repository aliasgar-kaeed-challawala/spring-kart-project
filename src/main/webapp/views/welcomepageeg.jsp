<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
   <link rel="stylesheet" type="text/css" href="../resources/styles/styles1.css" >

<!-- <title>Products By Category</title> -->
<!-- Local Stylesheet -->
<!-- <link rel="stylesheet" type="text/css"
	href="../resources/css/admin-styles.css"> -->
<!-- Font Awesome CDN -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<!-- Bootstrap CDN -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

<!-- ui style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
</head>
<body >
<header class="section-header">
<section class="header-main border-bottom" style="padding: 20px">
	<!-- <div class="container"> -->
    <div class="row" >
	<div class="col-lg-3 col-sm-4 col-12">
	<div class="brand-wrap">
		<img class="logo" src="../resources/images/logo.jpg" width="180" height="40">
	</div> <!-- brand-wrap.// -->
	</div>
	 <div class="col-lg-4 col-xl-5 col-sm-8 col-9">
		<form action="#" class="search">
			<div class="input-group w-100">
			    <input type="text" class="form-control" style="width:55%;" placeholder="Search">
			    <div class="input-group-append">
			      <button class="btn btn-primary" type="submit">
			        <i class="fa fa-search"></i>
			      </button>
			    </div>
		    </div>
		</form> <!-- search-wrap .end// -->
	</div> <!-- col.// --> 
	<div class="col-lg-5 col-xl-4 col-sm-12">
		<div class="widgets-wrap float-md-right">
				<span><a class="nav-link" href="/cart">Cart</a></span>
				<sec:authorize access="isAnonymous()">
    				<span><a href="/login">Login</a></span>
				</sec:authorize>
					<sec:authorize access="isAuthenticated()">
    				<span><a href="/logout">Logout</a></span>
			</sec:authorize>
			  <!-- widget-header .// -->
		</div> <!-- widgets-wrap.// -->
	</div> <!-- col.// -->
</div><!-- row.// -->
	<!-- </div>  --><!-- container.// -->
</section> <!-- header-main .// -->
</header> <!-- section-header.// -->

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../resources/images/phonecarousel.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
 

  <section class="service_section" style="margin-top: 50px;margin-bottom: 50px;margin-left: 30px;margin-right: 30px;background-color: white;padding-top: 20px;padding-bottom: 10px;padding-left: 20px">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../resources/images/3.jpg" alt="fd"/>
            </div>
            <div class="detail-box">
              <h5>
                Fast Delivery
              </h5>
              <p>
                variations of passages of Lorem Ipsum available
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../resources/images/4.jpg" alt="fs">
            </div>
            <div class="detail-box">
              <h5>
                Free Shipping
              </h5>
              <p>
                variations of passages of Lorem Ipsum available
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../resources/images/1.jpg" alt="bq">
            </div>
            <div class="detail-box">
              <h5>
                Best Quality
              </h5>
              <p>
                variations of passages of Lorem Ipsum available
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../resources/images/2.jpg" alt="cs">
            </div>
            <div class="detail-box">
              <h5>
                24x7 Customer support
              </h5>
              <p>
                variations of passages of Lorem Ipsum available
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <div style="text-align:center;margin-top:100px;margin-bottom: 50px">
  <h2>LIST OF PRODUCTS</h2>
  </div>
  
  
  <div class="card-deck" style="margin-left: 10px;margin-right: 10px">
  <div class="card"style="border: 0;border-radius: 10px;">
  <div class="front">
    <img src="../resources/images/iphone.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">PHONES</h5>
      </div>
      <!-- <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
    </div>
   <div class="back"><a href="/user/productsbycategory?category=Mobile"><button class="btn btn-dark me-2" >view products</button></a></div>
  </div>
  <div class="card" style="border: 0;border-radius: 10px;">
  <div class="front">
    <img src="../resources/images/legion.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">LAPTOPS</h5>
      <!-- <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
    </div>
    </div>
    <div class="back"><a href="/user/productsbycategory?category=Laptop"><button class="btn btn-dark me-2" >view products</button></a></div>
  </div>
  <div class="card" style="border: 0;border-radius: 10px;">
   <div class="front">
    <img src="../resources/images/bravia.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">TVs</h5>
      <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
      </div>
      </div>
      <div class="back"><a href="/user/productsbycategory?category=Television"><button class="btn btn-dark me-2" >view products</button></a></div>
  </div>
  <div class="card" style="border: 0;border-radius: 10px;">
  <div class="front">
  <img src="../resources/images/videogameps5.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">GAMING CONSOLES </h5>
     <!--  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
    </div> 
    </div>
    
    <div class="back"><a href="/user/productsbycategory?category=Video Games"><button class="btn btn-dark me-2" >view products</button></a></div>
</div>
</div>


 
  
   <div class="card-deck" style="margin-left: 10px;margin-right: 10px;margin-top: 100px;margin-bottom: 20px">
  <div class="card" style="border: 0; border-radius: 10px;" >
  <div class="front">
    <img src="../resources/images/fossil.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">SMART WATCHES</h5>
      <!-- <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
    </div>
    </div>
      <div class="back"><a href="/user/productsbycategory?category=Smart Watches"><button class="btn btn-dark me-2" >view products</button></a></div>
  </div>
  <div class="card" style="border: 0; border-radius: 10px;">
  <div class="front">
    <img src="../resources/images/ipad.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">TABLETS</h5>
     <!--  <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
    </div>
    </div>
     <div class="back"><a href="/user/productsbycategory?category=Tablets"><button class="btn btn-dark me-2" >view products</button></a></div>
  </div>
  <div class="card" style="border: 0; border-radius: 10px;">
  <div class="front">
    <img src="../resources/images/canon.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">DIGITAL CAMERAS</h5>
      <!-- <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
    </div>
    </div>
     <div class="back"><a href="/user/productsbycategory?category=Cameras"><button class="btn btn-dark me-2" >view products</button></a></div>
  </div>
  <div class="card" style="border: 0; border-radius: 10px;">
  <div class="front">
    <img src="../resources/images/sonytws.jpg" class="card-img-top" alt="...">
    <div class="card-body" style="text-align:center;">
      <h5 class="card-title">HEADPHONES</h5>
     <!--  <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
    </div>
    </div>
      <div class="back"><a href="/user/productsbycategory?category=Headphones"><button class="btn btn-dark me-2" >view products</button></a></div>
  </div>
</div> 


 <!-- <div class="card-deck" style="margin-left: 10px;margin-right: 10px;margin-top: 20px;margin-bottom: 20px">
  <div class="card" style="border: 0; border-radius: 10px;" >
 
    <img src="../resources/images/fossil.jpg" class="card-img-top" alt="...">
  </div>
  <div class="card" style="border: 0; border-radius: 10px;">
    <img src="../resources/images/ipad.jpg" class="card-img-top" alt="...">
  </div>
  <div class="card" style="border: 0; border-radius: 10px;">
    <img src="../resources/images/canon.jpg" class="card-img-top" alt="...">
  </div>
  <div class="card" style="border: 0; border-radius: 10px;">
    <img src="../resources/images/sonytws.jpg" class="card-img-top" alt="...">
  </div>
</div> 
 -->
 <section class="logocarousel"style="padding-bottom: 150px;margin-left: 20px;margin-right: 20px;background-color: #f8f9fa;">
 <div class="text-center" style="margin-left: 20px;margin-right: 20px; margin-top: 100px; margin-bottom: 40px; border-radius: 10px;padding-top: 20px" ><h2>POPULAR BRANDS</h2></div>

<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

  <!--Controls-->
 <!--  <div class="controls-bottom">
    <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fas fa-chevron-left"></i></a>
    <a class="btn-floating" href="#multi-item-example" data-slide="next"><i
        class="fas fa-chevron-right"></i></a>
  </div> -->
  <!--/.Controls-->

  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
    <li data-target="#multi-item-example" data-slide-to="1"></li>
    
  </ol>
  <!--/.Indicators-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active" style="margin-left: 20px">

      <div class="col-md-3" style="float:left">
       <div class="card1 mb-2"style=" border: 0; border-radius: 10px;">
          <img class="card1-img-top" height="100px" width="250px"
            src="../resources/images/fossil-logo.jpg" alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3" style="float:left">
        <div class="card1 mb-2"style=" border: 0; border-radius: 10px;">
          <img class="card1-img-top" height="100px" width="250px"
            src="../resources/images/apple-logo.png" alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3" style="float:left">
        <div class="card1 mb-2"style=" border: 0; border-radius: 10px;">
          <img class="card1-img-top" height="100px" width="250px"
            src="../resources/images/boat-logo.jpg" alt="Card image cap">
        </div>
      </div>
      
       <div class="col-md-3" style="float:left">
       <div class="card1 mb-2"style=" border: 0; border-radius: 10px;">
          <img class="card1-img-top" height="100px" width="250px"
            src="../resources/images/bose-logo.png" alt="Card image cap">
        </div>
      </div>

    </div>
    <!--/.First slide-->

    <!--Second slide-->
    <div class="carousel-item">

      <div class="col-md-3" style="float:left;">
        <div class="card mb-2 "style= "border: 0; border-radius: 10px;">
          <img class="card-img-top" height="100px" width="250px"
            src="../resources/images/nikon-logo.png" alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3" style="float:left;">
        <div class="card1 mb-2" style=" border: 0; border-radius: 10px;">
          <img class="card1-img-top" height="100px" width="250px"
            src="../resources/images/OnePlus_Logo.png" alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3" style="float:left;">
        <div class="card1 mb-2"style=" border: 0; border-radius: 10px;">
          <img class="card1-img-top" height="100px" width="250px"
            src="../resources/images/ps-logo.png" alt="Card image cap">
        </div>
      </div>
      
      <div class="col-md-3" style="float:left">
        <div class="card1 mb-2" style=" border: 0; border-radius: 10px;">
          <img class="card1-img-top" height="100px" width="250px"
            src="../resources/images/samsung-logo.jpg" alt="Card image cap">
        </div>
      </div>

    </div>
    <!--/.Second slide-->

   

  </div>
  <!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->
</section>










<footer class="section-footer border-top" style="margin-top: 150px;background-color: #eee">
	<div class="container">
		<section class="footer-copyright border-top">
				<p class="float-left text-muted"> © 2021 Company  All rights resetved </p>
				<p target="_blank" class="float-right text-muted">
					<a href="#">Privacy &amp; Cookies</a> &nbsp;   &nbsp;
					<a href="#">Accessibility</a>
				</p>
		</section>
	</div><!-- //container -->
</footer>

</body>
</html>
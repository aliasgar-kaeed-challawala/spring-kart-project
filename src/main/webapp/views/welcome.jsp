<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 --%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <link rel="stylesheet" type="text/css" href="../resources/styles/styles.css" >
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
 <title>welcome to spring kart!!</title>
</head>
<body>
<%-- <nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand">
    <img src="../resources/images/logo.jpg" alt="" width="180" height="70" class="d-inline-block align-text-top">
    </a>
    <form class="d-flex"> for search bar at the end
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
     <form class="d-flex ">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>
 --%>
 <nav class="navbar navbar-light bg-light fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"> <img src="../resources/images/logo.jpg" alt="" width="180" height="40" class="d-inline-block align-text-top"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Welcome</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div> 
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <!-- <li class="nav-item">
            <a class="nav-link active" href="../views/login.jsp">Login</a>
          </li> -->
         	<li class="nav-item active">
                    <a class="nav-link" sec:authorize="isAnonymous()" href="/login">login</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" sec:authorize="isAuthenticated()" href="/logout">logout</a>
                </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Explore
            </a>
            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
              <li><a class="dropdown-item" href="#">Phones</a></li>
              <li><a class="dropdown-item" href="#">Laptops</a></li>
              <!-- <li>
                <hr class="dropdown-divider">
              </li> -->
              <li><a class="dropdown-item" href="#">TV's</a></li>
              <li><a class="dropdown-item" href="#">Video games</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</nav>
<!-- <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="padding: 10px">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../resources/images/phone.jpg" class="img-fluid" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../resources/images/laptop.jpg" class= "img-fluid" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../resources/images/tv.jpg" class="img-fluid" alt="...">
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
</div> -->
<section id="carousel">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
            <div class="carousel-inner">
                <!--Carousel Items-->
                <div class="carousel-item active">
                    <img src="../resources/images/phone.jpg" class="d-block w-100" width="500px" height="545px">
                </div>
                <div class="carousel-item">
                    <img src="../resources/images/laptop.jpg" class="d-block w-100" width="500px" height="545px">
                </div>
                <div class="carousel-item">
                    <img src="../resources/images/tv.jpg" class="d-block w-100" width="500px" height="545px">
                </div>
                <div class="carousel-item">
                    <img src="../resources/images/ps.jpg" class="d-block w-100" width="500px" height="545px">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>

<!-- <ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link disabled"><b>New releases!</b></a>
  </li>
</ul>
<div class="card-group">
  <div class="card text-dark bg-info" >
    <img src="../resources/images/iphone.jpg" class="card-img" alt="...">
    <div class="card-body">
      <h5 class="card-title">Iphone 13 pro</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img src="../resources/images/alienwarelaptop.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Alienware A15</h5>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img src="../resources/images/sonytv.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">PS5 digital</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
</div>
 -->
 <!-- <div class="container text-center" margin-top: 10px; margin-bottom: 100px">    
  <h3 style="padding-top: 50px">New Products</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="../resources/images/iphone.jpg" class="img-responsive" alt="Image">
      <p><b>Iphone 13-pro</b></p>
    </div>
    <div class="col-sm-4"> 
      <img src="../resources/images/alienwarelaptop.jpg" class="img-responsive" alt="Image">
      <p><b>Alienware M15</b></p>    
    </div>
    <div class="col-sm-4"> 
      <img src="../resources/images/sonytv.jpg" class="img-responsive" alt="Image">
      <p><b>Sony Bravia OLED</b></p>    
    </div>
  </div>
  </div> -->
  <div style="background:#ced4da">
  <div style="padding-top:50px;"><center><h3>Product categories</h3></center></div>
  <div class="row" style="margin-top:50px;margin-bottom: 50px">
  <div class="col-lg-3">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="../resources/images/iphone.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Phones</h5>
                                    <!-- Product price-->
                                    <!-- <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00 -->
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/user/productsbycategory?category=Mobile">View products</a></div>
                            </div>
                            </div>
                    </div>
<div class="col-lg-3">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="../resources/images/alienwarelaptop.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Laptops</h5>
                                    <!-- Product price-->
                                    <!-- <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
 -->                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/user/productsbycategory?category=Laptop">View products</a></div>
                            </div>
                        </div>
                    </div>
<div class="col-lg-3">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="../resources/images/sonytv.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">TV's</h5>
                                    <!-- Product price-->
                                    <!-- <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
 -->                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/user/productsbycategory?category=Television">View products</a></div>
                            </div>
                        </div>
                    </div>
<div class="col-lg-3">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="../resources/images/ps5.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Video games</h5>
                                    <!-- Product price-->
                                    <!-- <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00 -->
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/user/productsbycategory?category=Video Games">View products</a></div>
                            </div>
                        </div>
                    </div> 
                    
                    </div>
                    </div>
  
                    
                   
                  
 <footer style="background: #adb5bd; height:100px; padding-top: 30px" class="container-fluid text-center" >
  <p>©Copyrights springkart</p>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
 </body>
</html>
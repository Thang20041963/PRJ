<%-- 
    Document   : homepage
    Created on : Feb 3, 2024, 7:16:34 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="electro-master/css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="electro-master/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="electro-master/css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="electro-master/css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="electro-master/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="electro-master/css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
            <c:set var="x" value="${requestScope.BSlist}"/>
            <c:set var="y" value="${requestScope.Llist}"/>
            <c:set var="z" value="${requestScope.BPlist}"/>
            <c:set var="cart" value="${sessionScope.cart}"/>
            <c:set var="account" value="${sessionScope.account}"/>
		<!-- HEADER -->
		<header>
                    <form name="l" action="login" method="get">
                <input type="hidden"  name="status" value="0"/>               
            </form>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> thangndhe186090@fpt.edu.vn</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul>
					<ul class="header-links pull-right">
						<li><a href="balance.jsp"><i class="fa fa-dollar"></i> VND(${acc.balance}00)</a></li>
						<li><a href="myaccount.jsp"><i class="fa fa-user-o"></i> My Account(${acc.username})</a></li>
                                                <c:if test="${acc==null}">
                                                <li><a href="login.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>Login/Signup</a></li>
                                                </c:if>
                                                <c:if test="${acc!=null}">
                                                <li><a onclick="logout()"<i class="fa fa-sign-out" aria-hidden="true"></i>Log out</a></li>
                                                </c:if>
					</ul>
				</div>
			</div>
            <!-- /TOP HEADER -->
            <script>
function logout() {
 document.l.submit();
}                                                                                                                 
            </script>
			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="./img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">Tên sản phẩm</option>
										<option value="1">Brand</option>
										<option value="1">Type</option>
									</select>
									<input class="input" placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										<div class="qty">3</div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product02.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Hot Deals</a></li>
						<li><a href="#">Brand</a></li>
						<li><a href="#">Type</a></li>
						
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">New Products</h3>
							
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1">
                                                                            <c:forEach var="i" begin="0" end="4">
										<!-- product -->
										<div class="product">
											<div class="product-img">
                                                                                            <img src="product_images/${y.get(i).getImg().get(0)}" alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												
												<h3 class="product-name"><a href="#">${y.get(i).getTitle()}</a></h3>
												<h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                              groupingUsed = "false" value = "${y.get(i).getOutPrice()}" /> K VND 
                                                                                                    <c:if  test="${y.get(i).getDiscount()}>0">
                                                                                                    <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                              groupingUsed = "false" value = "${y.get(i).getOutPrice()+y.get(i).getOutPrice()*y.get(i).getDiscount()}" /> K VND</del></h4>
                                                                                                    </c:if>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													
                                                                                                        
                                                                                                        <button class="quick-view" onclick="redirectToProductDetails(${y.get(i).getId()})" ><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>  
                                                                                                              
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
										<!-- /product -->
                                                                                </c:forEach>                                        
										
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		<div id="hot-deal" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
							<ul class="hot-deal-countdown">
								<li>
									<div>
										<h3>02</h3>
										<span>Days</span>
									</div>
								</li>
								<li>
									<div>
										<h3>10</h3>
										<span>Hours</span>
									</div>
								</li>
								<li>
									<div>
										<h3>34</h3>
										<span>Mins</span>
									</div>
								</li>
								<li>
									<div>
										<h3>60</h3>
										<span>Secs</span>
									</div>
								</li>
							</ul>
							<h2 class="text-uppercase">hot deal this week</h2>
							<p>New Collection Up to 50% OFF</p>
							<a class="primary-btn cta-btn" href="#">Shop now</a>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /HOT DEAL SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Top selling</h3>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
										<c:forEach var="i" begin="0" end="4">
										<!-- product -->
										<div class="product">
											<div class="product-img">
                                                                                            <img src="product_images/${x.get(i).getImg().get(0)}" alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												
												<h3 class="product-name"><a href="#">${x.get(i).getTitle()}</a></h3>
												<h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                              groupingUsed = "false" value = "${x.get(i).getOutPrice()}" /> K VND 
                                                                                                    <c:if  test="${x.get(i).getDiscount()>0}">
                                                                                                    <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                              groupingUsed = "false" value = "${x.get(i).getOutPrice()+x.get(i).getOutPrice()*x.get(i).getDiscount()}" /> K VND</del></h4>
                                                                                                    </c:if>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													
                                                                                                        
                                                                                                        <button class="quick-view" onclick="redirectToProductDetails(${x.get(i).getId()})" ><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>  
                                                                                                              
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
										<!-- /product -->
                                                                                </c:forEach> 
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div>
                                                            <c:forEach var = "i" begin = "0" end = "2">
                                                                <!-- product widget -->
                                                                <div class="product-widget">
                                                                    <div class="product-img">
                                                                        <img src="product_images/${x.get(i).getImg().get(0)}" alt="">
                                                                    </div>
                                                                    <div class="product-body">
                                                                        <p class="product-category"> TYPE:${x.get(i).getType().getName()}</p>
                                                                        <h3 class="product-name"><a href="#">${x.get(i).getTitle()}</a></h3>
                                                                        <h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                                          groupingUsed = "false" value = "${x.get(i).getOutPrice()}" /> K VND
                                                                            <c:if  test="${x.get(i).getDiscount()>0}">
                                                                            <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                                              groupingUsed = "false" value = "${x.get(i).getOutPrice()+z.get(i).getOutPrice()*z.get(i).getDiscount()}" /> K VND</del>
                                                                            </c:if>
                                                                            </h4>
                                                                            
                                                                        </div>
                                                                </div>
                                                                <!-- /product widget -->
                                                            </c:forEach>      
								
							</div>

							<div>
							<c:forEach var = "i" begin = "3" end = "5">
								<!-- product widget -->
								<div class="product-widget">
                                                                    <div class="product-img">
                                                                        <img src="product_images/${x.get(i).getImg().get(0)}" alt="">
                                                                    </div>
                                                                    <div class="product-body">
                                                                        <p class="product-category"> TYPE:${x.get(i).getType().getName()}</p>
                                                                        <h3 class="product-name"><a href="#">${x.get(i).getTitle()}</a></h3>
                                                                        <h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                                          groupingUsed = "false" value = "${x.get(i).getOutPrice()}" /> K VND
                                                                            <c:if  test="${x.get(i).getDiscount()>0}">
                                                                            <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                                              groupingUsed = "false" value = "${x.get(i).getOutPrice()+z.get(i).getOutPrice()*z.get(i).getDiscount()}" /> K VND</del>
                                                                            </c:if>
                                                                            </h4>
                                                                            
                                                                        </div>
                                                                </div>
								<!-- /product widget -->
                                                            </c:forEach>	
							</div>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Latest</h4>
							<div class="section-nav">
								<div id="slick-nav-4" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-4">
							<div>
                                                            <c:forEach var = "i" begin = "0" end = "2">
                                                                <!-- product widget -->
                                                                <div class="product-widget">
                                                                    <div class="product-img">
                                                                        <img src="product_images/${y.get(i).getImg().get(0)}" alt="">
                                                                    </div>
                                                                    <div class="product-body">
                                                                        <p class="product-category"> TYPE:${y.get(i).getType().getName()}</p>
                                                                        <h3 class="product-name"><a href="#">${y.get(i).getTitle()}</a></h3>
                                                                        <h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                                          groupingUsed = "false" value = "${y.get(i).getOutPrice()}" /> K VND
                                                                            <c:if  test="${y.get(i).getDiscount()>0}">
                                                                            <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                                              groupingUsed = "false" value = "${y.get(i).getOutPrice()+z.get(i).getOutPrice()*z.get(i).getDiscount()}" /> K VND</del>
                                                                            </c:if>
                                                                            </h4>
                                                                            
                                                                        </div>
                                                                </div>
                                                                <!-- /product widget -->
                                                            </c:forEach>      
								
							</div>

							<div>
							<c:forEach var = "i" begin = "3" end = "5">
								<!-- product widget -->
                                                                <div class="product-widget">
                                                                    <div class="product-img">
                                                                        <img src="product_images/${y.get(i).getImg().get(0)}" alt="">
                                                                    </div>
                                                                    <div class="product-body">
                                                                        <p class="product-category"> TYPE:${y.get(i).getType().getName()}</p>
                                                                        <h3 class="product-name"><a href="#">${y.get(i).getTitle()}</a></h3>
                                                                        <h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                                          groupingUsed = "false" value = "${y.get(i).getOutPrice()}" /> K VND
                                                                            <c:if  test="${y.get(i).getDiscount()>0}">
                                                                            <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                                              groupingUsed = "false" value = "${y.get(i).getOutPrice()+z.get(i).getOutPrice()*z.get(i).getDiscount()}" /> K VND</del>
                                                                            </c:if>
                                                                            </h4>
                                                                            
                                                                        </div>
                                                                </div>
                                                                <!-- /product widget -->
                                                            </c:forEach>	
							</div>
						</div>
					</div>

					<div class="clearfix visible-sm visible-xs"></div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Best Price</h4>
							<div class="section-nav">
								<div id="slick-nav-5" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-5">
							<div>
                                                            <c:forEach var = "i" begin = "0" end = "2">
                                                                <!-- product widget -->
                                                                <div class="product-widget">
                                                                    <div class="product-img">
                                                                        <img src="product_images/${z.get(i).getImg().get(0)}" alt="">
                                                                    </div>
                                                                    <div class="product-body">
                                                                        <p class="product-category"> TYPE:${z.get(i).getType().getName()}</p>
                                                                        <h3 class="product-name"><a href="#">${z.get(i).getTitle()}</a></h3>
                                                                        <h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                                          groupingUsed = "false" value = "${z.get(i).getOutPrice()}" /> K VND
                                                                            <c:if  test="${z.get(i).getDiscount()>0}">
                                                                            <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                                              groupingUsed = "false" value = "${z.get(i).getOutPrice()+z.get(i).getOutPrice()*z.get(i).getDiscount()}" /> K VND</del>
                                                                            </c:if>
                                                                            </h4>
                                                                            
                                                                        </div>
                                                                </div>
                                                                <!-- /product widget -->
                                                            </c:forEach>      
								
							</div>

							<div>
							<c:forEach var = "i" begin = "3" end = "5">
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
                                                                            <img src="product_images/${z.get(i).getImg().get(0)}" alt="">
									</div>
									<div class="product-body">
										<p class="product-category"> TYPE:${z.get(i).getType().getName()}</p>
										<h3 class="product-name"><a href="#">${z.get(i).getTitle()}</a></h3>
										<h4 class="product-price"><fmt:formatNumber type = "number" 
                                                                                          groupingUsed = "false" value = "${z.get(i).getOutPrice()}" /> K VND
                                                                            <c:if  test="${z.get(i).getDiscount()>0}">
                                                                            <del class="product-old-price"><fmt:formatNumber type = "number" 
                                                                                              groupingUsed = "false" value = "${z.get(i).getOutPrice()+z.get(i).getOutPrice()*z.get(i).getDiscount()}" /> K VND</del>
                                                                            </c:if>
                                                                            </h4>
									</div>
								</div>
								<!-- /product widget -->
                                                            </c:forEach>	
							</div>
						</div>
					</div>

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categories</h3>
								<ul class="footer-links">
									<li><a href="#">Hot deals</a></li>
									<li><a href="#">Laptops</a></li>
									<li><a href="#">Smartphones</a></li>
									<li><a href="#">Cameras</a></li>
									<li><a href="#">Accessories</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">My Account</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->
                <script>
                                                                                                        // JavaScript Function to Redirect to Product Details Page
                                                                                                        function redirectToProductDetails(productId) {
                                                                                                          // Assuming x is your result set containing product details
                                                                                                          // Replace this line with the correct way to retrieve product ID from your data
                                                                                                          
                                                                                                          // Redirect to the product details page with the product ID
                                                                                                          window.location.href = "productdetails?productId=" + productId;
                                                                                                                         }
                                                                                                        </script> 
		<!-- jQuery Plugins -->
		<script src="electro-master/js/jquery.min.js"></script>
		<script src="electro-master/js/bootstrap.min.js"></script>
		<script src="electro-master/js/slick.min.js"></script>
		<script src="electro-master/js/nouislider.min.js"></script>
		<script src="electro-master/js/jquery.zoom.min.js"></script>
		<script src="electro-master/js/main.js"></script>

	</body>

</html>


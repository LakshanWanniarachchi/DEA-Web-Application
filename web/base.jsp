<%-- 
    Document   : Base
    Created on : Mar 30, 2024, 8:06:02 AM
    Author     : laksh
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*"%>
<%@page import="Servelets.CartData"%>
<%
    
   
   
    List<CartData> bla = (List<CartData>)  session.getAttribute("cart-list");

    String user_email =  (String)session.getAttribute("user_email");
    
    
   int Product_count = 0;

%>



<!DOCTYPE html>
<html >

<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="robots" content="index, follow" />
    <title>Jesco - Fashoin eCommerce HTML Template</title>
    <meta name="description" content="Jesco - Fashoin eCommerce HTML Template" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Add site Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon/favicon.ico" type="image/png">

    <!-- vendor css (Icon Font) -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.bundle.min.css" />
    <link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="assets/css/vendor/font.awesome.css" />

    <!-- plugins css (All Plugins Files) -->
    <link rel="stylesheet" href="assets/css/plugins/animate.css" />
    <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/nice-select.css" />
    <link rel="stylesheet" href="assets/css/plugins/venobox.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
    
    


</head>

<body>

    <!-- Top Bar -->

    <div class="header-to-bar"> HELLO EVERYONE! 25% Off All Products </div>

    <!-- Top Bar -->
    <!-- Header Area Start -->
    <header>
        <div class="header-main sticky-nav ">
            <div class="container position-relative">
                <div class="row">
                    <div class="col-auto align-self-center">
                        <div class="header-logo">
                            <a href="index.html"><img src="assets/images/logo/logo.png" alt="Site Logo" /></a>
                        </div>
                    </div>
                    <div class="col align-self-center d-none d-lg-block">
                        <div class="main-menu">
                            <ul>
                                <li class="dropdown"><a href="index.jsp">Home</a>
                                   
                                </li>
                                <li class="dropdown position-static"><a href="#">Shop </a>
                                    
                                </li>
                             
                                <li><a href="about.html">About us</a></li>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- Header Action Start -->
                    <div class="col col-lg-auto align-self-center pl-0">
                        <div class="header-actions">
                            
                            <% if(user_email == null) {%>
                            <a href="login.jsp" class="header-action-btn login-btn" data-bs-toggle="modal"
                                data-bs-target="#loginActive">Sign In</a>  <% } else { %>
                            <!-- Single Wedge Start -->
                            
                            <!-- Single Wedge End -->
                            <!-- Single Wedge Start -->
                            <a href="my-account.jsp" style="color: black;">
    Account
</a>

                            <% } %>
                            <!-- Single Wedge End -->
                            <a href="#offcanvas-cart"
                                class="header-action-btn header-action-btn-cart offcanvas-toggle pr-0">
                                <i class="pe-7s-shopbag"></i>
                                
                                <%
                                    
                                    
                                    if(bla != null) {
                        
                                    
                                    for (CartData p : bla ) { Product_count+=1; }}%>
                                
                                
                                
                                
                                    <span class="header-action-num"><%=Product_count%></span>
                                <!-- <span class="cart-amount">â¬30.00</span> -->
                            </a>
                            <a href="cart.jsp"
                                class="header-action-btn header-action-btn-menu offcanvas-toggle d-lg-none">
                                <i class="pe-7s-menu"></i>
                            </a>
                        </div>
                        <!-- Header Action End -->
                    </div>
                </div>
            </div>
    </header>
    <!-- Header Area End -->
    <div class="offcanvas-overlay"></div>

   
    <!-- OffCanvas Wishlist End -->
    <!-- OffCanvas Cart Start -->
    <div id="offcanvas-cart" class="offcanvas offcanvas-cart">
        <div class="inner">
            <div class="head">
                <span class="title">Cart</span>
                <button class="offcanvas-close">Ã</button>
            </div>
            <div class="body customScroll">
                <ul class="minicart-product-list">
                    
                    <%
                        
                        
                        if(bla != null) {
                        
                        
                        
                        
                        for (CartData p : bla ) { %>
                    <li>
                        <a href="single-product.html" class="image"><img src="<%= p.getP_image()%>"
                                alt="Cart product Image"></a>
                        <div class="content">
                            <a href="single-product.html" class="title"><%= p.getP_Name() %></a>
                            <span class="quantity-price">1 x <span class="amount"><%= p.getP_Price() %></span></span>
                           
                        </div>
                    </li>
                   
                 <%  }} %>
                </ul>
            </div>
            <div class="foot">
                <div class="buttons mt-30px">
                    <a href="CartPage.jsp" class="btn btn-dark btn-hover-primary mb-30px">view cart</a>
                    <a href="checkout.jsp" class="btn btn-outline-dark current-btn">checkout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- OffCanvas Cart End -->

    
    <!-- OffCanvas Menu End -->
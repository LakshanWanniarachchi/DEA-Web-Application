



<%@include file="base.jsp" %>

<%

   
   

  if (User!=null) {


%>

<% int Total=0 ;%>
    <!-- breadcrumb-area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-12 text-center">
                    <h2 class="breadcrumb-title">Shop</h2>
                    <!-- breadcrumb-list start -->
                    <ul class="breadcrumb-list">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">Checkout</li>
                    </ul>
                    <!-- breadcrumb-list end -->
                </div>
            </div>
        </div>
    </div>

    <!-- breadcrumb-area end -->


    <!-- checkout area start -->
    <div class="checkout-area pt-100px pb-100px">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="billing-info-wrap">
                        <h3>Billing Details</h3>
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="billing-info mb-4">
                                    <label>First Name</label>
                                    <input type="text" />
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="billing-info mb-4">
                                    <label>Last Name</label>
                                    <input type="text" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="billing-info mb-4">
                                    <label>Company Name</label>
                                    <input type="text" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="billing-select mb-4">
                                    <label>Country</label>
                                    <select>
                                        <option>Select a country</option>
                                        <option>Azerbaijan</option>
                                        <option>Bahamas</option>
                                        <option>Bahrain</option>
                                        <option>Bangladesh</option>
                                        <option>Barbados</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="billing-info mb-4">
                                    <label>Street Address</label>
                                    <input class="billing-address" placeholder="House number and street name"
                                        type="text" />
                                    <input placeholder="Apartment, suite, unit etc." type="text" />
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="billing-info mb-4">
                                    <label>Town / City</label>
                                    <input type="text" />
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="billing-info mb-4">
                                    <label>State / County</label>
                                    <input type="text" />
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="billing-info mb-4">
                                    <label>Postcode / ZIP</label>
                                    <input type="text" />
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="billing-info mb-4">
                                    <label>Phone</label>
                                    <input type="text" />
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="billing-info mb-4">
                                    <label>Email Address</label>
                                    <input type="text" />
                                </div>
                            </div>
                        </div>
                        <div class="checkout-account mb-30px">
                            <input class="checkout-toggle2 w-auto h-auto" type="checkbox" />
                            <label>Create an account?</label>
                        </div>
                        <div class="checkout-account-toggle open-toggle2 mb-30">
                            <input placeholder="Email address" type="email" />
                            <input placeholder="Password" type="password" />
                            <button class="btn-hover checkout-btn" type="submit">register</button>
                        </div>
                        <div class="additional-info-wrap">
                            <h4>Additional information</h4>
                            <div class="additional-info">
                                <label>Order notes</label>
                                <textarea placeholder="Notes about your order, e.g. special notes for delivery. "
                                    name="message"></textarea>
                            </div>
                        </div>
                        <div class="checkout-account mt-25">
                            <input class="checkout-toggle w-auto h-auto" type="checkbox" />
                            <label>Ship to a different address?</label>
                        </div>
                        <div class="different-address open-toggle mt-30px">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-4">
                                        <label>First Name</label>
                                        <input type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-4">
                                        <label>Last Name</label>
                                        <input type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="billing-info mb-4">
                                        <label>Company Name</label>
                                        <input type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="billing-select mb-4">
                                        <label>Country</label>
                                        <select>
                                            <option>Select a country</option>
                                            <option>Azerbaijan</option>
                                            <option>Bahamas</option>
                                            <option>Bahrain</option>
                                            <option>Bangladesh</option>
                                            <option>Barbados</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="billing-info mb-4">
                                        <label>Street Address</label>
                                        <input class="billing-address" placeholder="House number and street name"
                                            type="text" />
                                        <input placeholder="Apartment, suite, unit etc." type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="billing-info mb-4">
                                        <label>Town / City</label>
                                        <input type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-4">
                                        <label>State / County</label>
                                        <input type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-4">
                                        <label>Postcode / ZIP</label>
                                        <input type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-4">
                                        <label>Phone</label>
                                        <input type="text" />
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="billing-info mb-4">
                                        <label>Email Address</label>
                                        <input type="text" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 mt-md-30px mt-lm-30px ">
                    <div class="your-order-area">
                        <h3>Your order</h3>
                        <div class="your-order-wrap gray-bg-4">
                            <div class="your-order-product-info">
                                <div class="your-order-top">
                                    <ul>
                                        <li>Product</li>
                                        <li>Total</li>
                                    </ul>
                                </div>
                                <div class="your-order-middle">
                                    <ul>
                                        
                                        <%
                        
                        
                        if(bla != null) {
                        
                        
                       
                        
                        for (CartData p : bla ) { 
                                        
                                        
                         Total += (p.getP_Price()*p.getQuentity());              
                                        
                                        %>
                                        
                                        
                        <li><span class="order-middle-left"><%= p.getP_Name() %> X <%= p.getQuentity() %></span>
                            
                            <%  int p_total = p.getP_Price()*p.getQuentity(); %>
                            
                            
                            <span
                                class="order-price">$<%=p_total%> </span></li>
                                                     <%  }}%>
                                    </ul>
                                </div>
                                <div class="your-order-bottom">
                                    <ul>
                                        <li class="your-order-shipping">Shipping</li>
                                        <li>Free shipping</li>
                                    </ul>
                                </div>
                                <div class="your-order-total">
                                    <ul>
                                        <li class="order-total">Total</li>
                                        <li>$<%=Total%></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="payment-method">
                                <div class="payment-accordion element-mrg">
                                    <div id="faq" class="panel-group">
                                        <div class="panel panel-default single-my-account m-0">
                                            <div class="panel-heading my-account-title">
                                                <h4 class="panel-title"><a data-bs-toggle="collapse"
                                                        href="#my-account-1" class="collapsed"
                                                        aria-expanded="true">Direct bank transfer</a>
                                                </h4>
                                            </div>
                                            <div id="my-account-1" class="panel-collapse collapse show"
                                                data-bs-parent="#faq">

                                                <div class="panel-body">
                                                    <p>Please send a check to Store Name, Store Street, Store Town,
                                                        Store State / County, Store Postcode.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default single-my-account m-0">
                                            <div class="panel-heading my-account-title">
                                                <h4 class="panel-title"><a data-bs-toggle="collapse"
                                                        href="#my-account-2" aria-expanded="false"
                                                        class="collapsed">Check payments</a></h4>
                                            </div>
                                            <div id="my-account-2" class="panel-collapse collapse"
                                                data-bs-parent="#faq">

                                                <div class="panel-body">
                                                    <p>Please send a check to Store Name, Store Street, Store Town,
                                                        Store State / County, Store Postcode.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default single-my-account m-0">
                                            <div class="panel-heading my-account-title">
                                                <h4 class="panel-title"><a data-bs-toggle="collapse"
                                                        href="#my-account-3">Cash on delivery</a></h4>
                                            </div>
                                            <div id="my-account-3" class="panel-collapse collapse"
                                                data-bs-parent="#faq">

                                                <div class="panel-body">
                                                    <p>Please send a check to Store Name, Store Street, Store Town,
                                                        Store State / County, Store Postcode.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="Place-order mt-25">
                            <a class="btn-hover" href="PlaceOrder">Place Order</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- checkout area end -->
    <!-- Footer Area Start -->
    <div class="footer-area">
        <div class="footer-container">
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <!-- Start single blog -->
                        <div class="col-md-6 col-lg-3 mb-md-30px mb-lm-30px">
                            <div class="single-wedge">
                                <div class="footer-logo">
                                    <a href="index.html"><img src="assets/images/logo/logo-white.png" alt=""></a>
                                </div>
                                <p class="about-text">Lorem ipsum dolor sit amet consectet adipisicing elit, sed do
                                    eiusmod templ incididunt ut labore et dolore magnaol aliqua Ut enim ad minim.
                                </p>
                                <ul class="link-follow">
                                    <li>
                                        <a class="m-0" title="Twitter" href="#"><i class="fa fa-twitter"
                                                aria-hidden="true"></i></a>
                                    </li>
                                    <li>
                                        <a title="Tumblr" href="#"><i class="fa fa-tumblr" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a title="Facebook" href="#"><i class="fa fa-facebook" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a title="Instagram" href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
                                            </i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <!-- Start single blog -->
                        <div class="col-md-3 col-sm-6 col-lg-2 mb-md-30px mb-lm-30px pl-lg-50px">
                            <div class="single-wedge">
                                <h4 class="footer-herading">Quick Links</h4>
                                <div class="footer-links">
                                    <div class="footer-row">
                                        <ul class="align-items-center">
                                            <li class="li"><a class="single-link" href="#">Support
                                                </a></li>
                                            <li class="li"><a class="single-link" href="#">Helpline</a></li>
                                            <li class="li"><a class="single-link" href="#">Courses</a></li>
                                            <li class="li"><a class="single-link" href="about.html">About</a></li>
                                            <li class="li"><a class="single-link" href="#">Event</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <!-- Start single blog -->
                        <div class="col-md-3 col-lg-2 col-sm-6 mb-lm-30px pl-lg-50px">
                            <div class="single-wedge">
                                <h4 class="footer-herading">Other Page</h4>
                                <div class="footer-links">
                                    <div class="footer-row">
                                        <ul class="align-items-center">
                                            <li class="li"><a class="single-link" href="about.html"> About </a>
                                            </li>
                                            <li class="li"><a class="single-link" href="blog-grid.html">Blog</a></li>
                                            <li class="li"><a class="single-link" href="#">Speakers</a></li>
                                            <li class="li"><a class="single-link" href="contact.html">Contact</a></li>
                                            <li class="li"><a class="single-link" href="#">Tricket</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <!-- Start single blog -->
                        <div class="col-md-3 col-lg-2 col-sm-6 mb-lm-30px pl-lg-50px">
                            <div class="single-wedge">
                                <h4 class="footer-herading">Company</h4>
                                <div class="footer-links">
                                    <div class="footer-row">
                                        <ul class="align-items-center">
                                            <li class="li"><a class="single-link" href="index.html">Jesco</a>
                                            </li>
                                            <li class="li"><a class="single-link" href="shop-left-sidebar.html">Shop</a></li>
                                            <li class="li"><a class="single-link" href="contact.html">Contact us</a></li>
                                            <li class="li"><a class="single-link" href="login.html">Log in</a></li>
                                            <li class="li"><a class="single-link" href="#">Help</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <!-- Start single blog -->
                        <div class="col-md-4 col-lg-3 col-sm-6">
                            <div class="single-wedge">
                                
                                <h4 class="footer-herading">Store Information.</h4>
                                <div class="footer-links">
                                    <!-- News letter area -->
                                    <p class="address">2005 Your Address Goes Here. <br>
                                        896, Address 10010, HGJ</p>
                                    <p class="phone">Phone/Fax:<a href="tel:0123456789">0123456789</a></p>
                                    <p class="mail">Email:<a href="mailto:demo@example.com">demo@example.com</a></p>
                                    <img src="assets/images/icons/payment.png" alt="" class="payment-img img-fulid">

                                    <!-- News letter area  End -->
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <p class="copy-text"> © 2023 <strong>Jesco</strong> Made With <i class="fa fa-heart"
                                    aria-hidden="true"></i> By <a class="company-name" href="https://hasthemes.com/">
                                    <strong> HasThemes</strong></a>.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer Area End -->

    <!-- Search Modal Start -->
    <div class="modal popup-search-style" id="searchActive">
        <button type="button" class="close-btn" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
        <div class="modal-overlay">
            <div class="modal-dialog p-0" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <h2>Search Your Product</h2>
                        <form class="navbar-form position-relative" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search here...">
                            </div>
                            <button type="submit" class="submit-btn"><i class="pe-7s-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Modal End -->

    <!-- Login Modal Start -->
    <div class="modal popup-login-style" id="loginActive">
        <button type="button" class="close-btn" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
        <div class="modal-overlay">
            <div class="modal-dialog p-0" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="login-content">
                            <h2>Log in</h2>
                            <h3>Log in your account</h3>
                            <form action="#">
                                <input type="text" placeholder="Username">
                                <input type="password" placeholder="Password">
                                <div class="remember-forget-wrap">
                                    <div class="remember-wrap">
                                        <input type="checkbox">
                                        <p>Remember</p>
                                        <span class="checkmark"></span>
                                    </div>
                                    <div class="forget-wrap">
                                        <a href="#">Forgot your password?</a>
                                    </div>
                                </div>
                                <button type="button">Log in</button>
                                <div class="member-register">
                                    <p> Not a member? <a href="login.html"> Register now</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Login Modal End -->

    <!-- Vendor JS -->
    <script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>
    <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
    <script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
    <script src="assets/js/plugins/swiper-bundle.min.js"></script>
    <script src="assets/js/plugins/jquery-ui.min.js"></script>
    <script src="assets/js/plugins/jquery.nice-select.min.js"></script>
    <script src="assets/js/plugins/countdown.js"></script>
    <script src="assets/js/plugins/scrollup.js"></script>
    <script src="assets/js/plugins/jquery.zoom.min.js"></script>
    <script src="assets/js/plugins/venobox.min.js"></script>
    <script src="assets/js/plugins/ajax-mail.js"></script>
    <script src="assets/js/main.js"></script>
</body>

</html>

<% } else { response.sendRedirect("login.jsp"); } %>
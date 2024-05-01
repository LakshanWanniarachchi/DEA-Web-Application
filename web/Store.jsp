<%-- 
    Document   : Store
    Created on : Mar 29, 2024, 10:33:09 AM
    Author     : laksh
--%>

<%@page import="Servelets.ProductData"%>
<%@page import="Servelets.database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="base.jsp" %>



<% 

 database db = new database();
 
  List<ProductData> products = db.get_all_product();



%>


            <div class="row">
                <div class="col">
                    <div class="tab-content top-borber">
                        <!-- 1st tab start -->
                        <div class="tab-pane fade show active" id="tab-product-all">
                            <div class="row">
                                
                                <% for (ProductData product : products ) { %>
                                
                                
                                
                                
                                
                                
                                <div class="col-lg-4 col-xl-3 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                    data-aos-delay="200">
                                    <!-- Single Prodect -->
                                    <div class="product">
                                        <div class="thumb">
                                            <a href="ProductView?PID=<%= product.getPID()%>" class="image">
                                                <img src="<%= product.getP_image() %>" alt="Product" />
                                                <img class="hover-image" src="<%= product.getP_image() %>"
                                                    alt="Product" />
                                            </a>
                                            <span class="badges">
                                                <span class="new">New</span>
                                            </span>
                                            <div class="actions">
                                                <a href="wishlist.html" class="action wishlist" title="Wishlist"><i
                                                        class="pe-7s-like"></i></a>
                                                <a href="#" class="action quickview" data-link-action="quickview"
                                                    title="Quick view" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal"><i class="pe-7s-search"></i></a>
                                                <a href="compare.html" class="action compare" title="Compare"><i
                                                        class="pe-7s-refresh-2"></i></a>
                                            </div>
                                            <button title="Add To Cart" class=" add-to-cart">Add
                                                To Cart</button>
                                            
                                            <a href="add-to-cart?id=<%=product.getPID()%>" title="Add To Cart" class=" add-to-cart">Add
                                                To Cart
                                                </a>
                                        </div>
                                        <div class="content">
                                            <span class="ratings">
                                                <span class="rating-wrap">
                                                    <span class="star" style="width: 100%"></span>
                                                </span>
                                                <span class="rating-num">( 5 Review )</span>
                                            </span>
                                            <h5 class="title"><a href="single-product.html"><%=product.getP_Name() %>
                                                </a>
                                            </h5>
                                            <span class="price">
                                                <span class="new">$<%=product.getP_Price() %></span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                 <% } %>
                            </div>
                        </div>
                        <!-- 1st tab end -->
                     
                       
                    </div>
                </div>
            </div>
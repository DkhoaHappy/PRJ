<%-- 
    Document   : home
    Created on : Jun 22, 2024, 7:46:35 PM
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="prj.dal.ProductDTO"%>
<%@page import="prj.dal.ProductDTO"%>
<%@page import="prj.dal.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Premium Royal Jewelry Shop</title>
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <!-- CSS only -->
        <link rel="icon" href="images/logo.png"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

        <link rel="stylesheet" href="./css/stylehome.css">
    </head>
    <c:set var="productList" value="${sessionScope.PRODUCT_LIST}"/>
    <c:set var="searchProductList" value="${requestScope.SEARCH_PRODUCT_LIST}"/>
    <body>
        <div class="home_black_version">
            <header class="header_area header_black">
                <!-- header top starts -->
                <div class="header_top">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-12 col-md-12">
                                <div class="top_right text-right" id="hh">
                                    <c:if test="${empty sessionScope.USER}">
                                        <ul>
                                            <li class="top_links">
                                                
                                                    <li><a href="login.jsp">Login</a></li>
                                                    <li><a href="register.jsp">Register</a></li>
                                                
                                            </li>
                                        </ul>
                                    </c:if>
                                    <c:if test="${not empty sessionScope.USER}">
                                        <c:set var="account" value="${sessionScope.USER}"/>
                                        <ul>

                                            <li class="top_links">
                                                <a href="#">My Account <i class="ion-chevron-down"></i></a>
                                                <ul class="dropdown_links">
                                                    <li><a href="profile.jsp">${account.lastName}</a></li>
                                                    <li><a href="login.jsp">Log Out</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </c:if>     

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- header top ends -->

                <!-- header middle starts -->
                <div class="header_middel">
                    <div class="container">
                        <div class="row align-items-center">

                            <div class="col-lg-5">
                                <div class="home_contact">
                                    <div class="contact_icone">
                                        <img src="images/icon/icon_phone.png" alt="">
                                    </div>
                                    <div class="contact_box">
                                        <p>Inquiry / Helpline : <a href="tel: 1234567894">1234567894</a></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-3 col-4">
                                <div class="logo">
                                    <a href="home.html"><img src="images/logo/logo-ash.png" alt=""></a>
                                </div>
                            </div>

                            <div class="col-lg-5 col-md-7 col-6">
                                <div class="middel_right">
                                    <div class="search_btn">
                                        <a href="#"><i class="ion-ios-search-strong"></i></a>
                                        <div class="dropdown_search">
                                            <form action="MainController" method="POST">
                                                <input type="text" name="searchValue" placeholder="Search Product ....">
                                                <button type="submit" name="btAction" value="SearchProduct"><i class="ion-ios-search-strong"></i></button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="wishlist_btn">
                                        <a href="#"><i class="ion-heart"></i></a>
                                    </div>
                                    <div class="wishlist_btn">
                                        <a href="#"><i class='bx bx-user' ></i></i></a>
                                    </div>
                                    <div class="cart_link">
                                        <a href="#"><i class="ion-android-cart"></i><span class="cart_text_quantity">$.
                                                67,598</span><i class="ion-chevron-down"></i></a>
                                        <span class="cart_quantity">2</span>

                                        <!-- mini cart -->
                                        <div class="mini_cart">
                                            <div class="cart_close">
                                                <div class="cart_text">
                                                    <h3>cart</h3>
                                                </div>
                                                <div class="mini_cart_close">
                                                    <a href="javascript:void(0)"><i class="ion-android-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="cart_item">
                                                <div class="cart_img">
                                                    <a href="#"><img src="images/nav-product/product.jpg" alt=""></a>
                                                </div>
                                                <div class="cart_info">
                                                    <a href="#">Earings</a>
                                                    <span class="quantity">Qty : 1</span>
                                                    <span class="price_cart">$. 54,599</span>
                                                </div>
                                                <div class="cart_remove">
                                                    <a href="#"><i class="ion-android-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="cart_item">
                                                <div class="cart_img">
                                                    <a href="#"><img src="images/nav-product/product2.jpg" alt=""></a>
                                                </div>
                                                <div class="cart_info">
                                                    <a href="#">Bracelet</a>
                                                    <span class="quantity">Qty : 1</span>
                                                    <span class="price_cart">$. 12,999</span>
                                                </div>
                                                <div class="cart_remove">
                                                    <a href="#"><i class="ion-android-close"></i></a>
                                                </div>
                                            </div>
                                            <div class="cart_total">
                                                <span>Subtotal : </span>
                                                <span>$. 67,598</span>
                                            </div>
                                            <div class="mini_cart_footer">
                                                <div class="cart_button view_cart">
                                                    <a href="viewCart.jsp">View Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- mini cart ends  -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- header middle ends -->

                <!-- header bottom starts -->

                <div class="header_bottom sticky-header">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <div class="main_menu_inner">
                                    <div class="logo_sticky">
                                        <a href="#"><img src="images/logo/logo-ash.png" alt="logo"></a>
                                    </div>
                                    <div class="main_menu">
                                        <nav>
                                            <ul>
                                                <li class="active">
                                                    <a href="home.jsp">Home</a>
                                                </li>
                                                <li>
                                                    <a href="#">Category <i class="ion-chevron-down"></i></a>
                                                    <ul class="mega_menu">
                                                        <li>
                                                            <a href="#">Featured</a>
                                                            <a href="#">New Arrivals</a>
                                                            <a href="#">Others</a>
                                                        </li>

                                                    </ul>
                                                </li>
                                                <li><a href="aboutUs.jsp">About Us</a></li>
                                                <li><a href="profile.jsp">Profile</a></li> 
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- header bottom ends -->
            </header>

            <!-- slider section starts -->
            <div class="slider_area slider_black owl-carousel">
                <div class="single_slider" data-bgimg="images/slider/1.png">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-12">
                                
                            </div>
                        </div>
                    </div>

                </div>
                <div class="single_slider" data-bgimg="images/slider/2.jpg">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-12">
                                
                            </div>
                        </div>
                    </div>

                </div>
                <div class="single_slider" data-bgimg="images/slider/3.jpg">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-12">
                                
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- slider section ends -->
            <!-- banner section starts -->
            <section class="banner_section banner_black">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="single_banner">
                                <div class="banner_thumb">
                                    <a href="#"><img src="images/banner/bg-1.jpg" alt="banner1"></a>
                                    <div class="banner_content">
                                        <p>New Design</p>
                                        <h2>Small design Rings</h2>
                                        <span>Sale 20% </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single_banner">
                                <div class="banner_thumb">
                                    <a href="#"><img src="images/banner/bg-2.jpg" alt="banner2"></a>
                                    <div class="banner_content">
                                        <p>Bestselling Rings</p>
                                        <h2>White gold rings</h2>
                                        <span>Sale 10% </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single_banner">
                                <div class="banner_thumb">
                                    <a href="#"><img src="images/banner/bg-3.jpg" alt="banner3"></a>
                                    <div class="banner_content">
                                        <p>Featured Rings</p>
                                        <h2>Platinium Rings</h2>
                                        <span>Sale 30% </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- banner section ends -->
            <!--Product session start-->

            
            
            <table border="2" >
                <thead>
                    <tr>
                        <th>No</th>
                        <th>User Name</th>
                        <th>Password</th>
                        <th>Last Name</th>
                        <th>Admin</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                   
<!--                          private String id;
    private String catology;
    private String name;
    private int quantity;
    private float listPrice;
    private String description;
    private float sale;-->

            <!--Product session end-->
                    <c:forEach var="product" items="${productList}" varStatus="i">
                    <form action="MainController" method="POST">
                    <tr>
                        <td>${i.index+1}</td>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.quantity}</td>
                        <td>${product.listPrice}</td>
                        <td>${product.description}</td>
                      
                    </tr>
                    </form>
                     </c:forEach>
                </tbody>
            </table>
                       
            <table border="1">
                <thead>
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${searchProductList}" varStatus="i">
                    <tr>
                         <td>${i.index+1}</td>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.quantity}</td>
                        <td>${product.listPrice}</td>
                        <td>${product.description}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <!--Product session end-->
            
            <!-- banner full width start -->
            <section class="banner_fullwidth black_fullwidth">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="banner_text">
                                <p>Sale Off 20% All Products</p>
                                <h2>New Trending Collection</h2>
                                <span>Best Design makes you more special.</span>
                                <a href="#">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- banner full width end -->

            <!-- product section area starts  -->
            

            <section class="product_section p_section1 product_black_section bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section_title">
                                <h2>Bestselling Products</h2>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="product-area">
                                <div class="product_container bottom">
                                    <div class="custom-row product_row1">
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/71.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/72.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/4.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/5.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/10.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/11.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/24.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/22.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/26.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/27.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/28.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/29.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/32.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/33.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/34.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/35.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/38.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/39.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/40.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/41.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="custom-col-5">
                                            <div class="single_product">
                                                <div class="product_thumb">
                                                    <a href="#" class="primary_img"><img src="images/product/42.jpg"
                                                                                         alt="product1"></a>
                                                    <a href="#" class="secondary_img"><img src="images/product/43.jpg"
                                                                                           alt="product1"></a>
                                                    <div class="quick_button">
                                                        <a href="#" data-toggle="modal" data-target="#modal_box"
                                                           data-placement="top" data-original-title="quick view">Quick
                                                            View</a>
                                                    </div>
                                                </div>
                                                <div class="product_content">
                                                    <div class="tag_cate">
                                                        <!-- make this corection in all products above -->
                                                        <a href="#">Ring, Necklace,</a>
                                                        <a href="#">Earrings</a>
                                                    </div>
                                                    <h3><a href="#">Necklace Set</a></h3>
                                                    <div class="price_box">
                                                        <span class="old_price">$. 45654</span>
                                                        <span class="current_price">$. 44015</span>
                                                    </div>
                                                    <div class="product_hover">
                                                        <div class="product_ratings">
                                                            <ul>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                                <li><a href="#"><i class="ion-ios-star-outline"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="product_desc">
                                                            <p>This is a gold ring with diamond and Lorem ipsum
                                                                dolor sit amet.</p>
                                                        </div>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li><a href="#" data-placement="top" title="Add to Wishlist"
                                                                       data-toggle="tooltip"><span
                                                                            class="ion-heart"></span></a></li>
                                                                <li class="add_to_cart"><a href="#" title="Add to Cart">Add
                                                                        to Cart</a></li>
                                                                <li><a href="#" title="Compare"><i
                                                                            class="ion-ios-settings-strong"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- product section area ends  -->
            <!-- blog section starts -->
            <section class="blog_section blog_black">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="section_title">
                                <h2>PRJ Updates</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="blog_wrapper blog_column3 owl-carousel">
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="#"><img src="images/blog/4.jpg" alt="blog 4"></a>
                                    </div>
                                    <div class="blog_content">
                                        <h3><a href="#">Earrings for Navratri</a></h3>
                                        <div class="author_name">
                                            <p>
                                                <span>by</span>
                                                <span class="themes">PRJ</span>
                                                <span class="post_by">/ 4 November 2024</span>
                                            </p>
                                        </div>

                                        <div class="post_desc">
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt fugit commodi
                                                quo eligendi laudantium quisquam, magnam hic numquam fuga illum sed aperiam
                                                sint, expedita dolor.</p>
                                        </div>
                                        <div class="read_more">
                                            <a href="#">Continue Reading</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="#"><img src="images/blog/1.jpg" alt="blog 1"></a>
                                    </div>
                                    <div class="blog_content">
                                        <h3><a href="#">Pendant for engagement</a></h3>
                                        <div class="author_name">
                                            <p>
                                                <span>by</span>
                                                <span class="themes">PRJ</span>
                                                <span class="post_by">/ 3 November 2024</span>
                                            </p>
                                        </div>

                                        <div class="post_desc">
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt fugit commodi
                                                quo eligendi laudantium quisquam, magnam hic numquam fuga illum sed aperiam
                                                sint, expedita dolor.</p>
                                        </div>
                                        <div class="read_more">
                                            <a href="#">Continue Reading</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="#"><img src="images/blog/2.jpg" alt="blog 2"></a>
                                    </div>
                                    <div class="blog_content">
                                        <h3><a href="#">Engagement Couple Rings</a></h3>
                                        <div class="author_name">
                                            <p>
                                                <span>by</span>
                                                <span class="themes">PRJ</span>
                                                <span class="post_by">/ 2 November 2024</span>
                                            </p>
                                        </div>

                                        <div class="post_desc">
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt fugit commodi
                                                quo eligendi laudantium quisquam, magnam hic numquam fuga illum sed aperiam
                                                sint, expedita dolor.</p>
                                        </div>
                                        <div class="read_more">
                                            <a href="#">Continue Reading</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="single_blog">
                                    <div class="blog_thumb">
                                        <a href="#"><img src="images/blog/3.jpg" alt="blog 3"></a>
                                    </div>
                                    <div class="blog_content">
                                        <h3><a href="#">Earrings for Party</a></h3>
                                        <div class="author_name">
                                            <p>
                                                <span>by</span>
                                                <span class="themes">PRJ</span>
                                                <span class="post_by">/ 5 November 2024</span>
                                            </p>
                                        </div>

                                        <div class="post_desc">
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt fugit commodi
                                                quo eligendi laudantium quisquam, magnam hic numquam fuga illum sed aperiam
                                                sint, expedita dolor.</p>
                                        </div>
                                        <div class="read_more">
                                            <a href="#">Continue Reading</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- blog section ends -->

            <!-- instagram section starts -->
            <div class="instagram">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                            <div class="instagram__item set-bg" data-bgimg="images/instagram/insta-1.png">
                                <div class="instagram__text">
                                    <i class="ion-social-instagram"></i>
                                    <a href="https://www.instagram.com/ana_d_armas/">@ ana_d_armas</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                            <div class="instagram__item set-bg" data-bgimg="images/instagram/insta-2.png">
                                <div class="instagram__text">
                                    <i class="ion-social-instagram"></i>
                                    <a href="https://www.instagram.com/zsy_ya/">@ naomi_zsy</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                            <div class="instagram__item set-bg" data-bgimg="images/instagram/insta-3.jpg">
                                <div class="instagram__text">
                                    <i class="ion-social-instagram"></i>
                                    <a href="https://www.instagram.com/alexandrine_ar/">@ Alexandrine</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                            <div class="instagram__item set-bg" data-bgimg="images/instagram/insta-4.jpg">
                                <div class="instagram__text">
                                    <i class="ion-social-instagram"></i>
                                    <a href="https://www.instagram.com/lika.solt/">@ Lika.solt</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                            <div class="instagram__item set-bg" data-bgimg="images/instagram/insta-5.jpg">
                                <div class="instagram__text">
                                    <i class="ion-social-instagram"></i>
                                    <a href="https://www.instagram.com/yiyeisabella/">@ yiyeisabella</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-4 p-0">
                            <div class="instagram__item set-bg" data-bgimg="images/instagram/insta-6.jpg">
                                <div class="instagram__text">
                                    <i class="ion-social-instagram"></i>
                                    <a href="https://www.instagram.com/goyounjung/">@ goyounjung</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- instagram section  ends-->

            <!-- banner area starts  -->
            <section class="banner_section banner_section_five">
                <div class="container-fluid p-0">
                    <div class="row no-gutters">
                        <div class="col-lg-6 col-md-12">
                            <div class="port-box">
                                <div class="text-overlay">
                                    <h1>New Arrivals 2024</h1>
                                    <p>Crown for wife</p>
                                </div>
                                <img src="images/banner/1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="port-box">
                                <div class="text-overlay">
                                    <h1>Featured Products 2024</h1>
                                    <p>Pendant for Valentine</p>
                                </div>
                                <img src="images/banner/2.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- banner area ends -->

            <!-- footer section starts -->
            <footer class="footer_widgets footer_black">
                <div class="container">
                    <div class="footer_top">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="widgets_container contact_us">
                                    <h3>About PRJ</h3>
                                    <div class="footer_contact">
                                        <p>Address : PRJ palace, Surat, Gujarat</p>
                                        <p>Phone : <a href="tel:(+84)0784653276">(+84)0784653276</a></p>
                                        <p>Email : PRJ@gmail.com</p>
                                        <ul>
                                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                            <li><a href="#"><i class="ion-social-rss"></i></a></li>
                                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                                            <li><a href="#"><i class="ion-social-youtube"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="widgets_container widget_menu">
                                    <h3>Information</h3>
                                    <div class="footer_menu">
                                        <ul>
                                            <li><a href="#">About Us</a></li>
                                            <li><a href="#">Blog</a></li>
                                            <li><a href="#">Contact</a></li>
                                            <li><a href="#">Services</a></li>
                                            <li><a href="#">Collection</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>       
                            <div class="footer_bottom">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="copyright_area">
                                            <p>Copyright &copy; 2024 <a href="#">PRJ</a> All rights Reserved.</p>
                                            <img src="images/icon/papyel2.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
            </footer>
            <!-- footer section ends -->
        </div>

        <!-- modal section starts -->
        <div class="modal fade" id="modal_box" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal_body">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5 col-md-5 col-sm-12">
                                    <div class="modal_tab">
                                        <div class="tab-content product-details-large">
                                            <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/product/70.jpg" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab2" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/product/71.jpg" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab3" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/product/72.jpg" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab4" role="tabpanel">
                                                <div class="modal_tab_img">
                                                    <a href="#"><img src="images/product/73.jpg" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal_tab_button">
                                            <ul class="nav product_navactive owl-carousel" role="tablist">
                                                <li>
                                                    <a href="#tab1" class="nav-link active" data-toggle="tab" role="tab"
                                                       aria-controls="tab1" aria-selected="false"><img
                                                            src="images/product/70.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a href="#tab2" class="nav-link" data-toggle="tab" role="tab"
                                                       aria-controls="tab2" aria-selected="false"><img
                                                            src="images/product/71.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a href="#tab3" class="nav-link button_three" data-toggle="tab"
                                                       role="tab" aria-controls="tab3" aria-selected="false"><img
                                                            src="images/product/72.jpg" alt=""></a>
                                                </li>
                                                <li>
                                                    <a href="#tab4" class="nav-link" data-toggle="tab" role="tab"
                                                       aria-controls="tab4" aria-selected="false"><img
                                                            src="images/product/73.jpg" alt=""></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-12">
                                    <div class="modal_right">
                                        <div class="modal_title mb-10">
                                            <h2>Women's Necklace</h2>
                                        </div>
                                        <div class="modal_price mb-10">
                                            <span class="new_price">$. 51164</span>
                                            <span class="old_price">$. 54164</span>
                                        </div>
                                        <div class="see_all">
                                            <a href="#">See All Features</a>
                                        </div>
                                        <div class="modal_add_to_cart mb-15">
                                            <form action="MainController" method="POST">
                                                <input type="number" min="0" max="100" step="1">
                                                <button type="submit" name="btAction" value="AddToCart">Add To Cart</button>
                                            </form>
                                        </div>
                                        <div class="modal_description mb-15">
                                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ducimus quibusdam
                                                nisi voluptas consequatur tempora, recusandae nemo blanditiis eaque odit
                                                voluptatibus voluptatem, ipsa incidunt fugiat a.</p>
                                        </div>
                                        <div class="modal_social">
                                            <h2>Share this Product</h2>
                                            <ul>
                                                <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                                <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                                <li><a href="#"><i class="ion-social-rss"></i></a></li>
                                                <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                                                <li><a href="#"><i class="ion-social-youtube"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal section ends -->







        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <!-- JavaScript Bundle with Popper.js -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

        <script src="./js/main.js"></script>
    </body>


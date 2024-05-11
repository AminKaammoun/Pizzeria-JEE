<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@ include file ="/include/css.jsp" %>
</head>
<body>
<%@ include file ="/include/header.jsp" %>
<%
boolean loggedIn = false;
String username = null;

if (sess != null) {
    username = (String) sess.getAttribute("login");
    System.out.println("name : " +username);
	isLoggedIn = true;
    if (username != null) {
        // Attribute exists, you can use it
        // Example: out.println("Welcome back, " + username);
    } else {
        // Attribute doesn't exist
        // Example: out.println("You are not logged in");
    }
} else {
    // Session doesn't exist
    // Example: out.println("You are not logged in");
}
%>
	<div class="container-full ">

		<div class="themability-banner box-module ">
			<div class="block_box">
				<div>
					<div class="banner-owl-carousel owl-carousel owl-theme owl-loaded owl-drag">
						<div class="row-items category-layout col-xs-12">
							<div class="themability-banner-image">
								<img src="assets/images/banners/mainbanner1.jpg" alt="Noelle Salar" class=" img-responsive ">
							</div>
						</div>
						<div class="row-items category-layout col-xs-12">
							<div class="themability-banner-image">
								<img src="assets/images/banners/mainbanner2.jpg" alt="Noelle Salar" class=" img-responsive ">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- .Banner -->
	<!-- foor Free -->
	<div class="service-box  wow fadeInUp top-margin-all ">
		<div class="container">
			<div class="promo-item ">
				<div class="row">
					<div class="service-item col-md-3 col-xs-6">
						<div class="service">
							<div class=" icon-shipping service-icon-foor"></div>
							<div class="service-content">
								<h4 class="promo-title">Free shipping</h4> <span class="promo-desc">On order over
									$150</span>
							</div>
						</div>
					</div>
					<div class="service-item col-md-3 col-xs-6">
						<div class="service">
							<div class=" icon-wallet service-icon-foor"></div>
							<div class="service-content">
								<h4 class="promo-title">Cash On Delivery</h4> <span class="promo-desc">100% money back
									guarantee</span>
							</div>
						</div>
					</div>
					<div class="service-item col-md-3 col-xs-6">
						<div class="service">
							<div class="icon-gift service-icon-foor"></div>
							<div class="service-content">
								<h4 class="promo-title">Special Gift Card</h4> <span class="promo-desc">Offer special
									bonuses with gift</span>
							</div>
						</div>
					</div>
					<div class="service-item col-md-3 col-xs-6">
						<div class="service">
							<div class="icon-customer-service service-icon-foor"></div>
							<div class="service-content">
								<h4 class="promo-title">24/7 customer service</h4> <span class="promo-desc">Call us 24/7
									at 123-456-789</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- .foor Free -->
	<!-- Top PRODUCT  -->
	
	

	<!-- .Top PRODUCT  -->

	<!-- VEGGIE FUN  DELICIOUS SUMMER! -->

	<div class="html2  wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
		<div class="banner3">
			<div class="pizza1"></div>
			<div class="banner-sale"><span>Get up to</span><span>45%</span><span>OFF</span></div>
			<div class="inner1">
				<div class="banner-desc">VEGGIE FUN <br>DELICIOUS SUMMER!</div> <a href="shop.jsp" class="btn-default">Order
					Now</a>
			</div>
			<div class="pizza2"></div> 
		</div>
	</div>
	<!-- .VEGGIE FUN  DELICIOUS SUMMER! -->


<%@ include file ="/include/footer.jsp" %>
<%@ include file ="/include/js.jsp" %>
</body>
</html>

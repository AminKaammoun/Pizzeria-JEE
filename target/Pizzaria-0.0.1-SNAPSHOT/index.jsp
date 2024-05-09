<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<%@ include file ="/include/css.jsp" %>
</head>
<body>
<%@ include file ="/include/header.jsp" %>
<%
boolean loggedIn = false;

HttpSession sessi = request.getSession(false); // false means don't create a new session if it doesn't exist

if (sess != null) {
    String username = (String) sessi.getAttribute("login");
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
	<div class="product-tab-block wow fadeInUp top-margin-all">
		<div class="container">
			<div class="main-tab">
				<div class="product-tabs box-content clearfix">
					<div class="page-title toggled">
						<h3>Top Product</h3>
					</div>
					<div id="tabs_1" class="themability-tabs section">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<a href="#latest" class="nav-link active hscp-hover" id="latest-tab" data-bs-toggle="tab" data-bs-target="#latest" type="" role="tab" aria-controls="latest" aria-selected="true"><span>Latest</span></a>
							</li>
							<li class="nav-item" role="presentation">
								<a href="#special" class="nav-link hscp-hover" id="special-tab" data-bs-toggle="tab" data-bs-target="#special" type="" role="tab" aria-controls="special" aria-selected="false"><span>Special</span></a>
							</li>
							<li class="nav-item" role="presentation">
								<a href="#bestseller" class="nav-link hscp-hover" id="bestseller-tab" data-bs-toggle="tab" data-bs-target="#bestseller" type="" role="tab" aria-controls="bestseller" aria-selected="false"><span>Bestseller</span></a>
							</li>
						</ul>
					</div>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="latest" role="tabpanel" aria-labelledby="latest-tab">
							<div class="block_box">
								<div class="row">
									<div class="category-box">
										<div class="category-feature-list ">
											<div class="top-latest owl-carousel">
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/15.jpg" alt="PeppiPizza" title="PeppiPizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">PeppiPizza</a>
																		</h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$241.99
																			<span class="price-tax">Without tax:
																				$199.99</span>
																		</p>
																		<p class="description">
																			Samsung Galaxy Tab 10.1, is the world’s
																			thinnest
																			tablet, measuring 8.6 mm thickness, running
																			with
																			Android 3.0 Honeycomb OS on a 1GHz dual-core
																			Tegra 2
																			processor, similar to its younger brother
																			Samsung
																			Galaxy Tab 8.9.
																			Samsung Galaxy Tab 1..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a> </span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/1.jpg" alt="Sunrise Patrol" title="Sunrise Patrol" class="img-responsive">
																</a>
																<div class="product-sale">
																	<span>25% Off</span>
																</div>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Sunrise
																				Patrol</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			<span class="price-new">$92.00</span><span class="price-old">$122.00</span>
																			<span class="price-tax">Without tax:
																				$75.00</span>
																		</p>
																		<p class="description">
																			More room to move.
																			With 80GB or 160GB of storage and up to 40
																			hours of
																			battery life, the new iPod classic lets you
																			enjoy up
																			to 40,000 songs or up to 200 hours of video
																			or any
																			combination wherever you go.
																			Cover Flow.
																			..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a> </span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/11.jpg" alt="veggie delight" title="veggie delight" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">veggie
																				delight</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			Stop your co-workers in their tracks with
																			the
																			stunning new 30-inch diagonal HP LP3065 Flat
																			Panel
																			Monitor. This flagship monitor features
																			best-in-class performance and presentation
																			features
																			on a huge wide-aspect screen while letting
																			you work
																			as com..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/9.jpg" alt="italian treat" title="italian treat" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">italian
																				treat</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$1,202.00
																			<span class="price-tax">Without tax:
																				$1,000.00</span>
																		</p>
																		<p class="description">
																			Unprecedented power. The next generation of
																			processing technology has arrived. Built
																			into the
																			newest VAIO notebooks lies Intel's latest,
																			most
																			powerful innovation yet: Intel® Centrino® 2
																			processor technology. Boasting incredible
																			speed, ..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/4.jpg" alt="Flyer's Pizza" title="Flyer's Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Flyer's
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$2,000.00
																			<span class="price-tax">Without tax:
																				$2,000.00</span>
																		</p>
																		<p class="description">
																			Latest Intel mobile architecture
																			Powered by the most advanced mobile
																			processors from Intel, the new Core 2 Duo
																			MacBook Pro is over 50% faster than the
																			original Core Duo MacBook Pro and now
																			supports up to 4GB of RAM.
																			Leadin..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class="">Order Now</span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/3.jpg" alt="Margherita" title="Margherita" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Margherita</a>
																		</h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$1,202.00
																			<span class="price-tax">Without tax:
																				$1,000.00</span>
																		</p>
																		<p class="description">
																			MacBook Air is ultrathin, ultraportable, and
																			ultra unlike anything else. But you don’t
																			lose inches and pounds overnight. It’s the
																			result of rethinking conventions. Of
																			multiple wireless innovations. And of
																			breakthrough design. With MacB..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column ">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/2.jpg" alt="peri peri" title="peri peri" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">peri
																				peri</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$602.00
																			<span class="price-tax">Without tax:
																				$500.00</span>
																		</p>
																		<p class="description">
																			Intel Core 2 Duo processor
																			Powered by an Intel Core 2 Duo processor at
																			speeds up to 2.16GHz, the new MacBook is the
																			fastest ever.
																			1GB memory, larger hard drives
																			The new MacBook now comes with 1GB of memory
																			standard and larger..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/1.jpg" alt="Speedy Pizza" title="Speedy Pizza" class="img-responsive">
																</a>
																<div class="product-sale">
																	<span>10% Off</span>
																</div>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Speedy
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			<span class="price-new">$110.00</span><span class="price-old">$122.00</span>
																			<span class="price-tax">Without tax:
																				$90.00</span>
																		</p>
																		<p class="description">
																			The 30-inch Apple Cinema HD Display delivers
																			an amazing 2560 x 1600 pixel resolution.
																			Designed specifically for the creative
																			professional, this display provides more
																			space for easier access to all the tools and
																			palettes needed to edit, format and ..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/13.jpg" alt="thin crust" title="thin crust" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">thin
																				crust</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			Just when you thought iMac had everything,
																			now
																			there´s even more. More powerful Intel Core
																			2 Duo
																			processors. And more memory standard.
																			Combine this
																			with Mac OS X Leopard and iLife ´08, and
																			it´s more
																			all-in-one than ever. iMac packs amazing
																			perform..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/14.jpg" alt="Pioneer Pizza" title="Pioneer Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Pioneer
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$123.20
																			<span class="price-tax">Without tax:
																				$101.00</span>
																		</p>
																		<p class="description">
																			iPhone is a revolutionary new mobile phone
																			that
																			allows you to make a call by simply tapping
																			a name
																			or number in your address book, a favorites
																			list, or
																			a call log. It also automatically syncs all
																			your
																			contacts from a PC, Mac, or Internet
																			service. ..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/4.jpg" alt="Taco Pizza" title="Taco Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Taco
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			Video in your pocket.
																			Its the small iPod with one very big idea:
																			video.
																			The worlds most popular music player now
																			lets you
																			enjoy movies, TV shows, and more on a
																			two-inch
																			display thats 65% brighter than before.
																			Cover Flow.
																			Brow..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/7.jpg" alt="Skyline Pizza" title="Skyline Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Skyline
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">Description
																			Specification
																			Reviews (1)
																			Intel Core 2 Duo processor
																			Powered by an Intel Core 2 Duo processor at
																			speeds
																			up to 2.16GHz, the new MacBook is the
																			fastest ever.
																			1GB memory, larger hard drives
																			The new MacBook now comes with 1G..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/9.jpg" alt="Mozzarella" title="Mozzarella" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Mozzarella</a>
																		</h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			Born to be worn.
																			Clip on the worlds most wearable music
																			player and
																			take up to 240 songs with you anywhere.
																			Choose from
																			five colors including four new hues to make
																			your
																			musical fashion statement.
																			Random meets rhythm.
																			With iTunes a..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/16.jpg" alt="jain pizza" title="jain pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">jain
																				pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$242.00
																			<span class="price-tax">Without tax:
																				$200.00</span>
																		</p>
																		<p class="description">
																			Imagine the advantages of going big without
																			slowing
																			down. The big 19" 941BW monitor combines
																			wide aspect
																			ratio with fast pixel response time, for
																			bigger
																			images, more room to work and crisp motion.
																			In
																			addition, the exclusive MagicBright 2, Mag..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/7.jpg" alt="Buttercrust" title="Buttercrust" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Buttercrust</a>
																		</h4>
																		<div class="rating">
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			Revolutionary multi-touch interface.
																			iPod touch features the same multi-touch
																			screen
																			technology as iPhone. Pinch to zoom in on a
																			photo.
																			Scroll through your songs and videos with a
																			flick.
																			Flip through your library by album artwork
																			with
																			Cover Flow..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/5.jpg" alt="Stuff Pizza" title="Stuff Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Stuff
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"> <i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$98.00
																			<span class="price-tax">Without tax:
																				$80.00</span>
																		</p>
																		<p class="description">
																			Engineered with pro-level features and
																			performance,
																			the 12.3-effective-megapixel D300 combines
																			brand new
																			technologies with advanced features
																			inherited from
																			Nikon's newly announced D3 professional
																			digital SLR
																			camera to offer serious photogr..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/10.jpg" alt="Sicilian Pizza" title="Sicilian Pizza" class="img-responsive">
																</a>
																<div class="product-sale">
																	<span>20% Off</span>
																</div>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Sicilian
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			<span class="price-new">$98.00</span><span class="price-old">$122.00</span>
																			<span class="price-tax">Without tax:
																				$80.00</span>
																		</p>
																		<p class="description">
																			Canon's press material for the EOS 5D states
																			that it
																			'defines (a) new D-SLR category', while
																			we're not
																			typically too concerned with marketing talk
																			this
																			particular statement is clearly pretty
																			accurate. The
																			EOS 5D is unlike any previous digital SLR ..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">

																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/6.jpg" alt="gorgonzola" title="gorgonzola" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">gorgonzola</a>
																		</h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$337.99
																			<span class="price-tax">Without tax:
																				$279.99</span>
																		</p>
																		<p class="description">
																			Redefine your workday with the Palm Treo Pro
																			smartphone. Perfectly balanced, you can
																			respond to
																			business and personal email, stay on top of
																			appointments and contacts, and use Wi-Fi or
																			GPS when
																			you’re out and about. Then watch a video on
																			YouT..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/12.jpg" alt="Prime Pizza" title="Prime Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Prime
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			HTC Touch - in High Definition. Watch music
																			videos
																			and streaming content in awe-inspiring high
																			definition clarity for a mobile experience
																			you never
																			thought possible. Seductively sleek, the HTC
																			Touch
																			HD provides the next generation of mobile
																			functi..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
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
						</div>
						<div class="tab-pane fade" id="special" role="tabpanel" aria-labelledby="special-tab">
							<div class="block_box">
								<div class="row">
									<div class="category-box">
										<div class="category-feature-list ">
											<div class="top-special owl-carousel">
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/10.jpg" alt="Sicilian Pizza" title="Sicilian Pizza" class="img-responsive">
																</a>
																<div class="product-sale">
																	<span>20% Off</span>
																</div>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Sicilian
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			<span class="price-new">$98.00</span><span class="price-old">$122.00</span>
																			<span class="price-tax">Without tax:
																				$80.00</span>
																		</p>
																		<p class="description">
																			Canon's press material for the EOS 5D states
																			that it
																			'defines (a) new D-SLR category', while
																			we're not
																			typically too concerned with marketing talk
																			this
																			particular statement is clearly pretty
																			accurate. The
																			EOS 5D is unlike any previous digital SLR ..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column ">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/1.jpg" alt="Speedy Pizza" title="Speedy Pizza" class="img-responsive">
																</a>
																<div class="product-sale">
																	<span>10% Off</span>
																</div>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Speedy
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			<span class="price-new">$110.00</span><span class="price-old">$122.00</span>
																			<span class="price-tax">Without tax:
																				$90.00</span>
																		</p>
																		<p class="description">
																			The 30-inch Apple Cinema HD Display delivers
																			an amazing 2560 x 1600 pixel resolution.
																			Designed specifically for the creative
																			professional, this display provides more
																			space for easier access to all the tools and
																			palettes needed to edit, format and ..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/1.jpg" alt="Sunrise Patrol" title="Sunrise Patrol" class="img-responsive">
																</a>
																<div class="product-sale">
																	<span>25% Off</span>
																</div>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Sunrise
																				Patrol</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			<span class="price-new">$92.00</span><span class="price-old">$122.00</span>
																			<span class="price-tax">Without tax:
																				$75.00</span>
																		</p>
																		<p class="description">
																			More room to move.
																			With 80GB or 160GB of storage and up to 40
																			hours of
																			battery life, the new iPod classic lets you
																			enjoy up
																			to 40,000 songs or up to 200 hours of video
																			or any
																			combination wherever you go.
																			Cover Flow.
																			..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
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
						</div>
						<div class="tab-pane fade" id="bestseller" role="tabpanel" aria-labelledby="bestseller-tab">
							<div class="block_box">
								<d iv class="row">
									<div class="category-box">
										<div class="category-feature-list ">
											<div class="top-bestseller owl-carousel">
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/14.jpg" alt="Pioneer Pizza" title="Pioneer Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Pioneer
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$123.20
																			<span class="price-tax">Without tax:
																				$101.00</span>
																		</p>
																		<p class="description">
																			iPhone is a revolutionary new mobile phone
																			that
																			allows you to make a call by simply tapping
																			a name
																			or number in your address book, a favorites
																			list, or
																			a call log. It also automatically syncs all
																			your
																			contacts from a PC, Mac, or Internet
																			service. ..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/1.jpg" alt="Sunrise Patrol" title="Sunrise Patrol" class="img-responsive">
																</a>
																<div class="product-sale">
																	<span>25% Off</span>
																</div>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Sunrise
																				Patrol</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			<span class="price-new">$92.00</span><span class="price-old">$122.00</span>
																			<span class="price-tax">Without tax:
																				$75.00</span>
																		</p>
																		<p class="description">
																			More room to move.
																			With 80GB or 160GB of storage and up to 40
																			hours of
																			battery life, the new iPod classic lets you
																			enjoy up
																			to 40,000 songs or up to 200 hours of video
																			or any
																			combination wherever you go.
																			Cover Flow.
																			..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-colmn">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/16.jpg" alt="jain pizza" title="jain pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">jain
																				pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$242.00
																			<span class="price-tax">Without tax:
																				$200.00</span>
																		</p>
																		<p class="description">
																			Imagine the advantages of going big without
																			slowing
																			down. The big 19" 941BW monitor combines
																			wide aspect
																			ratio with fast pixel response time, for
																			bigger
																			images, more room to work and crisp motion.
																			In
																			addition, the exclusive MagicBright 2, Mag..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/13.jpg" alt="thin crust" title="thin crust" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">thin
																				crust</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			Just when you thought iMac had everything,
																			now
																			there´s even more. More powerful Intel Core
																			2 Duo
																			processors. And more memory standard.
																			Combine this
																			with Mac OS X Leopard and iLife ´08, and
																			it´s more
																			all-in-one than ever. iMac packs amazing
																			perform..
																		</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="single-column">
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/7.jpg" alt="Skyline Pizza" title="Skyline Pizza" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" title="" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" title="" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">Skyline
																				Pizza</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">Description
																			Specification
																			Reviews (1)
																			Intel Core 2 Duo processor
																			Powered by an Intel Core 2 Duo processor at
																			speeds
																			up to 2.16GHz, the new MacBook is the
																			fastest ever.
																			1GB memory, larger hard drives
																			The new MacBook now comes with 1G..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="product-layout col-xs-12">
														<div class="product-thumb transition">
															<div class="image">
																<a href="product.html" class="thumb-image">
																	<img src="assets/images/products/11.jpg" alt="veggie delight" title="veggie delight" class="img-responsive">
																</a>
																<div class="button-group">
																	<button class="wishlist" type="button" data-toggle="tooltip" data-original-title="Add to wishlist"><i class="icon-like"></i></button>
																	<button class="compare" type="button" data-toggle="tooltip" data-original-title="Compare"><i class="icon-shuffle-arrows"></i></button>
																	<button class="themability_quickview-button" type="button" data-toggle="tooltip" title="" data-original-title="Quickview"><i class="icon-eye"></i></button>
																</div>
															</div>
															<div class="product-description">
																<div class="caption">
																	<div class="title-rating clearfix">
																		<h4 class="product-title"><a href="#">veggie
																				delight</a></h4>
																		<div class="rating">
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
																			<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
																		</div>
																	</div>
																	<div class="price-cartbtn clearfix">
																		<p class="price">
																			$122.00
																			<span class="price-tax">Without tax:
																				$100.00</span>
																		</p>
																		<p class="description">
																			Stop your co-workers in their tracks with
																			the
																			stunning new 30-inch diagonal HP LP3065 Flat
																			Panel
																			Monitor. This flagship monitor features
																			best-in-class performance and presentation
																			features
																			on a huge wide-aspect screen while letting
																			you work
																			as com..</p>
																		<button class="addcart" type="button" title="Order Now"><i class="icon-shopping-bag hidden"></i><span class=""><a href="shopping-cart.html">Order
																					Now</a></span></button>
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
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!-- .Top PRODUCT  -->

	<!-- VEGGIE FUN  DELICIOUS SUMMER! -->

	<div class="html2  wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
		<div class="banner3">
			<div class="pizza1"></div>
			<div class="banner-sale"><span>Get up to</span><span>45%</span><span>OFF</span></div>
			<div class="inner1">
				<div class="banner-desc">VEGGIE FUN <br>DELICIOUS SUMMER!</div> <a href="#" class="btn-default">Order
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

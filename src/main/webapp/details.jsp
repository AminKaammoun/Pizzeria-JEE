<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@ include file="/include/css.jsp"%>
</head>
<body>
	<%@ page import="model.Pizza"%>
	<%@ page import="dao.PizzaDAO"%>
	<%@ include file="/include/header.jsp"%> 
	<%
	String pizzaId = request.getParameter("pizzaId");
	%>

	<%
	PizzaDAO pizzaDao = new PizzaDAO();
	Pizza pizza = pizzaDao.findById(Integer.parseInt(pizzaId));
	%>
	<div class="blog-section buttercrust">
		<div class="container">
			<div class="row">
				<div id="content" class="col-sm-12">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title"><%=pizza.getName()%></h1>
							<ul class="breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="shop.jsp">Shop </a></li>
								<li><a href="#"><%=pizza.getName()%></a></li>
							</ul>
						</div>
					</div>
					<div class="pro-deatil product-content">
						<div class="row">
							<div class="col-sm-6 product-left">
								<div class="thumbnails">
									<div class="pro-image" id="img-1">
										<a class="thumbnail" href="#"> <img
											src="assets/images/products/<%=pizza.getImage()%>"
											title="Buttercrust" id="prozoom" alt="Buttercrust"
											data-zoom-image="assets/images/products/7-570x570.jpg">
										</a>
									</div>
									<div id="additional-carousel"
										class="additional-carousel owl-carousel">
										<div class="category-layout col-xs-12">
											<div class="image-additional">
												<a href="#" title="Buttercrust" class="elevatezoom-gallery"
													data-image="assets/images/products/<%=pizza.getImage()%>"
													data-zoom-image="assets/images/products/<%=pizza.getImage()%>">
													<img src="assets/images/products/<%=pizza.getImage()%>"
													title="Buttercrust" alt="Buttercrust" class="w-100">
												</a>
											</div>
										</div>
										<div class="category-layout col-xs-12">
											<div class="image-additional">
												<a href="#" class="elevatezoom-gallery" title="Buttercrust"
													data-image="assets/images/products/<%=pizza.getImage()%>"
													data-zoom-image="assets/images/products/<%=pizza.getImage()%>">
													<img src="assets/images/products/<%=pizza.getImage()%>"
													title="Buttercrust" alt="Buttercrust" class="w-100">
												</a>
											</div>
										</div>
										<div class="category-layout col-xs-12">
											<div class="image-additional">
												<a href="#" class="elevatezoom-gallery" title="Buttercrust"
													data-image="assets/images/products/<%=pizza.getImage()%>"
													data-zoom-image="assets/images/products/<%=pizza.getImage()%>">
													<img src="assets/images/products/<%=pizza.getImage()%>"
													title="Buttercrust" alt="Buttercrust" class="w-100">
												</a>
											</div>
										</div>
										<div class="category-layout col-xs-12">
											<div class="image-additional">
												<a href="#" class="elevatezoom-gallery" title="Buttercrust"
													data-image="assets/images/products/<%=pizza.getImage()%>"
													data-zoom-image="assets/images/products/<%=pizza.getImage()%>">
													<img src="assets/images/products/<%=pizza.getImage()%>"
													title="Buttercrust" alt="Buttercrust" class="w-100">
												</a>
											</div>
										</div>
										<div class="category-layout col-xs-12">
											<div class="image-additional">
												<a href="#" class="elevatezoom-gallery" title="Buttercrust"
													data-image="assets/images/products/<%=pizza.getImage()%>"
													data-zoom-image="assets/images/products/<%=pizza.getImage()%>">
													<img src="assets/images/products/<%=pizza.getImage()%>"
													title="Buttercrust" alt="Buttercrust" class="w-100">
												</a>
											</div>
										</div>
										<div class="category-layout col-xs-12">
											<div class="image-additional">
												<a href="#" class="elevatezoom-gallery" title="Buttercrust"
													data-image="assets/images/products/<%=pizza.getImage()%>"
													data-zoom-image="assets/images/products/<%=pizza.getImage()%>">
													<img src="assets/images/products/<%=pizza.getImage()%>"
													title="Buttercrust" alt="Buttercrust" class="w-100">
												</a>
											</div>
										</div>
										<div class="category-layout col-xs-12">
											<div class="image-additional">
												<a href="#" class="elevatezoom-gallery" title="Buttercrust"
													data-image="assets/images/products/<%=pizza.getImage()%>"
													data-zoom-image="assets/images/products/<%=pizza.getImage()%>">
													<img src="assets/images/products/<%=pizza.getImage()%>"
													title="Buttercrust" alt="Buttercrust" class="w-100">
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						
						
						<div class="col-sm-6 product-right">
    <h1><%= pizza.getName() %></h1>
    <div class="rating">
        <div class="product-rating">
            <!-- Rating stars -->
            <span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
            <span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
            <span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
            <span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
            <span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
        </div>
        <a href="#" class="review">0 reviews</a>
        <a href="#" class="write-review" onclick="$('a[href=\'#special\']').tab('show'); $('body,html').animate({scrollTop: $('#myTabContent').offset().top-350}, 500); return false;">
            <i class="fa fa-pencil"></i> Write a review
        </a>
    </div>
    <hr>
    <!-- Product details list -->
    <ul class="list-unstyled manufacturer-listpro">
        <li><span class="disc">Brand:</span> <a class="disc1" href="#">Blue Baker</a></li>
        <li><span class="disc">Product Code:</span> <span class="disc1">Product 5</span></li>
        <li><span class="disc">Availability:</span> <span class="disc1">In Stock</span></li>
    </ul>
    <hr>
    <!-- Pizza size selection -->
    <form action="Details" method="post">
        <ul class="list-unstyled">
            <li>
                <input type="radio" name="size" value="Small">
                <h2 class="pro_price"><%= pizza.getSizeToPrice().get("Small") %> DT</h2>
            </li>
            <li class="tax">Small</li>
            <hr>
            <li>
                <input type="radio" name="size" value="Medium" checked>
                <h2 class="pro_price"><%= pizza.getSizeToPrice().get("Medium") %> DT</h2>
            </li>
            <li class="tax">Medium</li>
            <hr>
            <li>
                <input type="radio" name="size" value="Large">
                <h2 class="pro_price"><%= pizza.getSizeToPrice().get("Large") %> DT</h2>
            </li>
            <li class="tax">Large</li>
            <hr>
        </ul>
        <!-- Quantity selection -->
        <div class="quantity-addcart">
            <div class="proquantity-detail">
                <label class="control-label quantity-label" for="input-quantity">Qty</label>
                <div class="product-btn-quantity">
                    <button class="minus"><i class="fa fa-minus"></i></button>
                    <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control">
                    <button class="plus"><i class="fa fa-plus"></i></button>
                </div>
            </div>
            <!-- Hidden input for product ID -->
            <input type="hidden" name="id" value="<%=pizza.getId()%>">
               <input type="hidden" name="price" value="<%=pizza.getSizeToPrice().get("Medium")%>">
            <!-- Add to cart button -->
            <div class="pro-cart">
                <button type="submit" id="button-cart" class="btn btn-primary btn-lg btn-block">
                    <i class="icon-bag"></i> Order Now
                </button>
            </div>
        </div>
    </form>
    <hr>
    <!-- Additional buttons (Wishlist, Compare) -->
    <div class="btn-group pro-buttons">
        <button type="button" class="btn pro-wishlist" title="Add to Wish List">
            <i class="icon-like"></i><span class="hidden-sm hidden-xs"> Add to Wish List</span>
        </button>
        <button type="button" class="btn pro-compare" title="Compare this Product">
            <i class="icon-shuffle-arrows"></i><span class="hidden-sm hidden-xs"> Compare this Product</span>
        </button>
    </div>
</div>
						
						
						
						</div>
					</div>
					<div id="tabs_1" class="propage-tab top-margin-all">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item" role="presentation"><a href="#latest"
								class="nav-link active hscp-hover" id="latest-tab"
								data-bs-toggle="tab" data-bs-target="#latest" type="" role="tab"
								aria-controls="latest" aria-selected="true"><span>Description
								</span></a></li>
							<li class="nav-item" role="presentation"><a href="#special"
								class="nav-link hscp-hover" id="special-tab"
								data-bs-toggle="tab" data-bs-target="#special" type=""
								role="tab" aria-controls="special" aria-selected="false"><span>Reviews
										(0)</span></a></li>
						</ul>
					</div>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="latest" role="tabpanel"
							aria-labelledby="latest-tab">
							<div class="tab-pane " id="tab-description">
								<p>
									<strong>Revolutionary multi-touch interface.</strong><br>
									iPod touch features the same multi-touch screen technology as
									iPhone. Pinch to zoom in on a photo. Scroll through your songs
									and videos with a flick. Flip through your library by album
									artwork with Cover Flow.
								</p>
								<p>
									<strong>Gorgeous 3.5-inch widescreen display.</strong><br>
									Watch your movies, TV shows, and photos come alive with bright,
									vivid color on the 320-by-480-pixel display.
								</p>
								<p>
									<strong>Music downloads straight from iTunes.</strong><br>
									Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1
									Browse or search to find the music youre looking for, preview
									it, and buy it with just a tap.
								</p>
								<p>
									<strong>Surf the web with Wi-Fi.</strong><br> Browse the
									web using Safari and watch YouTube videos on the first iPod
									with Wi-Fi built in<br> &nbsp;
								</p>
							</div>
						</div>
						<div class="tab-pane fade" id="special" role="tabpanel"
							aria-labelledby="special-tab">
							<form class="form-horizontal" id="form-review">
								<div id="review">
									<p>There are no reviews for this product.</p>
								</div>
								<h2 class="review-title">Write a review</h2>
								<div class="form-group required">
									<div class="col-sm-12">
										<label class="control-label" for="input-name">Your
											Name</label> <input type="text" name="name" value="" id="input-name"
											class="form-control">
									</div>
								</div>
								<div class="form-group required">
									<div class="col-sm-12">
										<label class="control-label" for="input-review">Your
											Review</label>
										<textarea name="text" rows="5" id="input-review"
											class="form-control"></textarea>
										<div class="help-block">
											<span class="text-danger">Note:</span> HTML is not
											translated!
										</div>
									</div>
								</div>
								<div class="form-group required">
									<div class="col-sm-12 rating">
										<label class="control-label">Rating</label> &nbsp;&nbsp;&nbsp;
										Bad&nbsp; <span class="fa fa-stack"><i
											class="fa-regular fa-star"></i></span> &nbsp; <span
											class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
										&nbsp; <span class="fa fa-stack"><i
											class="fa-regular fa-star"></i></span> &nbsp; <span
											class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
										&nbsp; <span class="fa fa-stack"><i
											class="fa-regular fa-star"></i></span> &nbsp;Good
									</div>
								</div>
								<div class="buttons clearfix">
									<div class="pull-right">
										<input class="btn btn-primary" type="submit" value="Submit">
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="box related-products top-margin-all">
						<div class="page-title">
							<h3>Related Products</h3>
						</div>
						<div class="row">
							<div id="related-carousel"
								class="box-product  product-carousel  clearfix owl-carousel owl-theme owl-loaded owl-drag"
								data-items="4">
								<div class="related-products-1 owl-stage">
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/6.jpg" alt="gorgonzola"
														title="gorgonzola" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">gorgonzola</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$337.99 <span class="price-tax">Ex Tax: $279.99</span>
															</p>
															<p class="description">Redefine your workday with the
																Palm Treo Pro smartphone. Perfectly balanced, you can
																respond to business and personal email, stay on top of
																appointments and contacts, and use Wi-Fi or GPS when
																you’re out and about. Then watch a video on YouTube..</p>
															<button class="addcart" type="button" title="Add To Cart">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/5.jpg" alt="Stuff Pizza"
														title="Stuff Pizza" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">Stuff Pizza</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$98.00 <span class="price-tax">Ex Tax: $80.00</span>
															</p>
															<p class="description">Engineered with pro-level
																features and performance, the 12.3-effective-megapixel
																D300 combines brand new technologies with advanced
																features inherited from Nikon's newly announced D3
																professional digital SLR camera to offer serious
																photographers ..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/4.jpg" alt="Taco Pizza"
														title="Taco Pizza" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">Taco Pizza</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$122.00 <span class="price-tax">Ex Tax: $100.00</span>
															</p>
															<p class="description">Video in your pocket. Its the
																small iPod with one very big idea: video. The worlds
																most popular music player now lets you enjoy movies, TV
																shows, and more on a two-inch display thats 65% brighter
																than before. Cover Flow. Browse thro..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/13.jpg" alt="thin crust"
														title="thin crust" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">thin crust</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$122.00 <span class="price-tax">Ex Tax: $100.00</span>
															</p>
															<p class="description">Just when you thought iMac had
																everything, now there´s even more. More powerful Intel
																Core 2 Duo processors. And more memory standard. Combine
																this with Mac OS X Leopard and iLife ´08, and it´s more
																all-in-one than ever. iMac packs amazing performanc..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/1.jpg" alt="Speedy Pizza"
														title="Speedy Pizza" class="img-responsive">
													</a>
													<div class="product-sale">
														<span>10% Off</span>
													</div>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">Speedy Pizza</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																<span class="price-new">$110.00</span><span
																	class="price-old">$122.00</span> <span
																	class="price-tax">Ex Tax: $90.00</span>
															</p>
															<p class="description">The 30-inch Apple Cinema HD
																Display delivers an amazing 2560 x 1600 pixel
																resolution. Designed specifically for the creative
																professional, this display provides more space for
																easier access to all the tools and palettes needed to
																edit, format and com..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/2.jpg" alt="peri peri"
														title="peri peri" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">peri peri</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$602.00 <span class="price-tax">Ex Tax: $500.00</span>
															</p>
															<p class="description">Intel Core 2 Duo processor

																Powered by an Intel Core 2 Duo processor at speeds up to
																2.16GHz, the new MacBook is the fastest ever. 1GB
																memory, larger hard drives The new MacBook now comes
																with 1GB of memory standard and larger hard d..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/3.jpg" alt="Margherita"
														title="Margherita" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">Margherita</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$1,202.00 <span class="price-tax">Ex Tax:
																	$1,000.00</span>
															</p>
															<p class="description">MacBook Air is ultrathin,
																ultraportable, and ultra unlike anything else. But you
																don’t lose inches and pounds overnight. It’s the result
																of rethinking conventions. Of multiple wireless
																innovations. And of breakthrough design. With MacBook..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item ">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/4.jpg" alt="Flyer's Pizza"
														title="Flyer's Pizza" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">Flyer's Pizza</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$2,000.00 <span class="price-tax">Ex Tax:
																	$2,000.00</span>
															</p>
															<p class="description">Latest Intel mobile
																architecture Powered by the most advanced mobile
																processors from Intel, the new Core 2 Duo MacBook Pro is
																over 50% faster than the original Core Duo MacBook Pro
																and now supports up to 4GB of RAM. Leading-edge graph..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/11.jpg" alt="veggie delight"
														title="veggie delight" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">veggie delight</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$122.00 <span class="price-tax">Ex Tax: $100.00</span>
															</p>
															<p class="description">Stop your co-workers in their
																tracks with the stunning new 30-inch diagonal HP LP3065
																Flat Panel Monitor. This flagship monitor features
																best-in-class performance and presentation features on a
																huge wide-aspect screen while letting you work as
																comfor..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/1.jpg" alt="Sunrise Patrol"
														title="Sunrise Patrol" class="img-responsive">
													</a>
													<div class="product-sale">
														<span>25% Off</span>
													</div>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">Sunrise Patrol</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa fa-star fa-stack-2x"></i><i
																	class="fa fa-star-o fa-stack-2x"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																<span class="price-new">$92.00</span><span
																	class="price-old">$122.00</span> <span
																	class="price-tax">Ex Tax: $75.00</span>
															</p>
															<p class="description">More room to move. With 80GB
																or 160GB of storage and up to 40 hours of battery life,
																the new iPod classic lets you enjoy up to 40,000 songs
																or up to 200 hours of video or any combination wherever
																you go. Cover Flow. Browse thr..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="owl-item">
										<div class="product-layout col-xs-12">
											<div class="product-thumb transition">
												<div class="image">
													<a href="product.html" class="thumb-image"> <img
														src="assets/images/products/15.jpg" alt="PeppiPizza"
														title="PeppiPizza" class="img-responsive">
													</a>
													<div class="button-group">
														<button class="wishlist" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Add to Wish List">
															<i class="icon-like"></i>
														</button>
														<button class="compare" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Compare this Product">
															<i class="icon-shuffle-arrows"></i>
														</button>
														<button class="themability_quickview-button" type="button"
															data-toggle="tooltip" title=""
															data-original-title="Quickview">
															<i class="icon-eye"></i>
														</button>
													</div>
												</div>
												<div class="product-description">
													<div class="caption">
														<div class="title-rating clearfix">
															<h4 class="product-title">
																<a href="#">PeppiPizza</a>
															</h4>
															<div class="rating">
																<span class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span> <span
																	class="fa fa-stack"><i
																	class="fa-regular fa-star"></i></span>
															</div>
														</div>
														<div class="price-cartbtn clearfix">
															<p class="price">
																$241.99 <span class="price-tax">Ex Tax: $199.99</span>
															</p>
															<p class="description">Samsung Galaxy Tab 10.1, is
																the world’s thinnest tablet, measuring 8.6 mm thickness,
																running with Android 3.0 Honeycomb OS on a 1GHz
																dual-core Tegra 2 processor, similar to its younger
																brother Samsung Galaxy Tab 8.9. Samsung Galaxy Tab
																10.1..</p>
															<button class="addcart" type="button" title="Order Now">
																<i class="icon-bag hidden"></i><span>Order Now</span>
															</button>
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


	<%@ include file="/include/footer.jsp"%>
	<%@ include file="/include/js.jsp"%>
</body>
</html>
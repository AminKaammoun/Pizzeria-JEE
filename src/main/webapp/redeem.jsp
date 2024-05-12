<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Redeem</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@ include file="/include/css.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>

	<div class="blog-section donuts">
		<div class="container">
			<div class="row">

				<aside id="column-left" class="col-sm-3">

					<div class="sidebar">
						<div class="box-content">
							<h3 class="toggled relative">Information</h3>
							<ul class="list-unstyled">
								<li><a href="about.jsp" class="list-group-item">About
										Us</a></li>

								<li><a href="contact.jsp" class="list-group-item">Contact
										Us</a></li>
								<li><a href="#" class="list-group-item">My Account</a></li>
								<li><a href="history.jsp" class="list-group-item">Order
										History</a></li>
							</ul>
						</div>
					</div>
				</aside>


				<div id="content" class="col-sm-9  all-blog">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">shop</h1>

							<ul class="breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="#">Pages</a></li>
								<li><a href="my_account.jsp">My Account</a></li>
								<li><a href="#">Redeem</a></li>

							</ul>
						</div>
					</div>

					<h6>
						You have:
						<%=clientDAO.findByLogin((String) sess.getAttribute("email")).getPtDeFidelite()%>
						Points
					</h6>


					<div class="category-row row">
						<div
							class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
							<div class="product-thumb">
								<div class="image">
									<a href="product.html" class="thumb-image"> <img
										src="assets/images/5.png" alt="Buttercrust"
										title="Buttercrust" class="img-responsive">
									</a>

									<div class="product-sale">
										<span>5% Off</span>
									</div>
									<div class="button-group">
										<button class="wishlist" type="button" data-toggle="tooltip"
											title="" data-original-title="Add to Wish List"
											data-bs-original-title="">
											<i class="icon-like"></i>
										</button>
										<button class="compare" type="button" data-toggle="tooltip"
											title="" data-original-title="Compare this Product"
											data-bs-original-title="">
											<i class="icon-shuffle-arrows"></i>
										</button>
										<button class="themability_quickview-button" type="button"
											data-toggle="tooltip" title=""
											data-original-title="Quickview" data-bs-original-title="">
											<i class="icon-eye"></i>
										</button>
									</div>
								</div>
								<div class="product-description">
									<div class="caption">
										<div class="title-rating clearfix">
											<h4 class="product-title">
												<a href="product.html">5% Voucher</a>
											</h4>

										</div>

										<div class="price-cartbtn clearfix">
											<p class="price">
												20 pts <span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<p class="description">Revolutionary multi-touch
												interface. iPod touch features the same multi-touch screen
												technology as iPhone. Pinch to zoom in on a photo. Scroll
												through your songs and videos with a flick. Flip through
												your library by album artwork with Cover Flow. ..</p>
											<button class="addcart" type="button">
												<i class="icon-shopping-bag hidden"></i> <span class=""><a
													href="shopping-cart.html">Redeem</a> </span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
							<div class="product-thumb">
								<div class="image">
									<a href="product.html" class="thumb-image"> <img
										src="assets/images/10.png" alt="gorgonzola" title="gorgonzola"
										class="img-responsive">
									</a>

									<div class="product-sale">
										<span>10% Off</span>
									</div>
									<div class="button-group">
										<button class="wishlist" type="button" data-toggle="tooltip"
											title="" data-original-title="Add to Wish List"
											data-bs-original-title="">
											<i class="icon-like"></i>
										</button>
										<button class="compare" type="button" data-toggle="tooltip"
											title="" data-original-title="Compare this Product"
											data-bs-original-title="">
											<i class="icon-shuffle-arrows"></i>
										</button>
										<button class="themability_quickview-button" type="button"
											data-toggle="tooltip" title=""
											data-original-title="Quickview" data-bs-original-title="">
											<i class="icon-eye"></i>
										</button>
									</div>
								</div>
								<div class="product-description">
									<div class="caption">
										<div class="title-rating clearfix">
											<h4 class="product-title">
												<a href="product.html">10% Voucher</a>
											</h4>

										</div>
										<div class="price-cartbtn clearfix">
											<p class="price">
												35 pts <span class="price-tax">Ex Tax: $279.99</span>
											</p>
											<p class="description">Redefine your workday with the
												Palm Treo Pro smartphone. Perfectly balanced, you can
												respond to business and personal email, stay on top of
												appointments and contacts, and use Wi-Fi or GPS when you’re
												out and about. Then watch a video on YouTube..</p>
											<button class="addcart" type="button">
												<i class="icon-shopping-bag hidden"></i> <span class=""><a
													href="shopping-cart.html">Redeem</a> </span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
							<div class="product-thumb">
								<div class="image">
									<a href="product.html" class="thumb-image"> <img
										src="assets/images/15.png" alt="Mozzarella" title="Mozzarella"
										class="img-responsive">
									</a>

									<div class="product-sale">
										<span>15% Off</span>
									</div>
									<div class="button-group">
										<button class="wishlist" type="button" data-toggle="tooltip"
											title="" data-original-title="Add to Wish List"
											data-bs-original-title="">
											<i class="icon-like"></i>
										</button>
										<button class="compare" type="button" data-toggle="tooltip"
											title="" data-original-title="Compare this Product"
											data-bs-original-title="">
											<i class="icon-shuffle-arrows"></i>
										</button>
										<button class="themability_quickview-button" type="button"
											data-toggle="tooltip" title=""
											data-original-title="Quickview" data-bs-original-title="">
											<i class="icon-eye"></i>
										</button>
									</div>
								</div>
								<div class="product-description">
									<div class="caption">
										<div class="title-rating clearfix">
											<h4 class="product-title">
												<a href="product.html">15% Voucher</a>
											</h4>

										</div>
										<div class="price-cartbtn clearfix">
											<p class="price">
												50 pts <span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<p class="description">Born to be worn. Clip on the
												worlds most wearable music player and take up to 240 songs
												with you anywhere. Choose from five colors including four
												new hues to make your musical fashion statement. Random
												meets rhythm. With iTunes auto..</p>
											<button class="addcart" type="button">
												<i class="icon-shopping-bag hidden"></i> <span class=""><a
													href="shopping-cart.html">Redeem</a> </span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
							<div class="product-thumb">
								<div class="image">
									<a href="product.html" class="thumb-image"> <img
										src="assets/images/25.png" alt="Speedy Pizza"
										title="Speedy Pizza" class="img-responsive">
									</a>
									<div class="product-sale">
										<span>25% Off</span>
									</div>

									<div class="button-group">
										<button class="wishlist" type="button" data-toggle="tooltip"
											title="" data-original-title="Add to Wish List"
											data-bs-original-title="">
											<i class="icon-like"></i>
										</button>
										<button class="compare" type="button" data-toggle="tooltip"
											title="" data-original-title="Compare this Product"
											data-bs-original-title="">
											<i class="icon-shuffle-arrows"></i>
										</button>
										<button class="themability_quickview-button" type="button"
											data-toggle="tooltip" title=""
											data-original-title="Quickview" data-bs-original-title="">
											<i class="icon-eye"></i>
										</button>
									</div>
								</div>
								<div class="product-description">
									<div class="caption">
										<div class="title-rating clearfix">
											<h4 class="product-title">
												<a href="product.html">25% Voucher</a>
											</h4>

										</div>
										<div class="price-cartbtn clearfix">
											<p class="price">
												<span class="price-new">80 pts</span>
											</p>
											<p class="description">The 30-inch Apple Cinema HD
												Display delivers an amazing 2560 x 1600 pixel resolution.
												Designed specifically for the creative professional, this
												display provides more space for easier access to all the
												tools and palettes needed to edit, format and com..</p>
											<button class="addcart" type="button">
												<i class="icon-shopping-bag hidden"></i> <span class=""><a
													href="shopping-cart.html">Redeem</a> </span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
							<div class="product-thumb">
								<div class="image">
									<a href="product.html" class="thumb-image"> <img
										src="assets/images/50.png" alt="veggie delight"
										title="veggie delight" class="img-responsive">
									</a>

									<div class="product-sale">
										<span>50% Off</span>
									</div>
									<div class="button-group">
										<button class="wishlist" type="button" data-toggle="tooltip"
											title="" data-original-title="Add to Wish List"
											data-bs-original-title="">
											<i class="icon-like"></i>
										</button>
										<button class="compare" type="button" data-toggle="tooltip"
											title="" data-original-title="Compare this Product"
											data-bs-original-title="">
											<i class="icon-shuffle-arrows"></i>
										</button>
										<button class="themability_quickview-button" type="button"
											data-toggle="tooltip" title=""
											data-original-title="Quickview" data-bs-original-title="">
											<i class="icon-eye"></i>
										</button>
									</div>
								</div>
								<div class="product-description">
									<div class="caption">
										<div class="title-rating clearfix">
											<h4 class="product-title">
												<a href="product.html">50% Voucher</a>
											</h4>

										</div>
										<div class="price-cartbtn clearfix">
											<p class="price">
												140 pts <span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<p class="description">Stop your co-workers in their
												tracks with the stunning new 30-inch diagonal HP LP3065 Flat
												Panel Monitor. This flagship monitor features best-in-class
												performance and presentation features on a huge wide-aspect
												screen while letting you work as comfor..</p>
											<button class="addcart" type="button">
												<i class="icon-shopping-bag hidden"></i> <span class=""><a
													href="shopping-cart.html">Redeem</a> </span>
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


	<%@ include file="/include/js.jsp"%>
	<%@ include file="/include/footer.jsp"%>

</body>
</html>
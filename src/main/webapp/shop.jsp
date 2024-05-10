<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Shop</title>
    <%@ include file="/include/css.jsp" %>
</head>
<body>
    <%@ include file="/include/header.jsp" %>
  
  <%@ page import="model.Pizza" %>
  <%@ page import="dao.PizzaDAO" %>
 <%@ page import="java.util.List" %>
 <%@ page import="java.util.ArrayList" %>
  
    <% 
        // Import necessary classes
      

        // Initialize the ArrayList
        PizzaDAO pizzaDao = new PizzaDAO();
        List<Pizza> pizzas = new ArrayList<>();
        
        pizzas = pizzaDao.findAll();
		
        
      
        // Add more pizzas as needed...
    %>
	<div class="blog-section donuts">
		<div class="container">
			<div class="row">
				<aside id="column-left" class="col-sm-3">
					<div class="category-content">
					
					</div>
					<script>
						$(function () {
							$(".parent .fa.fa-plus").remove();
							$(".parent .toggled").append("<i class='fa fa-plus'></i>");
							$('.parent .toggled').click(function (e) {
								e.preventDefault();
								if (!$(this).parent().hasClass('active')) {
									$('+ ul', $('a.list-group-item.main-item')).slideUp();
									$('a.list-group-item.main-item').removeClass('active');
								}
								$(this).parent().toggleClass('active');
								$('+ ul', $(this).parent()).slideToggle('slow');
								return false;
							});
						});
					</script>
				
					<script type="text/javascript">
						$('#button-filter').on('click', function () {
							filter = [];

							$('input[name^=\'filter\']:checked').each(function (element) {
								filter.push(this.value);
							});

							location = '' + filter.join(',');
						}); //-->
					</script>
					<div class="box mt-45">
						<div class="container">
							<div class="box-content">
								<div class="toggled relative">
									<h3>Bestsellers</h3>
								</div>
								<div class="block_box">
									<div class="row">
										<div id="featured-carousel" class="box-product  product-carousel "
											data-items="4">
											<div class="product-layout col-xs-12">
												<div class="product-thumb transition">
													<div class="image">
														<a href="#" class="thumb-image">
															<img src="assets/images/products/14.jpg" alt="Pioneer Pizza"
																title="Pioneer Pizza" class="img-responsive">
														</a>
													</div>
													<div class="product-description">
														<div class="caption">
															<div class="title-rating clearfix">
																<h4 class="product-title"><a href="product.html">Pioneer
																		Pizza</a></h4>
																<div class="rating">
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa-regular fa-star"></i></span>
																</div>
															</div>
															<div class="price-cartbtn clearfix">
																<p class="price">
																	$123.20
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="product-layout col-xs-12">
												<div class="product-thumb transition">
													<div class="image">
														<a href="#" class="thumb-image">
															<img src="assets/images/products/1.jpg" alt="Sunrise Patrol"
																title="Sunrise Patrol" class="img-responsive">
														</a>
													</div>
													<div class="product-description">
														<div class="caption">
															<div class="title-rating clearfix">
																<h4 class="product-title"><a href="product.html">Sunrise
																		Patrol</a></h4>
																<div class="rating">
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa-regular fa-star"></i></span>
																</div>
															</div>
															<div class="price-cartbtn clearfix">
																<p class="price">
																	<span class="price-new">$92.00</span><span
																		class="price-old">$122.00</span>
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="product-layout col-xs-12">
												<div class="product-thumb transition">
													<div class="image">
														<a href="#" class="thumb-image">
															<img src="assets/images/products/16.jpg" alt="jain pizza"
																title="jain pizza" class="img-responsive">
														</a>
													</div>
													<div class="product-description">
														<div class="caption">
															<div class="title-rating clearfix">
																<h4 class="product-title"><a href="product.html">jain
																		pizza</a></h4>
																<div class="rating">
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa fa-star fa-stack-2x"></i><i
																			class="fa fa-star-o fa-stack-2x"></i></span>
																	<span class="fa fa-stack"><i
																			class="fa-regular fa-star"></i></span>
																</div>
															</div>
															<div class="price-cartbtn clearfix">
																<p class="price">
																	$242.00
																</p>
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
					<div class="swiper-viewport">
						<div id="banner0" class="swiper-container swiper-container-horizontal swiper-container-fade">
							<div class="swiper-wrapper">
								<div class="swiper-slide swiper-slide-active"><a href="#"><img
											src="assets/images/banners/category_banner2.jpg" alt="Left Banner"
											class="img-responsive"></a>
								</div>
							</div>
						</div>
					</div>
				</aside>
				<div id="content" class="col-sm-9  all-blog">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">shop</h1>

							<ul class="breadcrumb">
								<li><a href="index.jsp">Home</a></li>

								<li><a href="category.html">shop</a></li>

							</ul>
						</div>
					</div>
			
				
					<div class="category-info">
						<div class="row">
							<div class="col-sm-2 col-xs-5 category-list-grid">
								<div class="btn-group btn-group-sm">
									<button type="button" id="grid-view" class="btn btn-default active"
										data-toggle="tooltip" title="" data-original-title="Grid"><i
											class="icon-grid"></i></button>
									<button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip"
										title="" data-original-title="List"><i class="icon-list"></i></button>
								</div>
							</div>
							<div class="col-sm-3 col-xs-7 category-compare">
								<div class="form-group"><a href="#" id="compare-total" class="btn btn-link">Product
										Compare (0)</a></div>
							</div>
							<div class="col-sm-7 col-xs-12 category-sorting">
								<div class="sort-cat">
									<div class="text-category-sort">
										<label class="input-group-addon" for="input-sort">Sort By:</label>
									</div>
									<div class="select-cat-sort">
										<select id="input-sort" class="form-control" onchange="location = this.value;">
											<option value="#" selected="selected">Default</option>
											<option value="#">
												Name (A - Z)</option>
											<option value="#">
												Name (Z - A)</option>
											<option value="#">
												Price (Low &gt; High)</option>
											<option value="#">
												Price (High &gt; Low)</option>
											<option value="#">
												Rating (Highest)</option>
											<option value="#">
												Rating (Lowest)</option>
											<option value="#">
												Model (A - Z)</option>
											<option value="#">
												Model (Z - A)</option>
										</select>
									</div>
								</div>
								<div class="limit-cat">
									<div class="text-category-limit">
										<label class="input-group-addon" for="input-limit">Show:</label>
									</div>
									<div class="select-cat-limit">
										<select id="input-limit" class="form-control" onchange="location = this.value;">
											<option value="#" selected="selected">9</option>
											<option value="#">
												25</option>
											<option value="#">
												50</option>
											<option value="#">
												75</option>
											<option value="#">
												100</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="category-row row">
				
						
						 <%   for (Pizza pizza : pizzas) { %>
						<div class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
							<div class="product-thumb">
								<div class="image">
									<a href="product.html" class="thumb-image">
										<img src="assets/images/products/<%=pizza.getImage()%>" alt="gorgonzola" title="gorgonzola"
											class="img-responsive">
									</a>
									<div class="button-group">
										<button class="wishlist" type="button" data-toggle="tooltip" title=""
											data-original-title="Add to Wish List" data-bs-original-title=""><i
												class="icon-like"></i></button>
										<button class="compare" type="button" data-toggle="tooltip" title=""
											data-original-title="Compare this Product" data-bs-original-title=""><i
												class="icon-shuffle-arrows"></i></button>
										<button class="themability_quickview-button" type="button" data-toggle="tooltip"
											title="" data-original-title="Quickview" data-bs-original-title=""><i
												class="icon-eye"></i></button>
									</div>
								</div>
								<div class="product-description">
									<div class="caption">
										<div class="title-rating clearfix">
											<h4 class="product-title"><a href="product.html"><%= pizza.getName() %></a>
											</h4>
											<div class="rating">
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
											</div>
										</div>
										<div class="price-cartbtn clearfix">
											<p class="price">
												 <%= pizza.getSizeToPrice().get("Medium") %> DT
												<span class="price-tax">Ex Tax: $279.99</span>
											</p>
											<p class="description"><%= pizza.getDescription() %></p>
											<button class="addcart" type="button"><i
													class="icon-shopping-bag hidden"></i>
												<a href="details.jsp?pizzaId=<%= pizza.getId() %>">Order Now</a>
												</span></button>
										</div>
									</div>
								</div>
							</div>
						</div>
						   <% } %>
						
						
					<div class="pagination-main">
						<div class="row">
							<div class="col-sm-6 text-left">Showing 1 to 5 of 5 (1 Pages)</div>
							<div class="col-sm-6 text-right"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<%@ include file ="/include/js.jsp" %>
<%@ include file ="/include/footer.jsp" %>
</body>
</html>

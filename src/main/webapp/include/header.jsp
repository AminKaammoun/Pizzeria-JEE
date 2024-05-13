

<%@ page import="model.Pizza"%>
<%@ page import="dao.PizzaDAO"%>
<%@ page import="dao.ClientDAO"%>
<%
ClientDAO clientDAO = new ClientDAO();	

java.util.Map<String, main.CartItem> cart = (java.util.Map<String, main.CartItem>) session.getAttribute("cart");
		double total = 0.00;
		int points = 0;
	%>


<%
boolean isLoggedIn = false;

HttpSession sess = request.getSession(false); 

if (sess != null) {
	String username = (String) sess.getAttribute("login");
	System.out.println("name : " + username);
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


<header class="home">
	<div class="container">
		<div class="header-inner">
			<div class="header-left">
				<div id="logo">
					<a href="index.jsp"> <img src="assets/images/logo-pizza.png"
						title="Your Store" alt="Your Store" class="img-responsive">
					</a>
				</div>
			</div>
			<div class="header-center">
				<div class="themability_megamenu-style-dev">
					<div class="responsive themability_default">

						<nav class="navbar-default">
							<div class=" container-themability_megamenu   horizontal ">
								<div class="navbar-header">
									<button type="button" id="show-themability_megamenu"
										data-toggle="collapse" class="navbar-toggle">
										<span class="icon-bar"></span> <span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>

								<div class="themability_megamenu-wrapper megamenu_typeheader">

									<span id="remove-themability_megamenu" class="fa fa-times"></span>

									<div class="themability_megamenu-pattern">
										<div class="container">
											<ul class="themability_megamenu" data-megamenuid="55"
												data-transition="slide" data-animationtime="500">

												<li class="home current-active active-first"><a
													href="index.jsp"> <span><strong> Home </strong></span>
												</a></li>

												<li class="with-sub-menu click">
												 <a href="shop.jsp"
													class="clearfix"> <strong> Shop </strong><span class="labeloffer"></span>
														
												</a>

												
												</li>
												<li class="with-sub-menu click">
													<p class="close-menu"></p> <a href="cart.jsp" class="clearfix">
														<strong> Cart </strong> 
														
												</a>
 
												
												</li>

												<li class="with-sub-menu click">
													<p class="close-menu"></p> <a href="#" class="clearfix">
														<strong> Product </strong> <span class="labelhot"></span>
														<b class="fa fa-angle-down"></b>
												</a>

													<div class="sub-menu">
														<div class="content">
															<div class="row">
																<div class="col-sm-4">
																	<div class="megamenu-product-list">
																		<span class="title-submenu">Popular Product</span>
																		<div class="row">
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/6.jpg"
																							alt="Margherita" title="Margherita"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">Margherita</a>
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

																							<p class="price">
																								$1,202.00 <span class="price-tax">$1,000.00</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/7.jpg"
																							alt="Buttercrust" title="Buttercrust"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">Buttercrust</a>
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

																							<p class="price">
																								$122.00 <span class="price-tax">$100.00</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/4.jpg"
																							alt="Taco Pizza" title="Taco Pizza"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">Taco Pizza</a>
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

																							<p class="price">
																								$122.00 <span class="price-tax">$100.00</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-sm-4">
																	<div class="megamenu-product-list">
																		<span class="title-submenu">Bestseller Product</span>
																		<div class="row">
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/14.jpg"
																							alt="Pioneer Pizza" title="Pioneer Pizza"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">Pioneer Pizza</a>
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

																							<p class="price">
																								$123.20 <span class="price-tax">$101.00</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/1.jpg"
																							alt="Sunrise Patrol" title="Sunrise Patrol"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">Sunrise Patrol</a>
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

																							<p class="price">
																								<span class="price-new">$92.00</span> <span
																									class="price-old">$122.00</span> <span
																									class="price-tax">$75.00</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/16.jpg"
																							alt="jain pizza" title="jain pizza"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">jain pizza</a>
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

																							<p class="price">
																								$242.00 <span class="price-tax">$200.00</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="col-sm-4">
																	<div class="megamenu-product-list">
																		<span class="title-submenu">Latest Product</span>
																		<div class="row">
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/15.jpg"
																							alt="PeppiPizza" title="PeppiPizza"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">PeppiPizza</a>
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

																							<p class="price">
																								$241.99 <span class="price-tax">$199.99</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/1.jpg"
																							alt="Sunrise Patrol" title="Sunrise Patrol"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">Sunrise Patrol</a>
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

																							<p class="price">
																								<span class="price-new">$92.00</span> <span
																									class="price-old">$122.00</span> <span
																									class="price-tax">$75.00</span>
																							</p>
																						</div>
																					</div>
																				</div>
																			</div>
																			<div class="col-sm-12 ">
																				<div class="menu-product-thumb">
																					<div class="image">
																						<a href="#"> <img
																							src="assets/images/products/11.jpg"
																							alt="veggie delight" title="veggie delight"
																							class="img-responsive">
																						</a>
																					</div>
																					<div class="product-description">
																						<div class="caption">
																							<h4>
																								<a href="product.html">veggie delight</a>
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

																							<p class="price">
																								$122.00 <span class="price-tax">$100.00</span>
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
												</li>

												<li class="with-sub-menu click">
													<p class="close-menu"></p> <a href="#" class="clearfix">
														<strong> Pages </strong> <b class="fa fa-angle-down"></b>
												</a>

													<div class="sub-menu sub-menu-1-col"
														style="width: 250px; display: none;">
														<div class="content">
															<div class="row">
																<div class="col-sm-12">
																	<ul class="route  html-link">
																		<li><a href="#" class="main-menu">About
																				Us</a></li>
																		<li><a href="#" class="main-menu">Contact
																				Us</a></li>
																	
																		<li><a href="my_account.jsp" class="main-menu">My
																				Account</a></li>
																				
																		<li><a href="my_vouchers.jsp" class="main-menu">My
																				Vouchers</a></li>
																		<li><a href="#" class="main-menu">Order
																				History</a></li>
																	</ul>

																</div>
															</div>
														</div>
													</div>
												</li>

												<li class="">
													<p class="close-menu"></p> <a href="blog.html"
													class="clearfix"> <strong> Blog </strong>

												</a>

												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</nav>
					</div>
				</div>

			</div>
			<div class="header-right">
				<div class="search-content">
					<div class="search-btn-outer hidden-lg hidden-md">
						<i class="icon-search"></i>
					</div>
					<div class="header-search">
						<div id="themabilitySearch" class="input-group themability-search">
							<input type="text" name="search" value="" placeholder="Search..."
								class="form-control input-lg ui-autocomplete-input" /> <span
								class="btn-search input-group-btn">
								<button type="button" class="btn btn-default btn-lg">
									<i class="search-icon icon-search"></i>
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="cart-content">
					<div id="cart" class="btn-group btn-block">
						<button type="button" data-toggle="dropdown"
							data-loading-text="<i class='fa fa-spinner fa-spin' aria-hidden='true'></i>"
							class="btn btn-inverse btn-block btn-lg dropdown-toggle">
							<i class="icon-bag"></i>

							<% if (cart != null){ %>
							<span id="cart-total"><%=cart.size() %> <span
								class="hidden">item(s) - $0.00</span></span>
							<%}else{%>

							<span id="cart-total">0 <span class="hidden">item(s)
									- $0.00</span></span>
							<%} %>
						</button>
						<ul class="dropdown-menu pull-right header-cart-toggle">
							<li class="cart-content-product">
								<table class="table table-striped">
									<tbody>


										<%
																															if(cart != null){
																																						for (java.util.Map.Entry<String, main.CartItem> entry : cart.entrySet()) {
																																							main.CartItem cartItem = entry.getValue();
																																							double unitPrice = cartItem.getPizza().getSizeToPrice().get(cartItem.getSize()).doubleValue();
																																							double totalPrice = unitPrice * cartItem.getQuantity();
																																							points += cartItem.getQuantity() * 10;
																																							total += totalPrice;
									%>

										<tr>
											<td class="text-center product-cart-thumb"><a href="#">
													<img
													src="assets/images/products/<%=cartItem.getPizza().getImage()%>"
													alt="veggie delight" title="veggie delight"
													class="img-thumbnail">
											</a></td>
											<td class="text-left product-cart-details"><a href="#"
												class="product-item-name"><%=cartItem.getPizza().getName()%></a>
												<br>
												<div class="product-cart-info">
													<span class="product-cart-qty"><%=cartItem.getQuantity()%>
														x </span> <span class="product-cart-price"><%=unitPrice%>
														DT</span>
												</div></td>
											<td class="text-center product-cart-close">
												<button type="button" title="Remove"
													class="btn btn-danger btn-xs">
													<i class="fa fa-times"></i>
												</button>
											</td>
										</tr>

										<%}}%>



									</tbody>
								</table>
							</li>
							<li>
								<div>
									<table class="table table-bordered">
										<tbody>
											<tr>
												<td class="text-left"><strong>Sub-Total</strong></td>
												<td class="text-right"><%=total%> DT</td>
											</tr>
											<tr>
												<td class="text-left"><strong>Sale (0%)</strong></td>
												<td class="text-right">-0.00 DT</td>
											</tr>
											<tr>
												<td class="text-left"><strong>Discount Voucher
														(0%)</strong></td>
												<td class="text-right">-0.00 DT</td>
											</tr>
											<tr>
												<td class="text-left"><strong>Total</strong></td>
												<td class="text-right"><%=total%> DT</td>
											</tr>
										</tbody>
									</table>


									<p class="text-right product-cart-button">
										<a href="cart.jsp" class="btn cart-btn addtocart-btn"><i
											class="fa fa-shopping-cart hidden"></i>View Cart</a>
										&nbsp;&nbsp;&nbsp;<a href="cart.jsp"
											class="btn cart-btn checkout-btn"><i
											class="fa fa-share hidden"></i>Checkout</a>
									</p>
								</div>
							</li>
						</ul>
					</div>
				</div>

				<div id="header_ac" class="dropdown">
					<a href="my_account.jsp" title="My Account" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="icon-user1"></i><span
						class="hidden">My Account</span><span class="caret hidden"></span>
					</a>
					<ul class="dropdown-menu dropdown-menu-right account-link-toggle">
						<% 
				if (session.getAttribute("login") != null) {
				%> 
						<li><a href="/Pizzaria/Logout">Logout</a></li>
						<%
				}else{
				%>
						<li><a href="/Pizzaria/login.jsp">Register</a></li>
						<li><a href="/Pizzaria/login.jsp">Login</a></li>
						<%} %>

					</ul>
				</div>
				<%
				if (session.getAttribute("login") != null) {
				%>
				<h6>
					Hello,
					<%=session.getAttribute("login")%>
				</h6>
				<%
				}
				%>
			</div>

		</div>
	</div>
	</div>

</header>
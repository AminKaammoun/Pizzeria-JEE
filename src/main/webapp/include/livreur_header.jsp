


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
													href="readyOrderLivreur.jsp"> <span><strong>
																Ready Orders </strong></span>
												</a></li>
 
												<li class="with-sub-menu click"><a href="my_orders_livreur.jsp"
													class="clearfix"> <strong> My Orders</strong>

												</a></li>

											
 

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
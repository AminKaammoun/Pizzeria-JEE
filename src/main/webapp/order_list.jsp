<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order List</title>
<%@ include file="/include/css.jsp"%>
</head>
<body>
	<%@ include file="/include/chef_header.jsp"%>

<%@ page import="model.Commande"%>
<%@ page import="dao.CommandeDAO"%>
<%@ page import="main.OrderStatus"%>

<%
CommandeDAO commandeDAO = new CommandeDAO();
java.util.List<Commande> commandes = commandeDAO.findAll();
%>
<div class="blog-section donuts">
		<div class="container">
			<div class="row">
			
				<div id="content" class="col-sm-12  all-blog">
					<div class="breadcrumb-main"> 
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">Pending Orders</h1>

							<ul class="breadcrumb">
								<li><a href="#">Pages</a></li>

								<li><a href="#">Pending Orders List</a></li> 

							</ul>
						</div>
					</div>
			
				
				

					<div class="category-row row">
				
						
					<%
					int counter = 0;
					for (Commande commande : commandes){
						if(commande.getStatus() == OrderStatus.IN_HOLD){
							counter++;
						%>
					
						<div class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
							<div class="product-thumb">
								<div class="image">
									<a href="#" class="thumb-image">
										<img src="assets/images/pizzaBox.png" alt="veggie delight"
											title="veggie delight" class="img-responsive">
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
											<h4 class="product-title"><a href="#">Order <%=commande.getId() %></a></h4>  
											<div class="rating">
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
														class="fa fa-star-o fa-stack-2x"></i></span>
												<span class="fa fa-stack"><i class="fa-regular fa-star"></i></span>
											</div>
										</div>
										<div class="price-cartbtn clearfix">
											<p class="price">
												 <%=commande.getAmount() %> DT
												<span class="price-tax">Ex Tax: $100.00</span>
											</p>
											<p class="description">Stop your co-workers in their tracks with the
												stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This
												flagship monitor features best-in-class performance and presentation
												features on a huge wide-aspect screen while letting you work as comfor..
											</p>
											<button class="addcart" type="button"><i
													class="icon-shopping-bag hidden"></i>
												<span class=""><a href="StartPreparing?orderId=<%=commande.getId()%>">Start Preparing</a>
												</span></button>
										</div>
									</div>  
								</div>
							</div>
						</div>
				
					
					
					<%  }} %>
						
						<div class="empty-cart">
						<center>
							<h3>No orders to prepare.</h3>
							<img src="assets/images/cart.png" alt="Veggie Delight"
								title="Veggie Delight">
						</center>
					>
					</div>
					
						
					<div class="pagination-main">
						<div class="row">
							<div class="col-sm-6 text-left">Showing 1 to <%=counter %> of <%=counter %> (1 Pages)</div>
							<div class="col-sm-6 text-right"></div>
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
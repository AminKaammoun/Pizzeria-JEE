<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<%@ include file="/include/css.jsp"%>
</head>
<body>

	<%@ include file="/include/header.jsp"%>

	<div class="blog-section">
		<div id="checkout-cart" class="container">
			<div class="row">
				<aside id="column-left" class="col-sm-3">

					<script>
						$(function() {
							$(".parent .fa.fa-plus").remove();
							$(".parent .toggled").append(
									"<i class='fa fa-plus'></i>");
							$('.parent .toggled')
									.click(
											function(e) {
												e.preventDefault();
												if (!$(this).parent().hasClass(
														'active')) {
													$(
															'+ ul',
															$('a.list-group-item.main-item'))
															.slideUp();
													$(
															'a.list-group-item.main-item')
															.removeClass(
																	'active');
												}
												$(this).parent().toggleClass(
														'active');
												$('+ ul', $(this).parent())
														.slideToggle('slow');
												return false;
											});
						});
					</script>

					<div class="box mt-45">
						<div class="container">
							<div class="box-content">
								<div class="toggled relative">
									<h3>Bestsellers</h3>
								</div>
								<div class="block_box">
									<div class="row">
										<div id="featured-carousel"
											class="box-product  product-carousel " data-items="4">
											<div class="product-layout col-xs-12">
												<div class="product-thumb transition">
													<div class="image">
														<a href="#" class="thumb-image"> <img
															src="assets/images/products/14.jpg" alt="Pioneer Pizza"
															title="Pioneer Pizza" class="img-responsive">

														</a>
													</div>
													<div class="product-description">
														<div class="caption">
															<div class="title-rating clearfix">
																<h4 class="product-title">
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
															</div>
															<div class="price-cartbtn clearfix">
																<p class="price">$123.20</p>
																<!-- <p class="description">iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And..</p> -->

															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="product-layout col-xs-12">
												<div class="product-thumb transition">
													<div class="image">


														<a href="#" class="thumb-image"> <img
															src="assets/images/products/1.jpg" alt="Sunrise Patrol"
															title="Sunrise Patrol" class="img-responsive">
														</a>

													</div>
													<div class="product-description">
														<div class="caption">
															<div class="title-rating clearfix">
																<h4 class="product-title">
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


														<a href="#" class="thumb-image"> <img
															src="assets/images/products/16.jpg" alt="jain pizza"
															title="jain pizza" class="img-responsive">
														</a>

													</div>
													<div class="product-description">
														<div class="caption">
															<div class="title-rating clearfix">
																<h4 class="product-title">
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
															</div>
															<div class="price-cartbtn clearfix">
																<p class="price">$242.00</p>
																<!-- <p class="description">Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicC..</p> -->

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
						<div id="banner0"
							class="swiper-container swiper-container-horizontal swiper-container-fade">
							<div class="swiper-wrapper">
								<div class="swiper-slide swiper-slide-active">
									<a href="#"><img
										src="assets/images/banners/category_banner2.jpg"
										alt="Left Banner" class="img-responsive"></a>
								</div>
							</div>
						</div>
					</div>
				</aside>
				<div id="content" class="col-sm-9  all-blog">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">Shopping Cart</h1>

							<ul class="breadcrumb">
								<li><a href="index.jsp">Home</a></li>

								<li><a href="#">Shopping Cart</a></li>

							</ul>
						</div>
					</div>
					<%
					if (cart != null) {
					%>
					<h1 class="cart-title">Shopping Cart &nbsp;(0.00kg)</h1>
					<form action="Command" method="post" enctype="multipart/form-data">
						<div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<td class="text-center">Image</td>
										<td class="text-left">Product Name</td>
										<td class="text-left">Size</td>
										<td class="text-left">Quantity</td>
										<td class="text-right">Unit Price</td>
										<td class="text-right">Total</td>
										<td class="text-center">Action</td>
									</tr>
								</thead>
								<tbody>
									<%
									for (java.util.Map.Entry<String, main.CartItem> entry : cart.entrySet()) {
																		main.CartItem cartItem = entry.getValue();
																		double unitPrice = cartItem.getPizza().getSizeToPrice().get(cartItem.getSize()).doubleValue();
																		double totalPrice = unitPrice * cartItem.getQuantity();
									%>
									<tr>
										<td class="text-center"><a href="#"> <img
												src="assets/images/products/<%=cartItem.getPizza().getImage()%>"
												alt="PeppiPizza" title="PeppiPizza"
												class="img-thumbnail checkout-img">
										</a></td>
										<td class="text-left"><a href="#"><%=cartItem.getPizza().getName()%></a>
											<br> <small>Reward Points: <%=cartItem.getQuantity() * 10%></small>
										</td>
										<td class="text-left"><%=cartItem.getSize()%></td>
										<td class="text-left">
											<div class="input-group btn-block">
												<div class="product-btn-quantity">
													<button class="minus">
														<i class="fa fa-minus"></i>
													</button>
													<input type="text" name="quantity"
														value="<%=cartItem.getQuantity()%>" size="2"
														id="input-quantity" class="form-control">
													<button class="plus">
														<i class="fa fa-plus"></i>
													</button>
												</div>
											</div>
										</td>
										<td class="text-right"><%=unitPrice%> DT</td>
										<td class="text-right"><%=totalPrice%> DT</td>
										<td class="text-center"><button type="button" data-cart-item-id="<%=entry.getKey()%>" class="delete-btn"><i class="fas fa-trash-alt"></i></button></td>
									</tr>


									<%
									}%>

								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-sm-4 col-sm-offset-8">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="text-left cart-total-title">Sub-Total:</td>
											<td class="text-right cart-total-price"><%=total%> DT</td>
										</tr>
										<tr>
											<td class="text-left cart-total-title">Sale (0%):</td>
											<td class="text-right cart-total-price">-0.00 DT</td>
										</tr>
										<tr>
											<td class="text-left cart-total-title">Discount Voucher
												(0%):</td>
											<td class="text-right cart-total-price">-0.00 DT</td>
										</tr>
										<tr>
											<td class="text-left cart-total-title">Total:</td>
											<td class="text-right cart-total-price"><%=total%> DT</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="buttons clearfix">
							<div class="pull-left">
								<a href="shop.jsp" class="btn btn-default">Continue Shopping</a>
							</div>
							<div class="pull-right">
								<input type="submit" class="btn btn-primary" value="Checkout">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<% 
					
								
								
					
					}else{
										%>
	<center>
		<h3>Shopping cart is empty.</h3>
		<img src="assets/images/cart.png" alt="veggie delight"
			title="veggie delight">
	</center>

	<div class="buttons clearfix">
		<div class="pull-left">
			<a href="shop.jsp" class="btn btn-default">Go Shopping</a>
		</div>

		</tbody>
		</table>
	</div>
	<%}%>

	</form>
	</div>
	</div>
	</div>
	</div>

	<%@ include file="/include/footer.jsp"%>
	<%@ include file="/include/js.jsp"%>
</body>

<script>
    $(document).ready(function() {
        $('.delete-btn').click(function() {
            var cartItemId = $(this).data('cart-item-id'); 
            
            
            $.ajax({
                type: 'POST',
                url: 'DeleteCartItem', 
                data: { cartItemId: cartItemId }, 
                success: function(response) {
                    
                    location.reload(); 
                },
                error: function(xhr, status, error) {
                  
                    console.error(error);
                }
            });
        });
    });
</script>

</html>
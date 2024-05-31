<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

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
    if (cart != null && !cart.isEmpty()) {
    
%>
					<div class="cart-container">
						<h1 class="cart-title">Shopping Cart &nbsp;(0.00kg)</h1>
						<form action="Command" method="post" enctype="multipart/form-data">
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th class="text-center">Image</th>
											<th class="text-left">Product Name</th>
											<th class="text-left">Size</th>
											<th class="text-left">Quantity</th>
											<th class="text-right">Unit Price</th>
											<th class="text-right">Total</th>
											<th class="text-center">Action</th>
										</tr>
									</thead>
									<tbody>
										<% for (java.util.Map.Entry<String, main.CartItem> entry : cart.entrySet()) {
                            main.CartItem cartItem = entry.getValue();
                            double unitPrice = cartItem.getPizza().getSizeToPrice().get(cartItem.getSize()).doubleValue();
                            double totalPrice = unitPrice * cartItem.getQuantity();
                           
                        %>
										<tr>
											<td class="text-center"><img
												src="assets/images/products/<%=cartItem.getPizza().getImage()%>"
												alt="<%=cartItem.getPizza().getName()%>"
												class="img-thumbnail checkout-img"></td>
											<td class="text-left"><%=cartItem.getPizza().getName()%><br>
											<small>Reward Points: <%=cartItem.getQuantity() * 10%></small></td>
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
											<td class="text-center"><button type="button"
													data-cart-item-id="<%=entry.getKey()%>" class="delete-btn">
													<i class="fas fa-trash-alt"></i>
												</button></td>
										</tr>
										<% } %>
									</tbody>
								</table>
							</div>
							<div class="row">
								<div class="col-sm-4 col-sm-offset-8">
									<table class="table table-bordered">
										<tbody>
											<tr>
												<td class="text-left cart-total-title">Sub-Total:</td>
												<td class="text-right cart-total-price"><%=total %> DT</td>
											</tr>
											<tr>
												<td class="text-left cart-total-title">Sale (0%):</td>
												<td class="text-right cart-total-price">-0.00 DT</td>
											</tr>
											<tr>
												<td class="text-left cart-total-title">Discount Voucher
													(<%=pourcentage%>%):</td>
												<td class="text-right cart-total-price">-<%= String.format("%.2f", (total * pourcentage) / 100) %> DT</td>
											</tr>
											<tr>
												<td class="text-left cart-total-title">Total:</td>
												<td class="text-right cart-total-price"><%=String.format("%.2f",total - (total * pourcentage) / 100)%> DT</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="buttons clearfix">
								<div class="pull-left">
									<a href="shop.jsp" class="btn btn-default">Continue
										Shopping</a>
								</div>
								<div class="pull-right">
									<input type="submit" class="btn btn-primary" value="Checkout">
								</div>
							</div>
						</form>
					</div>
					<%
    } else {
%>
					<div class="empty-cart">
						<center>
							<h3>Shopping cart is empty.</h3>
							<img src="assets/images/cart.png" alt="Veggie Delight"
								title="Veggie Delight">
						</center>
						<div class="buttons clearfix">
							<div class="pull-left">
								<a href="shop.jsp" class="btn btn-default">Go Shopping</a>
							</div>
						</div>
					</div>
					<%
    }
%>

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
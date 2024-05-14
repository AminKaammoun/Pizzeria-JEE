<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<%@ include file="/include/css.jsp"%>
</head>
<body>

	<%@ include file="/include/chef_header.jsp"%>
	<%@ page import="model.CommandePizza"%>
<%@ page import="dao.CommandePizzaDAO"%>


<%
CommandePizzaDAO commandeDAO = new CommandePizzaDAO();
java.util.List<CommandePizza> commandes = commandeDAO.findAll();

String orderId = (String) request.getParameter("orderId");
%>

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

				 
				</aside>
				<div id="content" class="col-sm-12  all-blog"> 
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">Order <%=orderId %> Details</h1>

							<ul class="breadcrumb">
								<li><a href="#">Pages</a></li>

								<li><a href="current_order.jsp">Current Order</a></li>
									<li><a href="#">Details</a></li>

							</ul>
						</div>
					</div>
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
											
										</tr>
									</thead>
									<tbody>
										<% for(CommandePizza order : commandes){
                           if(order.getCommande().getId() == Integer.parseInt(orderId)){
                        %>
										<tr>
											<td class="text-center"><img
												src="assets/images/products/<%=order.getPizza().getImage()%>"
												alt="<%=order.getPizza().getName()%>"
												class="img-thumbnail checkout-img"></td>
											<td class="text-left"><%=order.getPizza().getName()%><br>
											
											<td class="text-left"><%=order.getSize()%></td>
										<td class="text-left"><%=order.getQuantity()%></td>
											<td class="text-right"><%=order.getPrice()%> DT</td>
											<td class="text-right"><%=order.getPrice() * order.getQuantity()%> DT</td>
											
										</tr>
										<% }} %>
									</tbody>
								</table> 
							</div>
					
						
						</form>
					</div>
	
			

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
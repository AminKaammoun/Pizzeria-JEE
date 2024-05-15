<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order History</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@ include file="/include/css.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<%@ page import="model.Commande"%>
	<%@ page import="dao.CommandeDAO"%>
	<%@ page import="main.OrderStatus"%>
	<%
	CommandeDAO commandeDAO = new CommandeDAO();
	java.util.List<Commande> orders = commandeDAO.findAllByClient((String) sess.getAttribute("email"));
	%>

	<div class="blog-section">
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
								<li><a href="my_account.jsp" class="list-group-item">My
										Account</a></li>
								<li><a href="my_vouchers.jsp" class="list-group-item">My
										Vouchers</a></li>
								<li><a href="#" class="list-group-item">Order History</a></li>
							</ul>
						</div>
					</div>
				</aside>
				<div id="content" class="col-sm-9  all-blog my-account">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<ul class="breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="#">Pages </a></li>
								<li><a href="#">Order History </a></li>

							</ul>
						</div>
					</div>




					<div class="row">
						<div class="col-sm-13">



							<%
							if (!orders.isEmpty()) {
							%>

							<form action="#" method="post" enctype="multipart/form-data">
								<div class="table-responsive">
									<table class="table table-bordered">
										<thead>
											<tr>

												<th class="text-left">Order Date</th>
												<th class="text-left">Delivery Date</th>
												<th class="text-left">Address</th>
												<th class="text-center">Total Amount</th>
												<th class="text-right">Status</th>

											</tr>
										</thead>
										<tbody>

											<%
											for (Commande order : orders) {
											%>
											<tr>
												<td class="text-center"><%=order.getDateCreation()%></td>
												<td class="text-left"><%=order.getDateDelivery()%>
												<td class="text-left"><%=order.getAddress()%></td>
												<td class="text-center" style="color: #ff4d4d"><b><%=order.getAmount()%>
														DT</b></td>


												<td class="text-right"
													style="color: <%=getStatusColor(order.getStatus())%>"><b><%=order.getStatus()%></b></td>


											</tr>
											<%
											}
											} else {
											%>
											<div class="empty-cart">
												<center>
													<h3>You have not made any orders yet.</h3>
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

											<%!public String getStatusColor(OrderStatus status) {
		switch (status) {
		case IN_HOLD:
			return "#ff4d4d";
		case PREPARING:
			return "orange"; 
		case READY:
			return "#F4BC1C"; 
		case DELIVERING:
			return "lightgreen"; 
		case DELIVERED:
			return "green"; 
		default:
			return "black"; 
		}
	}%>

										</tbody>
									</table>
								</div>


							</form>





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
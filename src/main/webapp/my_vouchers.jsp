<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Vouchers</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@ include file="/include/css.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>


	<%@ page import="model.Voucher"%>

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
								<li><a href="my_account.jsp" class="list-group-item">My
										Account</a></li>
								<li><a href="#" class="list-group-item">My Vouchers</a></li>
								<li><a href="history.jsp" class="list-group-item">Order
										History</a></li>
							</ul>
						</div>
					</div>
				</aside>
				<div id="content" class="col-sm-9 all-blog">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">Shop</h1>
							<ul class="breadcrumb">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="#">Pages</a></li>
								<li><a href="my_account.jsp">My Vouchers</a></li>
							</ul>
						</div>
					</div>
					<div>
						<h6>My Vouchers Inventory:</h6>
						<% int counter = 0;
						if(vouchers != null && !vouchers.isEmpty()) { %>
						<div class="category-row row">
							<% 
							for (Voucher voucher : vouchers) {
								
							if(voucher.getStatus() == 0){
								%>
							<div
								class="product-layout product-grid col-lg-4 col-md-6 col-sm-4 col-xs-4">
								<div class="product-thumb">
									<div class="image">
										<a href="#" class="thumb-image"> <img
											src="assets/images/<%=voucher.getPercentage()%>.png"
											alt="<%=voucher.getPercentage()%>% Off"
											title="<%=voucher.getPercentage()%>% Off"
											class="img-responsive">
										</a>
										<div class="product-sale">
											<span><%=voucher.getPercentage()%>% Off</span>
										</div>
										<div class="button-group">
											<button class="wishlist" type="button" data-toggle="tooltip"
												title="Add to Wish List">
												<i class="icon-like"></i>
											</button>
											<button class="compare" type="button" data-toggle="tooltip"
												title="Compare this Product">
												<i class="icon-shuffle-arrows"></i>
											</button>
											<button class="themability_quickview-button" type="button"
												data-toggle="tooltip" title="Quickview">
												<i class="icon-eye"></i>
											</button>
										</div>
									</div>
									<div class="product-description">
										<div class="caption">
											<div class="title-rating clearfix">
												<h4 class="product-title">
													<a href="#"><%=voucher.getPercentage()%>% Voucher</a>
												</h4>
											</div>
											<div class="price-cartbtn clearfix">
												<p class="description">Description of the voucher...</p>

												<button class="addcart" type="button">
													<i class="icon-shopping-bag hidden"></i> <a
														href="UseVoucher?voucherId=<%=voucher.getId() %>">Use</a>
													</span>
												</button>

												<div class="popup hidden">
													<div class="popup-content">
														<p>Are you sure you want to redeem?</p>
														<button class="confirmButton">Redeem</button>
														<button class="cancelButton">Cancel</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<% }else{ 
								
								counter++;
							}
							
							} %>
						</div>
						<% } else { %>
						<br> <br> <br>
						<center>
							<h6>You don't have any vouchers yet :(</h6>
							<a href="redeem.jsp" class="btn btn-default">Redeem</a>
						</center>
						<% } %>
						
						<% if (counter>0) {%>
						<br> <br> <br>
						<center>
							<h6>You don't have any vouchers yet :(</h6>
							<a href="redeem.jsp" class="btn btn-default">Redeem</a>
						</center>
						
						<% counter = 0;
						} %>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="/include/js.jsp"%>
	<%@ include file="/include/footer.jsp"%>

</body>
<script>
document.addEventListener('DOMContentLoaded', function() {

	
    var redeemButtons = document.querySelectorAll('.addcart');

    redeemButtons.forEach(function(redeemButton) {
        var popupContainer = redeemButton.nextElementSibling;

        redeemButton.addEventListener('click', function() {
           
            popupContainer.style.display = 'flex';
        });

        var cancelButton = popupContainer.querySelector('#cancelButton');
        cancelButton.addEventListener('click', function() {
           
            popupContainer.style.display = 'none';
        });

      
        var confirmButton = popupContainer.querySelector('#confirmButton');
        confirmButton.addEventListener('click', function() {
            var id = redeemButton.getAttribute('data-user-id');

            if (id) {
               
                window.location.href = 'my_vouchers.jsp?redeemId='+id;
            }
        });
    });
}); 


window.addEventListener('load', function() {
    var popups = document.querySelectorAll('.popup');
    popups.forEach(function(popup) {
        popup.style.display = 'none';
    });
});

</script>




</html>
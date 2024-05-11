<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<%@ include file="/include/css.jsp"%>
</head>
<body>
	<%@ include file="/include/header.jsp"%>


	<div class="blog-section Contact_Us">
		<div class="container">
			<div class="row">
				<div id="content" class="col-sm-12">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">Confirm Order</h1>
							<ul class="breadcrumb">
								<li><a href="index-2.html">Home</a></li>
								<li><a href="contact.html">Confirm Order</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 contact-left">
							<h3 class="contact-title">Our Location</h3>
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="store-image">
										<img src="assets/images/logo-pizza.png" alt="Your Store"
											title="Your Store" class="img-responsive">
									</div>
									<div class="store-address">
										<i class="fa fa-home"></i>
										<div class="store-title">Your Store</div>
										<div class="store-detail">Cité hay el ons, route tunis
											km 10</div>
										<a href="#" class="btn btn-info"><i
											class="fa-solid fa-location-dot"></i> View Google Map</a>
									</div>
									<div class="store-telephone">
										<i class="fa fa-phone"></i>
										<div class="store-title">Telephone</div>
										<div class="store-detail">+(219) 29528193</div>
									</div>

									<div class="store-open">
										<i class="fa-regular fa-clock"></i>
										<div class="store-title">Opening Times</div>
										<div class="store-detail">10:00 am to 11:00 pm</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 contact-right">
							<form action="SubmitOrder" method="post">
								<fieldset>
									<legend class="contact-title">Confirm Order</legend>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="name">Your
											Name</label>
										<div class="col-sm-10">
											<input type="text" id="name" class="form-control"
												name="name" required>
										</div>
									</div>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="email">E-Mail
											Address</label>
										<div class="col-sm-10">
											<input type="text" id="email" class="form-control"
												name="email" required>
										</div>
									</div>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="address">Address</label>
										<div class="col-sm-10">
											<input type="text" id="address" class="form-control"
												name="address" required>
										</div>
									</div>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="phone">Phone
											Number</label>
										<div class="col-sm-10">
											<input type="text" id="phone" class="form-control"
												name="phone" required>
										</div>
									</div>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="enquiry">Additional
											Information</label>
										<div class="col-sm-10">
											<textarea id="enquiry" class="form-control"
												name="enquiry" rows="10" required></textarea>
										</div>
									</div>
									<div class="form-group required row form-message">
										<div class="col-sm-offset-2 col-sm-10">
											<div class="submitted">Your message has been sent
												Successfully</div>
										</div>
									</div>
								</fieldset>
								<div class="buttons clearfix">
									<div class="pull-right">
										<input class="btn btn-primary" type="submit" value="Submit">
									</div>
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
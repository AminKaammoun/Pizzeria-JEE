<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<%@ include file ="/include/css.jsp" %>
</head>
<body>
<%@ include file ="/include/header.jsp" %>


	<div class="blog-section Contact_Us">
		<div class="container">
			<div class="row">
				<div id="content" class="col-sm-12">
					<div class="breadcrumb-main">
						<div class="breadcrumb-container clearfix">
							<h1 class="page-title">Contact Us</h1>
							<ul class="breadcrumb">
								<li><a href="index-2.html">Home</a>
								</li>
								<li><a href="contact.html">Contact
										Us</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 contact-left">
							<h3 class="contact-title">Our Location</h3>
							<div class="panel panel-default">
								<div class="panel-body">
									<div class="store-image"><img src="assets/images/logo.png" alt="Your Store"
											title="Your Store" class="img-responsive"></div>
									<div class="store-address">
										<i class="fa fa-home"></i>
										<div class="store-title">Your Store</div>
										<div class="store-detail">National park,d1 588436,United States</div>
										<a href="#" class="btn btn-info"><i
												class="fa-solid fa-location-dot"></i> View
											Google Map</a>
									</div>
									<div class="store-telephone">
										<i class="fa fa-phone"></i>
										<div class="store-title">Telephone</div>
										<div class="store-detail">+1 (123) 8425733</div>
									</div>
									<div class="store-fax">
										<i class="fa fa-fax"></i>
										<div class="store-title">Fax</div>
										<div class="store-detail">0125-589-4475</div>
									</div>
									<div class="store-open">
										<i class="fa-regular fa-clock"></i>
										<div class="store-title">Opening Times</div>
										<div class="store-detail">8:00 to 4:00</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 contact-right">
							<form action="https://html.themability.com/pizzaking/contact.html?submitted=true" method="post" enctype="multipart/form-data"
								class="form-horizontal">
								<fieldset>
									<legend class="contact-title">Contact Form</legend>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="input-name">Your Name</label>
										<div class="col-sm-10">
											<input type="text" id="input-name" class="form-control" required>
										</div>
									</div>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="input-email">E-Mail
											Address</label>
										<div class="col-sm-10">
											<input type="text" id="input-email" class="form-control" required>
										</div>
									</div>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="input-">Phone Number</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" required>
										</div>
									</div>
									<div class="form-group required row">
										<label class="col-sm-2 control-label" for="input-enquiry">Enquiry</label>
										<div class="col-sm-10">
											<textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"
												required></textarea>
										</div>
									</div>
									<div class="form-group required row form-message ">
										<div class="submitted">Your message has been sent Successfully</div>
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



	<%@ include file ="/include/footer.jsp" %>
	<%@ include file ="/include/js.jsp" %>
</body>
</html>
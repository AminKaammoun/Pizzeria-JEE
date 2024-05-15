<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<%@ include file ="/include/css.jsp" %>
</head>
<body>
<%@ include file ="/include/header.jsp" %>

   <div class="blog-section">
        <div class="container">
            <div class="row">
                <aside id="column-left" class="col-sm-3">
                    <div class="account-content list-group">
                        <div class="box-content">
                            <h3 class="toggled relative">Account</h3>
                            <ul class="list-unstyled">
                                <li><a href="my-account.html" class="list-group-item">Login</a></li>
                                <li><a href="my-account.html" class="list-group-item">Register</a></li>
                                <li><a href="#" class="list-group-item">Forgotten Password</a></li>
                                <li><a href="my-account.html" class="list-group-item">My Account</a></li>
                                <li><a href="#" class="list-group-item">Address Book</a></li>
                                <li><a href="#" class="list-group-item">Wish List</a></li>
                                <li><a href="#" class="list-group-item">Order History</a></li>
                                <li><a href="#" class="list-group-item">Downloads</a></li>
                                <li><a href="#" class="list-group-item">Recurring payments</a></li>
                                <li><a href="#" class="list-group-item">Reward Points</a></li>
                                <li><a href="#" class="list-group-item">Returns</a></li>
                                <li><a href="#" class="list-group-item">Transactions</a></li>
                                <li><a href="#" class="list-group-item">Newsletter</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="sidebar">
                        <div class="box-content">
                            <h3 class="toggled relative">Information</h3>
                            <ul class="list-unstyled">
                                <li><a href="about.html" class="list-group-item">About Us</a></li>
                                <li><a href="delivery-information.html" class="list-group-item">Delivery Information</a>
                                </li>
                                <li><a href="privacy-policy.html" class="list-group-item">Privacy Policy</a></li>
                                <li><a href="#" class="list-group-item">Terms &amp; Conditions</a></li>
                                <li><a href="contact.html" class="list-group-item">Contact Us</a></li>
                                <li><a href="site-map.html" class="list-group-item">Site Map</a></li>
                            </ul>
                        </div>
                    </div>
                </aside>
                <div id="content" class="col-sm-9  all-blog my-account">
                    <div class="breadcrumb-main">
                        <div class="breadcrumb-container clearfix">
                            <ul class="breadcrumb">
                                <li><a href="index-2.html">Home</a></li>
                                <li><a href="my-account.html">Account </a></li>
                                <li><a href="my-account.html">Login</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <form action="Register" method="get" enctype="multipart/form-data" class="form-horizontal well">
                                <fieldset id="account">
                                    <legend>Register Account</legend>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-firstname">Full Name</label>
                                        <div class="col-sm-10">
                                           <input type="text" name="name" value="" placeholder="Full Name"
                                                id="input-firstname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-lastname">Login</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="login" value="" placeholder="Login"
                                                id="input-lastname" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                        <div class="col-sm-10">
                                           <input type="email" name="email" value="" placeholder="E-Mail"
                                                id="input-email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                        <div class="col-sm-10">
                                           <input type="tel" name="tel" value="" placeholder="Telephone"
                                                id="input-telephone" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Your Password</legend>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-password">Password</label>
                                        <div class="col-sm-10">
                                           <input type="password" name="pass" value="" placeholder="Password"
                                                id="input-password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-confirm">Password
                                            </label>
                                        <div class="col-sm-10">
                                            <input type="confPass" name="confirm" value=""
                                                placeholder="Password Confirm" id="input-confirm" class="form-control">
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="buttons clearfix">
                                    <div class="pull-right">
                                        <p>
                                            I have read and agree to the <a href="#" class="agree"><b>Privacy
                                                    Policy</b></a>
                                            <input type="checkbox" name="agree" value="1" class="form-check-input">
                                        </p>
                                        &nbsp;
                                        <input type="submit" value="Continue" class="btn btn-primary">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-6">
                            <div class="well">
                                <h2>Login</h2>
                                <form action="Auth" method="get" enctype="multipart/form-data">
                                    <div class="form-group">
                                        <label class="control-label" for="input-email">E-Mail Address</label>
                                        <input type="text" name="login" value="" placeholder="E-Mail Address"
                                            id="input-email" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label" for="input-password">Password</label>
                                        <input type="password" name="pass" value="" placeholder="Password"
                                            id="input-password" class="form-control">
                                        <a href="#">Forgotten Password</a>
                                    </div>
                                    <input type="submit" value="Login" class="btn btn-primary">
                                    <input type="hidden" name="redirect" value="">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- .My Account -->
    <!-- footer -->
   

<%@ include file ="/include/footer.jsp" %>
<%@ include file ="/include/js.jsp" %>
</body>
</html>
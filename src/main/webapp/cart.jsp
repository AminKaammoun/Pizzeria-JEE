<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<%@ include file ="/include/css.jsp" %>
</head>
<body>
<%@ include file ="/include/header.jsp" %>

	  <div class="blog-section">
        <div id="checkout-cart" class="container">
            <div class="row">
                <aside id="column-left" class="col-sm-3">
                   
                    <script>
                        $(function () {
                            $(".parent .fa.fa-plus").remove();
                            $(".parent .toggled").append("<i class='fa fa-plus'></i>");
                            $('.parent .toggled').click(function (e) {
                                e.preventDefault();
                                if (!$(this).parent().hasClass('active')) {
                                    $('+ ul', $('a.list-group-item.main-item')).slideUp();
                                    $('a.list-group-item.main-item').removeClass('active');
                                }
                                $(this).parent().toggleClass('active');
                                $('+ ul', $(this).parent()).slideToggle('slow');
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
                                        <div id="featured-carousel" class="box-product  product-carousel "
                                            data-items="4">
                                            <div class="product-layout col-xs-12">
                                                <div class="product-thumb transition">
                                                    <div class="image">
                                                        <a href="#" class="thumb-image">
                                                            <img src="assets/images/products/14.jpg" alt="Pioneer Pizza"
                                                                title="Pioneer Pizza" class="img-responsive">

                                                        </a>
                                                    </div>
                                                    <div class="product-description">
                                                        <div class="caption">
                                                            <div class="title-rating clearfix">
                                                                <h4 class="product-title"><a href="product.html">Pioneer
                                                                        Pizza</a></h4>
                                                                <div class="rating">
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa-regular fa-star"></i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price-cartbtn clearfix">
                                                                <p class="price">
                                                                    $123.20

                                                                </p>
                                                                <!-- <p class="description">iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And..</p> -->

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layout col-xs-12">
                                                <div class="product-thumb transition">
                                                    <div class="image">


                                                        <a href="#" class="thumb-image">
                                                            <img src="assets/images/products/1.jpg" alt="Sunrise Patrol"
                                                                title="Sunrise Patrol" class="img-responsive">
                                                        </a>

                                                    </div>
                                                    <div class="product-description">
                                                        <div class="caption">
                                                            <div class="title-rating clearfix">
                                                                <h4 class="product-title"><a href="product.html">Sunrise
                                                                        Patrol</a></h4>
                                                                <div class="rating">
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
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


                                                        <a href="#" class="thumb-image">
                                                            <img src="assets/images/products/16.jpg" alt="jain pizza"
                                                                title="jain pizza" class="img-responsive">
                                                        </a>

                                                    </div>
                                                    <div class="product-description">
                                                        <div class="caption">
                                                            <div class="title-rating clearfix">
                                                                <h4 class="product-title"><a href="product.html">jain
                                                                        pizza</a></h4>
                                                                <div class="rating">
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa fa-star fa-stack-2x"></i><i
                                                                            class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="fa-regular fa-star"></i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price-cartbtn clearfix">
                                                                <p class="price">
                                                                    $242.00
                                                                </p>
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
                        <div id="banner0" class="swiper-container swiper-container-horizontal swiper-container-fade">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide swiper-slide-active"><a href="#"><img
                                            src="assets/images/banners/category_banner2.jpg" alt="Left Banner"
                                            class="img-responsive"></a></div>
                            </div>
                        </div>
                    </div>
                </aside>
                <div id="content" class="col-sm-9  all-blog">
                    <div class="breadcrumb-main">
                        <div class="breadcrumb-container clearfix">
                            <h1 class="page-title">Shopping Cart</h1>

                            <ul class="breadcrumb">
                                <li><a href="index-2.html">Home</a></li>

                                <li><a href="#">Shopping Cart</a></li>

                            </ul>
                        </div>
                    </div>
                    <h1 class="cart-title">Shopping Cart
                        &nbsp;(0.00kg)
                    </h1>
                    <form action="#" method="post" enctype="multipart/form-data">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td class="text-center">Image</td>
                                        <td class="text-left">Product Name</td>
                                        <td class="text-left">Model</td>
                                        <td class="text-left">Quantity</td>
                                        <td class="text-right">Unit Price</td>
                                        <td class="text-right">Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <a href="#">
                                                <img src="assets/images/products/15.jpg" alt="PeppiPizza"
                                                    title="PeppiPizza" class="img-thumbnail checkout-img">
                                            </a>
                                        </td>
                                        <td class="text-left"><a href="#">PeppiPizza</a> <br>
                                            <small>Reward Points: 1000</small>
                                        </td>
                                        <td class="text-left">SAM1</td>
                                        <td class="text-left">
                                            <div class="input-group btn-block">
                                                <div class="product-btn-quantity">
                                                    <button class="minus"><i class="fa fa-minus"></i></button>
                                                    <input type="text" name="quantity" value="1" size="2"
                                                        id="input-quantity" class="form-control">
                                                    <button class="plus"><i class="fa fa-plus"></i></button>
                                                    <span class="input-group-btn">
                                                        <button type="button" data-toggle="tooltip" title=""
                                                            class="btn btn-danger" data-original-title="Remove"><i
                                                                class="fa fa-times-circle"></i></button>
                                                    </span>
                                                </div>

                                            </div>
                                        </td>
                                        <td class="text-right">$200</td>
                                        <td class="text-right">$200</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-4 col-sm-offset-8">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td class="text-left cart-total-title">Sub-Total:</td>
                                        <td class="text-right cart-total-price">$200.00</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left cart-total-title">Eco Tax (-2.00):</td>
                                        <td class="text-right cart-total-price">$2.00</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left cart-total-title">VAT (20%):</td>
                                        <td class="text-right cart-total-price">$40.00</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left cart-total-title">Total:</td>
                                        <td class="text-right cart-total-price">$200</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="buttons clearfix">
                            <div class="pull-left"><a href="shop.jsp" class="btn btn-default">Continue Shopping</a></div>
                            <div class="pull-right"><a href="#" class="btn btn-primary">Checkout</a></div>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Giỏ hàng</title>
</head>
<body>
<!-- Page Banner Section Start -->
<div class="page-banner-section section" style="background-image: url(assets/images/hero/hero-1.jpg)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Giỏ hàng của tôi</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="cart.html">Giỏ hàng của tôi</a></li>
                </ul>

            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->

<!-- Page Section Start -->
<div class="page-section section mt-80 mt-lg-60 mt-md-60 mt-sm-60 mt-xs-40 mb-40 mb-lg-20 mb-md-20 mb-sm-20 mb-xs-0">
    <div class="container">

        <form action="#">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table table-responsive mb-40">
                        <table>
                            <thead>
                            <tr>
                                <th class="pro-thumbnail">Hình ảnh</th>
                                <th class="pro-title">Tên sản phẩm</th>
                                <th class="pro-price">Giá</th>
                                <th class="pro-quantity">Số lượng</th>
                                <th class="pro-subtotal">Tổng tiền</th>
                                <th class="pro-remove">Xóa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-thumbnail"><a href="#"><img src="assets/images/product/product-1.jpg" alt="" /></a></td>
                                <td class="pro-title"><a href="#">Váy trẻ em Tmart</a></td>
                                <td class="pro-price"><span class="amount">125.000đ</span></td>
                                <td class="pro-quantity"><div class="pro-qty"><input type="text" value="1"></div></td>
                                <td class="pro-subtotal">125.000đ</td>
                                <td class="pro-remove"><a href="#">x</a></td>
                            </tr>
                            <tr>
                                <td class="pro-thumbnail"><a href="#"><img src="assets/images/product/product-2.jpg" alt="" /></a></td>
                                <td class="pro-title"><a href="#">Áo liền quần Jumpsuit</a></td>
                                <td class="pro-price"><span class="amount">100.00đ</span></td>
                                <td class="pro-quantity"><div class="pro-qty"><input type="text" value="1"></div></td>
                                <td class="pro-subtotal">100.000đ</td>
                                <td class="pro-remove"><a href="#">×</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="cart-buttons mb-30">
                        <input type="submit" value="Cập nhật giỏ hàng" />
                        <a href="index.html">Tiếp tục mua sắm</a>
                    </div>
                    <div class="cart-coupon mb-40">
                        <h4>Phiếu mua hàng</h4>
                        <p>Nhập mã giảm giá nếu bạn có.</p>
                        <div class="cuppon-form">
                            <input type="text" placeholder="Mã giảm giá" />
                            <input type="submit" value="Áp dụng" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-5 col-12">
                    <div class="cart-total fix mb-40">
                        <h3>Tổng giá trị đơn hàng</h3>
                        <table>
                            <tbody>
                            <tr class="cart-subtotal">
                                <th>ƯỚC tÍNH</th>
                                <td><span class="amount">225.000đ</span></td>
                            </tr>
                            <tr class="order-total">
                                <th>Tổng cộng</th>
                                <td>
                                    <strong><span class="amount">225.000đ</span></strong>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <div class="proceed-to-checkout section mt-30">
                            <a href="checkout.html">Tiến hành thanh toán</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>
</div><!-- Page Section End -->

</body>
</html>

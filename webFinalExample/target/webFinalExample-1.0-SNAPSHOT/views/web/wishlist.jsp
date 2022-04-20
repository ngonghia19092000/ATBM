<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <title>Danh Sach Yeu Thich</title>
</head>
<body>

<!-- Page Banner Section Start -->
<div class="page-banner-section section" style="background-image: url<c:url value="/template/web/assets/images/hero/hero-1.jpg"/>)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Danh sách yêu thích</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="wishlist.html">Danh sách yêu thích</a></li>
                </ul>

            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->

<!-- Page Section Start -->
<div class="page-section section mt-80 mt-lg-60 mt-md-60 mt-sm-60 mt-xs-40 mb-80 mb-lg-60 mb-md-60 mb-sm-60 mb-xs-40">
    <div class="container">

        <form action="#">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table table-responsive">
                        <table>
                            <thead>
                            <tr>
                                <th class="pro-thumbnail">Hình ảnh</th>
                                <th class="pro-title">Sản phẩm</th>
                                <th class="pro-price">Giá</th>
                                <th class="pro-quantity">Số lượng</th>
                                <th class="pro-subtotal">Thêm vào giỏ hàng</th>
                                <th class="pro-remove">Xóa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="pro-thumbnail"><a href="#"><img src="assets/images/product/product-1.jpg" alt="" /></a></td>
                                <td class="pro-title"><a href="#">Váy trẻ em Tmart</a></td>
                                <td class="pro-price"><span class="amount">125.000 đ</span></td>
                                <td class="pro-quantity"><div class="pro-qty"><input type="text" value="1"></div></td>
                                <td class="pro-add-cart"><a href="#">thêm vào giỏ hàng</a></td>
                                <td class="pro-remove"><a href="#">×</a></td>
                            </tr>
                            <tr>
                                <td class="pro-thumbnail"><a href="#"><img src="assets/images/product/product-2.jpg" alt="" /></a></td>
                                <td class="pro-title"><a href="#">Áo liền quần</a></td>
                                <td class="pro-price"><span class="amount">100.000 đ</span></td>
                                <td class="pro-quantity"><div class="pro-qty"><input type="text" value="1"></div></td>
                                <td class="pro-add-cart"><a href="#">thêm vào giỏ hàng</a></td>
                                <td class="pro-remove"><a href="#">×</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </form>

    </div>
</div><!-- Page Section End -->

</body>

</html>
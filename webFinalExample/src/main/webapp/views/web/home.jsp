<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Trang Chu</title>
</head>
<body>
<div class="hero-section section">
    <!-- Hero Slider Start -->
    <div class="hero-slider hero-slider-one fix">
        <!-- Hero Item Start -->
        <div class="hero-item" style="background-image: url(<C:url value="/template/web/assets/images/hero/hero-1.jpg"/>)">
            <!-- Hero Content -->
            <div class="hero-content">
                <h1>Giảm giá đến 35% cho<br>sản phẩm mới nhất </h1>
                <a href="#">XEM NGAY</a>
            </div>
        </div><!-- Hero Item End -->
        <!-- Hero Item Start -->
        <div class="hero-item" style="background-image: url(<c:url value="/template/web/assets/images/hero/hero-2.jpg"/>)">
            <!-- Hero Content -->
            <div class="hero-content">
                <h1>Giảm giá đến 35% cho<br>sản phẩm mới nhất </h1>
                <a href="#">XEM NGAY</a>
            </div>
        </div><!-- Hero Item End -->
    </div><!-- Hero Slider End -->
</div><!-- Hero Section End -->
<div class="product-section section mb-40 mb-lg-20 mb-md-20 mb-sm-20 mb-xs-0">
    <div class="container">
        <div class="row">
            <div class="section-title text-center col mb-30">
                <h1>Sản phẩm phổ biến</h1>
                <p>
                    Tất cả các sản phẩm phổ biến sẽ tìm thấy ở đây</p>
            </div>
        </div>
        <div class="row">
            <c:forEach var="item" items="${popular}">
                <div class="col-xl-3 col-lg-4 col-md-6 col-12 mb-40">
                    <div class="product-item">
                        <div class="product-inner">
                            <div class="image">
                                <img src="<c:url value="${item.thumnail}" />" alt="">
                                <div class="image-overlay">
                                    <div class="action-buttons">
                                        <button>thêm vào giỏ hàng</button>
                                        <button>thêm vào yêu thích</button>
                                    </div>
                                </div>
                            </div>
                            <div class="content">
                                <div class="content-left">
                                    <c:url var="detail" value="/detail">
                                        <c:param name="type" value="detail"/>
                                        <c:param name="id" value="${item.id}"/>
                                    </c:url>
                                    <h4 class="title"><a href="${detail}">${item.name}</a></h4>
                                    <div class="ratting">
                                        <c:forEach begin="1" end="${item.score}" step="1">
                                            <i class="fa fa-star"></i>
                                        </c:forEach>
                                        <c:forEach begin="1" end="${5-item.score}" step="1">
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </c:forEach>
                                    </div>
                                    <h5 class="size">Size: <span>S</span><span>M</span><span>L</span><span>XL</span></h5>
                                    <h5 class="color">Color: <span style="background-color: #ffb2b0"></span><span style="background-color: #0271bc"></span><span style="background-color: #efc87c"></span><span style="background-color: #00c183"></span></h5>
                                </div>
                                <div class="content-right">
                                    <fmt:parseNumber var="price" integerOnly="true" type="number" value="${item.price/1000}"/>
                                    <span style="color: #00b7ea; font-weight: bold"  class="price"><c:out value="${price}"/> K</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div><!-- Product Section End -->
<!-- Banner Section Start -->
<div class="banner-section section fix mb-70 mb-lg-50 mb-md-50 mb-sm-50 mb-xs-30">
    <div class="row row-5">
        <div class="col-lg-4 col-md-6 col-12 mb-10">
            <div class="banner banner-3">
                <a href="#" class="image"><img src="<c:url value="/template/web/assets/images/banner/banner-4.jpg"/>" alt="Banner Image"></a>
                <div class="content" style="background-image: url(/template/web/assets/images/banner/banner-3-shape.png)">
                    <h1>Sản phẩm mới</h1>
                    <h2>Giảm giá đến 25%</h2>
                    <h4> <br> </h4>
                </div>
                <a href="#" class="shop-link" data-hover="XEM NGAY">XEM NGAY</a>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-12 mb-10">
            <div class="banner banner-4">
                <a href="#" class="image"><img src="<c:url value="/template/web/assets/images/banner/banner-5.jpg"/>" alt="Banner Image"></a>
                <div class="content">
                    <div class="content-inner">
                        <h1>Mua sắm trực tuyến</h1>
                        <h2>Giảm 20%<br>Xu hướng mới cho năm 2020</h2>
                        <a href="#" data-hover="XEM NGAY">XEM NGAY</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-6 col-12 mb-10">
            <div class="banner banner-5">
                <a href="#" class="image"><img src="<c:url value="/template/web/assets/images/banner/banner-6.jpg"/>" alt="Banner Image"></a>
                <div class="content" style="background-image: url(/template/web/assets/images/banner/banner-5-shape.png)">
                    <h1>BỘ sưu tập giành cho<br>BÉ GÁI</h1>
                    <h2>Giảm giá 30%</h2>
                </div>
                <a href="#" class="shop-link" data-hover="XEM NGAY">XEM NGAY</a>
            </div>
        </div>
    </div>
</div><!-- Banner Section End -->
<!-- Product Section Start -->
<div class="product-section section mb-40 mb-lg-20 mb-md-20 mb-sm-20 mb-xs-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-12 mb-40">
                <div class="row">
                    <div class="section-title text-left col mb-30">
                        <h1>Ưu đãi tốt nhất</h1>
                        <p>Ưu đãi dành riêng cho bạn</p>
                    </div>
                </div>
                <div class="best-deal-slider row">
                    <div class="slide-item col">
                        <div class="best-deal-product">
                            <c:url var="detailBestSale" value="/detail">
                                <c:param name="type" value="detail"/>
                                <c:param name="id" value="${bestSale.id}"/>
                            </c:url>
                            <div class="image"><img src="<c:url value="${bestSale.thumnail}"/> " alt=""></div>
                            <div class="content-top">
                                <div class="content-top-left">
                                    <h4 class="title"><a href="${detailBestSale}">${bestSale.name}</a></h4>
                                    <div class="ratting">
                                        <c:forEach begin="1" end="${bestSale.score}" step="1">
                                            <i class="fa fa-star"></i>
                                        </c:forEach>
                                        <c:forEach begin="1" end="${5-bestSale.score}" step="1">
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="content-top-right">
                                    <fmt:parseNumber var="price2" integerOnly="true" type="number" value="${bestSale.price/1000}"/>
                                    <fmt:parseNumber var="pricesale2" integerOnly="true" type="number" value="${bestSale.pricesale/1000}"/>
                                    <span class="price">${pricesale2}K<span class="old"><strike>${price2}K</strike></span></span>
                                </div>
                            </div>
                            <div class="content-bottom">
                                <div class="countdown" data-countdown="2019/06/20"></div>
                                <a href="${detailBestSale}" data-hover="XEM NGAY">XEM NGAY</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-6 col-12 pl-50 pl-sm-15 pl-xs-15">
                <div class="row">
                    <div class="section-title text-left col mb-30">
                        <h1>Sản phẩm giảm giá</h1>
                        <p>Tất cả các sản phẩm tìm thấy ở đây</p>
                    </div>
                </div>

                <div class="small-product-slider row row-7">
                    <c:forEach var="item" items="${sale}">
                        <div class="col mb-40">
                            <div class="on-sale-product">
                                <c:url var="detailSale" value="/detail">
                                    <c:param name="type" value="detail"/>
                                    <c:param name="id" value="${item.id}"/>
                                </c:url>
                                <a href="${detailSale}" class="image"><img src="<c:url value="${item.thumnail}" />" alt=""></a>
                                <div class="content text-center">
                                    <h4 class="title"><a href="${detailSale}">${item.name}</a></h4>
                                    <fmt:parseNumber var="price1" integerOnly="true" type="number" value="${item.price/1000}"/>
                                    <fmt:parseNumber var="pricesale1" integerOnly="true" type="number" value="${item.pricesale/1000}"/>
                                    <span class="price">${pricesale1}K<span class="old">${price1}K</span></span>
                                    <div class="ratting">
                                        <c:forEach begin="1" end="${item.score}" step="1">
                                            <i class="fa fa-star"></i>
                                        </c:forEach>
                                        <c:forEach begin="1" end="${5-item.score}" step="1">
                                            <i class="fa fa-star-o" aria-hidden="true"></i>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div><!-- Product Section End -->
<!-- Feature Section Start -->
<div class="feature-section section bg-theme-two pt-65 pt-lg-55 pt-md-45 pt-sm-45 pt-xs-25 pb-65 pb-lg-55 pb-md-45 pb-sm-45 pb-xs-25 fix" style="background-image: url(/template/web/assets/images/pattern/pattern-dot.png);">
    <div class="container">
        <div class="feature-wrap row justify-content-between">
            <div class="col-md-4 col-12 mt-15 mb-15">
                <div class="feature-item text-center">
                    <div class="icon"><img src="<c:url value="/template/web/assets/images/feature/feature-1.png" />" alt=""></div>
                    <div class="content">
                        <h3>Giao hàng miễn phí</h3>
                        <p>Khi đơn hàng có giá trị từ 200.000đ</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12 mt-15 mb-15">
                <div class="feature-item text-center">
                    <div class="icon"><img src="<c:url value="/template/web/assets/images/feature/feature-2.png" />" alt=""></div>
                    <div class="content">
                        <h3>Đổi trả hàng</h3>
                        <p>Trong thời gian đến 28 ngày</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12 mt-15 mb-15">
                <div class="feature-item text-center">
                    <div class="icon"><img src="<c:url value="/template/web/assets/images/feature/feature-3.png" />" alt=""></div>
                    <div class="content">
                        <h3>An toàn thanh toán</h3>
                        <p>Thanh toán dễ dàng và bảo mật</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- Feature Section End -->

</body>
</html>

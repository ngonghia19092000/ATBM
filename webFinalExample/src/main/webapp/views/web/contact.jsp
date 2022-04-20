<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Liên hệ với chúng tôi</title>
</head>
<body>
<!-- Page Banner Section Start -->
<div class="page-banner-section section" style="background-image: url(assets/images/hero/hero-1.jpg)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Liên hệ với chúng tôi</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li class="active"><a href="contact.html">Liên hệ với chúng tôi</a></li>
                </ul>

            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->

<!-- Page Section Start -->
<div class="page-section section mt-80 mt-lg-60 mt-md-60 mt-sm-60 mt-xs-40 mb-40 mb-lg-20 mb-md-20 mb-sm-20 mb-xs-0">
    <div class="container">
        <div class="row row-30">

            <div class="contact-info-wrap col-md-6 col-12 mb-40">
                <h3>Liên lạc</h3>
                <p>Bạn có thắc mắc hay cần báo cáo vấn đề xảy ra với sản phẩm hoặc dịch vụ của Jadusona. Chúng tôi luôn sẵn sàng hỗ trợ bạn.</p>
                <ul class="contact-info">
                    <li>
                        <i class="fa fa-map-marker"></i>
                        <p>Kí túc xá khu B ĐHQG
                            Văn Phòng 714-F2 <br>tại đây</p>
                    </li>
                    <li>
                        <i class="fa fa-phone"></i>
                        <p><a href="#">+84 395 165 083</a><a href="#">+84 399 491 909</a></p>
                    </li>
                    <li>
                        <i class="fa fa-globe"></i>
                        <p><a href="#">tntBaby@gmail.com</a><a href="#">www.tntbaby.com</a></p>
                    </li>
                </ul>
            </div>

            <div class="contact-form-wrap col-md-6 col-12 mb-40">
                <h3>Phản hồi của bạn</h3>
                <form  id="contact-form" action="assets/php/mail.php">
                    <div class="contact-form">
                        <div class="row">
                            <div class="col-lg-6 col-12 mb-30"><input type="text" name="name" placeholder="Tên của bạn"></div>
                            <div class="col-lg-6 col-12 mb-30"><input type="email" name="email" placeholder="Địa chỉ email"></div>
                            <div class="col-12 mb-30"><textarea name="message" placeholder="Lời nhận xét"></textarea></div>
                            <div class="col-12"><input type="submit" value="Gửi"></div>
                        </div>
                    </div>
                </form>
                <p class="form-messege"></p>
            </div>

        </div>
    </div>
</div><!-- Page Section End -->

</body>
</html>

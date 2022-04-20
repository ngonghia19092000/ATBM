<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title>Dang ky</title>

</head>
<body>
<div class="page-banner-section section" style="background-image: url(<c:url value="/template/web/assets/images/hero/hero-1.jpg"/> )">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">
                <h1>Đăng ký</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="wishlist.html">Đăng ký</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->
<!-- Page Section Start -->
<!-- Page Section End -->
<div class="page-content">
    <div class="row">

        <form class="form-register" id="form-register" action="<c:url value="/dang-ky"/> " method="post">

            <div class="col-md-6" style="margin: 10px auto ">

                <div id="register-form" class="login-register-form-wrap">
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">${message}</div>
                    </c:if>
                    <h3>Thông tin tài khoản</h3>

                    <div class="row">

                        <div class="md-5 col-md-6">
                            <label for="fullName">Họ và tên*</label>
                            <input type="text" placeholder="Họ và tên" class="form-control" id="fullName"
                                   name="fullName" required>
                        </div>

                        <div class="md-5 col-md-6">
                            <label for="userName">Tên đăng nhập*</label>
                            <input type="text" placeholder=" Tên tài khoản" class="form-control" id="userName"
                                   name="userName" required>
                        </div>

                        <div class="md-5 col-md-6">
                            <label for="email">Địa chỉ Email*</label>
                            <input type="email" placeholder="Địa chỉ Email" class="form-control" id="email" name="email"
                                   required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
                        </div>

                        <div class="md-5 col-md-6">
                            <label for="phone"> Số điện thoại*</label>
                            <input type="tel" placeholder="Số điện thoại" class="form-control" name="phone" id="phone"
                                   required pattern="[0-9]{10,12}">
                        </div>

                        <div class="md-5 col-md-6">
                            <label for="password">Mật khẩu*</label>
                            <input type="password" placeholder="Mật khẩu" class="form-control" id="password"
                                   name="password" required>
                        </div>
                        <div class="md-5 col-md-6">
                            <label for="confirm_password">Xác nhận mật khẩu*</label>
                            <input type="password" placeholder="Xác nhận mật khẩu" class="form-control"
                                   id="confirm_password" name="confirm_password" required>
                        </div>


                        <div class="md-5 col-md-12">
                            <label for="address">Địa chỉ*</label>
                            <input type="text" placeholder="Địa chỉ" id="address" class="form-control" name="address"
                                   required>
                        </div>
                        <div class="md-5 col-md-12" style="text-align: center;margin-top: 10px;padding-bottom: 20px; margin-left: 200px">
                            <div class="g-recaptcha"
                                 data-sitekey="6LdvNyMaAAAAAM8ZX1JFyfze3VZoqwT112ycN1po"></div>
                        </div>


                        <div class="md-5 col-md-12" style="text-align: center;margin-top: 10px;padding-bottom: 20px">
                            <input type="hidden" value="register" name="action"/>
                            <input class="col-12" type="submit" value="Đăng ký"></button>

                        </div>

                    </div>

                </div>
            </div>
        </form>
    </div>
</div>
</div>


</body>
</html>

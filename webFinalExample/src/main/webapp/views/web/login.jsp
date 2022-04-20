<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="page-banner-section section" style="background-image: url(<c:url value="/template/web/assets/images/hero/hero-1.jpg"/>)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">
                <h1>Đăng nhập </h1>
                <ul class="page-breadcrumb">
                    <li><a href="<c:url value="/trang-chu"/> ">Trang chủ</a></li>
                    <li><a href="<c:url value="/dang-nhap?action=login"/> ">Đăng nhập</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->
<!-- Page Section Start -->
<div class="page-section section mt-80 mt-lg-60 mt-md-60 mt-sm-60 mt-xs-40 mb-40 mb-lg-20 mb-md-20 mb-sm-20 mb-xs-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-12 mb-40">
                <div class="login-register-form-wrap">
                    <h3>Đăng nhập</h3>
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">${message}</div>
                    </c:if>
                    <form action="<c:url value="/dang-nhap" />" class="mb-30" method="post" id="formLogin">
                        <div class="row">
                            <div class="col-12 mb-15">
                                <input type="text" id="userName" name="userName" placeholder="Tên tài khoản ">
                            </div>
                            <div class="col-12 mb-15">
                                <input type="password"  id="password" name="password"placeholder="Mật khẩu">
                            </div>
                            <input type="hidden" value="login" name="action" />
                            <div class="">
                                <input style="width: 15px;  height: 15px; margin-left: 20px" type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label style="margin-left: 20px;" class="form-check-label" for="exampleCheck1">Nhớ tài khoản</label>
                            </div>
                            <div class="g-recaptcha"
                                 data-sitekey="6LdvNyMaAAAAAM8ZX1JFyfze3VZoqwT112ycN1po"></div>
                            <div class="col-12"><input type="submit" value="Login"><a style="margin-left: 30px;" href="<c:url value="/dang-ky?action=register"/> ">-> Hoặc Đăng kí</a></div>
                            <div style="margin-top: 10px;" class="col-12"><a href="<c:url value="/forget-pass"/> " title="">Quên mật khẩu?</a></div>
                        </div>
                    </form>
                    <h4>Bạn cũng có thể đăng nhập với...</h4>
                    <div  id="status">
                    </div>
                    <div class="social-login">
                        <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
                        </fb:login-button>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div><!-- Page Section End -->
</body>
</html>

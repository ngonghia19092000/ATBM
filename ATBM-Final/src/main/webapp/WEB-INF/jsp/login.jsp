<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<mvc:resources mapping="/resources/**" location="/resources/static/" />

<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Đăng nhập</title>

</head>

<%@ include file="_header.jsp" %>
<body>

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Trang đăng nhập</h1>
                <nav class="d-flex align-items-center">
                    <a href="/">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="/account">Đăng nhập</a>
                </nav>
            </div>
        </div>
    </div>
</section>

<!--================Login Box Area =================-->
<section class="login_box_area section_gap">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="login_box_img">
                    <img class="img-fluid" src="img/login.jpg" alt="">
                    <div class="hover">
                        <h4>Bạn chưa có tài khoản?</h4>
                        <p>Hãy đăng ký ngay để có trải nghiệm mua sắm vui vẻ.</p>
                        <a class="primary-btn" href="/register">Đăng ký tài khoản</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="login_form_inner">
                    <h3>Đăng nhập</h3>
                    <form class="row login_form" action="/login" method="post" id="contactForm" novalidate="novalidate">
                        <div class="col-md-12 form-group">
                            <input type="text" class="form-control" id="username" name="userName" placeholder="Tên đăng nhập" onfocus="this.placeholder = '', showError()" onblur="this.placeholder = 'Tên đăng nhập'">
                        </div>
                        <div class="col-md-12 form-group">
                            <input type="password" class="form-control" id="password" name="passWord" placeholder="Mật khẩu" onfocus="this.placeholder = '', showError()" onblur="this.placeholder = 'Mật khẩu'">
                        </div>
                        <c:if test="${errorMessage != null}">
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <label id="error" style="color: red">Sai tên đăng nhập hoặc mật khẩu</label>
                                </div>
                            </div>
                        </c:if>
                        <div class="col-md-12 form-group">
                            <button type="submit" value="submit" class="primary-btn">Đăng nhập</button>
                            <a href="#">Quên mật khẩu?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

</body>

<%@ include file="_footer.jsp" %>

</html>
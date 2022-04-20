<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quen mat khau</title>

</head>
<body>
<div class="page-banner-section section" style="background-image: url(<c:url value="/template/web/assets/images/hero/hero-1.jpg"/>)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">
                <h1>Xác thực tài khoản</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li>Xác thực tài khoản</li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->
<!-- Page Section Start -->
<div class="container padding-bottom-3x mb-2 mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
            <form class="card mt-4" method="post" action="<c:url value="/verify" />">
                <div class="card-body">
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">${message}</div>
                    </c:if>
                    <div class="form-group"><label for="email-for-pass">Nhập mã code của bạn</label>
                        <input class="form-control" type="number" id="email-for-pass" name="authcode" required=""><small
                            class="form-text text-muted">Nhập mã code của  bạn mà chúng tôi vừa gửi vào email đăng ký</small></div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-success" type="submit" >Hoàn tất đăng ký
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

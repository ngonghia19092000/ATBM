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
                <h1>Xác nhận mật khẩu</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="">Quên mật khẩu</a></li>
                    <li><a href="">Xác nhận mật khẩu</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->
<!-- Page Section Start -->
<div class="container">
    <div class="row">
        <c:if test="${not empty message}">
            <div class="alert alert-${alert}">${message}</div>
        </c:if>
        <div class="col-sm-6 col-sm-offset-3" style="margin-bottom: 50px;">
            <p>
                Chúng tôi đã gửi cho bạn một mã để thay đổi mật khẩu mới.Hãy kiểm tra hộp thư của bạn !<a style="color: lightgreen" href="#" title="">Gửi lại (0:59s)</a></p>
            <form method="post" id="passwordForm" action="<c:url value="/change-pass" />">
                <input type="text" class="input-lg form-control" name="code" id="code" placeholder="Nhập mã" autocomplete="off" style="margin-bottom: 30px">
                <input type="password" class="input-lg form-control" name="password" id="password1" placeholder="Nhập mât khẩu mới" autocomplete="off">
                <div class="row">
                    <div class="col-sm-6">
                        <span id="8char" class="fa fa-times" style="color:#FF0004;"></span> Ít nhất 8 ký tự.<br>
                        <span id="ucase" class="fa fa-times" style="color:#FF0004;"></span> Ít nhất 1 chữ in hoa.
                    </div>
                    <div class="col-sm-6">
                        <span id="lcase" class="fa fa-times" style="color:#FF0004;"></span> Ít nhất 1 chữ thường.<br>
                        <span id="num" class="fa fa-times" style="color:#FF0004;"></span> Ít nhất 1 số.
                    </div>
                </div>
                <input type="password" class="input-lg form-control" name="password2" id="password2" placeholder="Nhập lại mật khẩu" autocomplete="off">
                <div class="row">
                    <div class="col-sm-12">
                        <span id="pwmatch" class="fa fa-times" style="color:#FF0004;"></span> Mật khẩu trùng khớp
                    </div>
                </div>
                <input type="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" data-loading-text="Changing Password..." value="Thay đổi mật khẩu">
            </form>
        </div>
        <!--/col-sm-6-->
    </div>
    <!--/row-->
</div>
</body>
</html>

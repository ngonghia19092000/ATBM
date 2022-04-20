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
                <h1>Quên mật khẩu</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="wishlist.html">Quên mật khẩu</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->
<!-- Page Section Start -->
<div class="container padding-bottom-3x mb-2 mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">
            <c:if test="${not empty message}">
                <div class="alert alert-${alert}">${message}</div>
            </c:if>
            <div class="forgot">
                <h2>Bạn đã quên mật khẩu?</h2>
                <p>Thay đổi mật khẩu của bạn trong ba bước đơn giản. Điều này sẽ giúp bạn bảo mật mật khẩu của mình!</p>
                <ol class="list-unstyled">
                    <li><span class="text-primary text-medium">1. </span>Nhập địa chỉ email của bạn dưới đây..</li>
                    <li><span class="text-primary text-medium">2. </span>Hệ thống của chúng tôi sẽ gửi cho bạn một mã số
                        vào email của bạn.
                    </li>
                    <li><span class="text-primary text-medium">3. </span>Sử dụng mã số đó để đặt lại mật khẩu của bạn.
                    </li>
                </ol>
            </div>
            <form class="card mt-4" method="post" action="<c:url value="/forget-pass"/> ">
                <div class="card-body">
                    <div class="form-group"><label for="email-for-pass">Nhập địa chỉ email của bạn</label> <input
                            class="form-control" type="text" id="email-for-pass" name="email" required=""><small
                            class="form-text text-muted">Nhập địa chỉ email bạn đã sử dụng trong quá trình đăng ký trên
                        www.Jadusona.com. Sau đó, chúng tôi sẽ gửi một liên kết đến địa chỉ này qua email.</small></div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-success" type="submit">Lấy mật khẩu mới
                    </button>
                    <button class="btn btn-danger" type="button"><a href="<c:url value="/trang-chu"/> ">Quay lại trang chủ</a></button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

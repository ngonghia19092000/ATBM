<!-- Start Banner Area -->

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title>Cùng mua sắm ngay nào- Xác nhận đơn hàng</title>


</head>
<%--header ở đaya--%>
<%@ include file="_header.jsp" %>
<body>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Trang xác nhận đơn hàng</h1>
                <nav class="d-flex align-items-center">
                    <a href="/home">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="/tracking-now">Xác nhận đơn hàng</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Tracking Box Area =================-->
<section class="tracking_box_area section_gap">
    <div class="container">
        <div class="">
            <p> Bạn có thể kiểm tra đơn hàng thông qua hash </p>
            <div class="tracking_form row">
                <div class="col-md-2 form-group">
                    <span>MD5</span>

                </div>
                <div class="col-md-4 form-group">
                    <input type="text" class="form-control" id="code-hash"  value="${hashcode}" disabled>
                </div>

            </div>

            <p>Nhập mã xác nhận để xác nhận đơn hàng</p>
            <p></p>
            <div class="tracking_form row">
                <div class="col-md-10 form-group">
                    <input type="text" class="form-control" id="code-order"  value="${codeoder}" disabled>
                </div>
                <div class="col-md-2 form-group">
                    <button  onclick="copyCodeOrder()" class="primary-btn">Sao chép</button>
                </div>

                <div class="col-md-12 form-group">
                    <input type="text" class="form-control" id="decodeText" placeholder="Nhập mã xác nhận" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Mã xác nhận'">
                </div>
                <div class="col-md-5 form-group">
                    <button onclick="checkCodeOrder(${sessionScope.user.id})" class="primary-btn">Xác nhận đơn hàng</button>
                </div>
                <div class="col-md-12 form-group">
                    <p>Bạn có thể tải phần mềm xác thực <a href="https://drive.google.com/file/d/18RziVqBo2IeCGNmD1MEs33z7_hmohksp/view?usp=sharing" target="_blank"> Tại đây</a></p>
                </div>
            </div>
        </div>

    </div>
</section>

<!--================End Tracking Box Area =================-->
</body>
<%@ include file="_footer.jsp" %>
</html>


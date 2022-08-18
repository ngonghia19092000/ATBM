<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title>Cùng mua sắm ngay nào - Danh sách sản phẩm</title>


</head>
<%--header ở đaya--%>
<%@ include file="_header.jsp" %>
<body>

<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Confirmation</h1>
                <nav class="d-flex align-items-center">
                    <a href="/home">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="/confirmation">Mua hàng thành công</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Order Details Area =================-->
<section class="order_details section_gap">
    <div class="container">
        <h3 class="title_confirmation">Cảm ơn bạ đã ghé thăm. Đơn hàng của bạn đang được xử lý!</h3>
        <div class="row order_d_inner">
            <div class="col-lg-4">
                <div class="details_item">
                    <h4>Thông tin đơn hàng</h4>
                    <ul class="list">
                        <li><a href="#"><span>Mã đơn hàng</span>#${oder.code}</a></li>
                        <li><a href="#"><span>Ngày tạo đơn</span> : ${oder.createDate}</a></li>
                        <li><a href="#" class="myDIV"><span>Tổng giá trị đơn hàng</span>  ${oder.subTotal}</a></li>
                        <li><a href="#"><span>Hình thức thanh toán</span> : Thanh toán khi nhận hàng</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="details_item">
                    <h4>Địa chỉ nhận hàng</h4>
                    <ul class="list">
                        <li><a href="#"><span>Địa chỉ cụ thể</span> : ${oder.address.addressDetails}</a></li>
                        <li><a href="#"><span>Xã/Phường</span> : ${oder.address.wards}</a></li>
                        <li><a href="#"><span>Quận/Huyện</span> :  ${oder.address.districts}</a></li>
                        <li><a href="#"><span>Tỉnh /Thành phố </span> :  ${oder.address.province}</a></li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="order_details_table">
            <h2>Chi tiết đơn hàng</h2>
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Sản phẩm</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Tổng</th>
                    </tr>
                    </thead>
                    <tbody>
                   <c:forEach items="${listItem}" var="item">
                       <tr>
                           <td>
                               <p>${item.product.name}</p>
                           </td>
                           <td>
                               <h5>x${item.quantity}</h5>
                           </td>
                           <td>
                               <p>${item.getSubtotal()}</p>
                           </td>
                       </tr>
                   </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<!--================End Order Details Area =================-->
</body>
<%@ include file="_footer.jsp" %>
</html>


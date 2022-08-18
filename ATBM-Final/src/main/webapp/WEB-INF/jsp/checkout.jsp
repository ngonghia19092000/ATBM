<%@ page import="java.text.DecimalFormat" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title>Cùng mua sắm ngay nào - </title>


</head>
<%--header ở đaya--%>
<%@ include file="_header.jsp" %>
<body>
<%--content--%>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Thủ tục thanh toán</h1>
                <nav class="d-flex align-items-center">
                    <a href="/home">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="/checkout">Thủ tục thanh toán</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!--================Checkout Area =================-->
<section class="checkout_area section_gap">
    <div class="container">
        <div class="billing_details">
            <div class="row">
                <div class="col-lg-6">
                    <h2>Địa chỉ giao hàng</h2>
                    <c:if test="${listAddress.size()==0}">

                        <h3>Danh sách địa chỉ giao hàng trống!</h3>

                        <button class="genric-btn success arrow radius" data-toggle="modal"
                                data-target="#exampleModalCenter">+ Thêm địa chỉ mới
                        </button>


                        <!-- Modal -->


                    </c:if>
                    <c:if test="${listAddress.size()!=0}">



                        <table class="table ">
                            <thead style="border: 2px solid rgba(255,193,22,0.16);
border-radius: 7px;">
                            <th></th>
                            <th><label>Địa chỉ</label></th>
                            <th><label>Địa chỉ cụ thể</label></th>
                            <th><label>Số điện thoại</label></th>


                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${listAddress}">
                                <tr style="border: 2px solid rgba(255,193,22,0.16);
border-radius: 7px;">
                                    <td>
                                        <div class="media">
                                            <div class="media-body">
                                                <input type="radio"  name="myRadios" id="checkCart${item.id}" value="${item.id}"
                                                     onclick="tickAddress(${item.id})"  />


                                            </div>
                                        </div>
                                    </td>

                                    <td>
                                        <div class="media">
                                            <div class="media-body">
                                                <p> ${item.wards}, ${item.districts}, ${item.province}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="media">
                                            <div class="media-body">
                                                <p> ${item.addressDetails}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="media">
                                            <div class="media-body">
                                                <p> ${item.phone}</p>
                                            </div>
                                        </div>
                                    </td>

                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <button class="genric-btn success arrow radius" data-toggle="modal"
                                data-target="#exampleModalCenter">+ Thêm địa chỉ mới
                        </button>
                    </c:if>

                </div>

                <div class="col-lg-6">
                    <h2>Thông tin đơn hàng</h2>
                    <div class="order_box">
                        <h2>Đơn hàng của bạn</h2>
                        <div style="display: flex">
                            <input type="text" placeholder="Nhập mã giảm giá">
                            <a class="tp_btn" href="#">Áp dụng mã </a>
                        </div>

                        <ul class="list">
                            <li><a href="#">Sản phẩm <span>Tổng</span></a></li>
                            <c:forEach var="item" items="${listItem}">
                                <li><a href="#">${item.product.name} <span class="middle">x ${item.quantity}</span>
                                    <span class="last myDIV">${item.getSubtotal()}</span></a></li>
                            </c:forEach>
                        </ul>
                        <ul class="list list_2">
                            <li><a href="#" id="subTotal" c>Tổng giá trị <span class="myDIV">
                                ${subTotal}
                            </span>đ</a></li>
                            <li><a href="#">Shipping <span class="myDIV">25000</span></a></li>
                            <li><a href="#">Total <span class="myDIV">${subTotal+25000}</span></a></li>
                        </ul>
                        <br><br>
                        <div class="payment_item">
                            <h3>Chọn hình thức thanh toán</h3>
                            <div class="radion_btn">
                                <input type="radio" id="f-option5" name="selector">
                                <label for="f-option5">Thanh toán khi nhận hàng</label>
                                <div class="check"></div>
                            </div>
                            <p>- Chỉ nhận hàng khi đơn hàng ở trạng thái "ĐANG GIAO HÀNG"
                                <br>
                                - Lưu ý kiểm tra mã đoen hàng ở trạng thái, mã vận đơn và người gửi trước khi thanh
                                toán</p>
                        </div>
                        <div class="payment_item active">
                            <div class="radion_btn">
                                <input type="radio" id="f-option6" name="selector">
                                <label for="f-option6">Thanh toán online </label>
                                <img src="img/product/card.jpg" alt="">
                                <div class="check"></div>
                            </div>
                            <p>-Đảm bảo rằng tài khoản thanh toán online ccuar bạn đang hoạt động <br>
                                -Có đủ số dư trong tài khoản <br>
                                -Hạn mức thanh toán hằng ngày là 20,000,000 VNĐ</p>
                        </div>
                        <div class="creat_account">
                            <input type="checkbox" id="f-option4" name="selector">
                            <label for="f-option4">Tôi đã đọc và đồng ý với </label>
                            <a href="#">điều kiện và điều khoản</a>
                        </div>
                        <a class="primary-btn" href="#" onclick="xacnhan()">Đặt hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Thêm địa chỉ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="col-md-12 form-group">
                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="Số điện thoại">
                </div>
                <div class="col-md-12 form-group">
                    <input type="text" class="form-control" id="Province" name="province"
                           placeholder="Tỉnh/Thành phố">
                </div>
                <div class="col-md-12 form-group">
                    <input type="text" class="form-control" id="districts" name="districts"
                           placeholder="Quận/Huyện">
                </div>
                <div class="col-md-12 form-group">
                    <input type="text" class="form-control" id="wards" name="wards" placeholder="Phường/Xã">
                </div>
                <div class="col-md-12 form-group">
                    <input type="text" class="form-control" id="addressDetails" name="addressDetails"
                           placeholder="Địa chỉ cụ thể: VD: Số nhà, đường...">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-primary" onclick="addNewAddress()">Tạo mới</button>
            </div>
        </div>
    </div>
</div>
<script>
    function xacnhan() {
        Swal.fire({
            title: 'Xác nhận đặt hàng ?',
            text: "Bạn xác nhận thông tin đơn hàng đều đúng!",
            icon: 'info',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Có! Mua hàng!',
            cancelButtonText: 'Quay lại'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = "/tracking-now";
            }
        })
    }

</script>
</body>
<!-- End Banner Area -->


<%@ include file="_footer.jsp" %>
</html>


<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--header ở đaya--%>
<%@ include file="_admin-header.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<body>
<%--content--%>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Quản lý đơn hàng</h1>
            </div>
        </div>
    </div>
</section>

<div class="col tm-block-col" style="padding: 70px">
    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
        <h2 class="tm-block-title">DANH SÁCH ĐƠN HÀNG</h2>
        <table class="table">
            <thead>
            <tr>
                <th scope="col-2">MÃ ĐƠN HÀNG</th>
                <th scope="col-1">TRẠNG THÁI</th>
                <th scope="col-1">NGƯỜI MUA</th>
                <th scope="col-3">ĐỊA CHỈ GIAO HÀNG</th>
                <th scope="col-1">GIÁ TRỊ ĐƠN</th>
                <th scope="col-2">NGÀY TẠO</th>
                <th scope="col-2">THAO TÁC</th>

            </tr>
            </thead>
        </table>
        <div    style="width:100%;max-height: 450px ; overflow-y: scroll;overflow-x: hidden" >
            <table class="table">
                <tbody>
                <c:forEach items="${listO}" var="oder">
                    <tr>
                        <td style="font-weight: bold">#${oder.code}</td>
                        <td>
                            <c:if test="${oder.order_status== 0}">
                                <span class="genric-btn primary-btn danger small"> Đã hủy</span>
                            </c:if>
                            <c:if test="${oder.order_status== 1}">
                                <span class="genric-btn primary-btn warning small"> Đang chờ xử lý</span>
                            </c:if>
                            <c:if test="${oder.order_status== 2}">
                                <span class="genric-btn primary-btn primary small">Đã xác nhận</span>
                            </c:if>
                            <c:if test="${oder.order_status== 3}">
                                <span class="genric-btn primary-btn info small"> Đang giao hàng</span>
                            </c:if>
                            <c:if test="${oder.order_status== 4}">
                                <span class="genric-btn primary-btn success small">Đã giao hàng</span>
                            </c:if>
                        </td>
                        <td>${oder.customer.userName}</td>
                        <td>${oder.address.addressDetails}</td>
                        <td class="myDIV">${oder.subTotal}</td>
                        <td>${oder.createDate}</td>
                        <td style="display: flex;margin: 0 auto" >
<%--                           chỉnh sủa trạng thái đơn hàng--%>
                            <c:if test="${oder.order_status!= 0}">
                                <select multiple class="genric-btn circle" id="${oder.id}"
                                        onchange="updateOderAdmin(this)">
                                    <option class="genric-btn primary-btn danger small" selected> Cập nhật</option>
                                    <option class="genric-btn primary-btn danger small" value="${0}"> Hủy</option>
                                    <option class="genric-btn primary-btn warning small" value="${1}">Chờ xử lý</option>
                                    <option class="genric-btn primary-btn primary small" value="${2}">Xác nhận đơn
                                    </option>
                                    <option class="genric-btn primary-btn info small" value="${3}">Đang giao hàng
                                    </option>
                                    <option class="genric-btn primary-btn success small" value="${4}">Giao hàng thành
                                        công
                                    </option>
                                </select>
                            </c:if>
    <c:if test="${oder.order_status== 0}">
        <select multiple class="genric-btn circle" id="${oder.id}" disabled>
            <option class="genric-btn primary-btn danger small"selected value="${0}"> Đã hủy</option>
            <option class="genric-btn primary-btn danger small" value="${0}"> Hủy</option>
            <option class="genric-btn primary-btn warning small" value="${1}">Chờ xử lý</option>
            <option class="genric-btn primary-btn primary small" value="${2}">Xác nhận đơn
            </option>
            <option class="genric-btn primary-btn info small" value="${3}">Đang giao hàng
            </option>
            <option class="genric-btn primary-btn success small" value="${4}">Giao hàng thành
                công
            </option>
        </select>
    </c:if>
<%--                            xem chi tiết đơn hàng--%>
                            <button class="genric-btn info-border circle" style="width:50%;loat: right" data-toggle="modal"
                                    data-target="#exampleModalCenter${oder.id}">Xem
                            </button>
                            <div class="modal fade" id="exampleModalCenter${oder.id}" tabindex="-1" role="dialog"
                                 aria-labelledby="exampleModalCenterTitle${oder.id}" aria-hidden="true"
                                 style="width: 100%">
                                <div class="modal-dialog modal-dialog-centered row" role="document">
                                    <div class="modal-content  col">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLongTitle${oder.id}">Chi tiết đơn
                                                hàng</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body" style="max-height: 450px;overflow-y: auto">


                                            <div class="order-detail">
                                                <div class="order-status">
                                                    <h4>Trạng thái |

                                                        <c:if test="${oder.order_status==0}">
                                                        <span>Đã hủy</span></h4>
                                                    </c:if>
                                                    <c:if test="${oder.order_status==1}">
                                                        <span>Chờ xử lý</span></h5>
                                                    </c:if>
                                                    <c:if test="${oder.order_status==2}">
                                                        <span>Đã xác nhận</span></h5>
                                                    </c:if>
                                                    <c:if test="${oder.order_status==3}">
                                                        <span>Đang giao hàng</span></h5>
                                                    </c:if>
                                                    <c:if test="${oder.order_status==4}">
                                                        <span>Giao hàng thành công</span></h5>
                                                    </c:if>

                                                </div>
                                                <div class="order-item">
                                                    <div class="order-header">
                                                        <div class="content">
                                                            <h4>Chi tiết đơn hàng</h4>
                                                            <h5>Mã đơn hàng:<span> #${oder.code}</span></h5>
                                                            <h5>Mã giảm giá: <span> Không áp dụng</span></h5>
                                                            <h5>Thời gian:<span> ${oder.createDate}</span></h5>
                                                        </div>

                                                        <div class="address">
                                                            <br>
                                                            <h5>Địa chỉ giao hàng
                                                                <span> ${oder.address.wards }, ${ oder.address.districts}, ${oder.address.province} </span>
                                                            </h5>
                                                            <h5>Tên người nhận: <span> ${oder.customer.fullName}</span>
                                                            </h5>
                                                            <h5>Số điện thoại:<span> ${oder.address.phone} </span>
                                                            </h5>
                                                            <h5>Địa chỉ cụ
                                                                thể:<span>${oder.address.addressDetails}</span>
                                                            </h5>

                                                        </div>
                                                    </div>
                                                    <div class="order-body">
                                                        <h5>Danh sách sản phẩm:</h5>
                                                        <div class="card card-body">
                                                            <table>
                                                                <thead>
                                                                <th>Sản phẩm</th>
                                                                <th>Số lượng</th>
                                                                <th>Đơn giá</th>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${oder.cartItems}" var="listpro">
                                                                    <tr>
                                                                        <td>${listpro.product.name}</td>
                                                                        <td>${listpro.quantity}</td>
                                                                        <td CLASS="myDIV">${listpro.product.price}</td>
                                                                    </tr>
                                                                </c:forEach>

                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>

                                                    <hr>
                                                    <div class="order-footer">
                                                        <p>Tổng: <span class="myDIV">${oder.subTotal}</span></p>
                                                    </div>

                                                </div>


                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                    data-dismiss="modal">Đóng
                                            </button>

                                        </div>
                                    </div>

                                </div>
                            </div>


                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
<%@ include file="_footer.jsp" %>
</html>


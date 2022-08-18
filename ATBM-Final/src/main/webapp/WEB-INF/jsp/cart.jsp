<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <title>Cùng mua sắm ngay nào - Danh sách sản phẩm</title>

        <link rel="stylesheet" href="../css/cart.css">
</head>
<%--header ở đaya--%>
<%@ include file="_header.jsp" %>
<body>

<c:if test="${cartSize==0}">
    <section class="exclusive-deal-area">
        <div class="container-fluid">
            <div class="row justify-content-center align-items-center">
                <div class="col no-padding exclusive-left">
                    <div class="row clock_sec clockdiv" id="clockdiv">
                        <div class="col-lg-12">
                            <h1>Chưa có sản phẩm nào trong giỏ hàng!</h1>
                            <p> Các sản phẩm đang chờ bạn đấy. Đến và mua sản phẩm ngay nào !</p>
                        </div>

                    </div>
                    <a href="/danh-sach-san-pham" class="primary-btn">Xem ngay</a>
                </div>

            </div>
        </div>
    </section>
</c:if>
<c:if test="${cartSize!=0}">
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Shopping Cart</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="category.html">Cart</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>

    <section class="cart_area section_gap" style="padding: 70px">
        <div class="container-fluid">
            <div class="cart_inner">
                <div class="row">
                    <div class="col-lg-8" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px; ">
                        <table class=" table table1">
                            <thead>
                            <tr>
                                <th ></th>
                                <th ><p>Sản phẩm</p></th>
                                <th style="padding-left: 120px" ></th>


                                <th><p>Giá</p></th>
                                <th ><p>Số lượng</p></th>
                                <th style="text-align: left"><p>Tổng</p></th>
                                <th ></th>

                            </tr>
                            </thead>
                        </table>
                        <div class="scrollbar c" style="width: 100%;max-height: 800px;  overflow-y:scroll; ">
                            <table class="table ">
                                <tbody>
                                <c:forEach items="${cartItems}" var="item">
                                    <tr>
                                        <td>
                                            <div class="media">
                                                <div class="media-body">
                                                    <input  type="checkbox" id="checkCart${item.id}" value="${item.id}"
                                                           onclick="checkCartItem('checkCart${item.id}',${item.id})"/>


                                                </div>
                                            </div>
                                        </td>

                                        <td>
                                            <div class="media">
                                                <div class="d-flex">
                                                    <img style="max-width: 100px;height: auto;"
                                                         src="/image/display/${item.product.id}" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <p>${item.product.name}</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <h5 class="myDIV">${item.product.price}</h5>
                                        </td>
                                        <td>
                                            <div style="margin: 10px;display: flex">
                                                <button onclick="var result = document.getElementById('sst${item.id}'); var sst${item.id}  = result.value; if( !isNaN( sst${item.id} ) &amp;&amp; sst${item.id} > 1 ) result.value--;saveCart(${item.product.id},${item.product.price},'#total_price${item.id}',result.value);return false; "
                                                        class="btn primary circle arrow" type="button"><i
                                                        class="lnr ti-minus"></i></button>
                                                <input type="text" name="qty" id="sst${item.id}" maxlength="3"
                                                       value="${item.quantity}" title="Quantity:"
                                                       class="text-center" size="5">
                                                <button onclick="var result = document.getElementById('sst${item.id}'); var sst${item.id} = result.value; if( !isNaN( sst${item.id} )  )  result.value++;saveCart(${item.product.id},${item.product.price},'#total_price${item.id}',result.value);return false;"
                                                        class=" btn primary circle arrow" type="button"><i
                                                        class="lnr ti-plus"></i></button>


                                            </div>
                                        </td>
                                        <td>
                                            <h5 class="myDIV" id="total_price${item.id}">${item.getSubtotal()}</h5>
                                        </td>
                                        <td>
                                            <a href="/cart/delete/${item.id}">
                                                <button class="btn">Xóa</button>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>


                            </table>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="order_box">
                            <h2>Thanh toán đơn hàng</h2>
                            <ul class="list">
                                <div class="scrollbar c" style="width:100%;max-height: 300px; overflow-y: auto  ">

                                    <li><a href="#" class="word-break-aa">Tên sản phẩm <span class="last"> Tổng</span></a>
                                    </li>
                                    <li><a href="#" id="litao"> <span> </span></a></li>
                                </div>



                            </ul>
                            <ul class="list list_2">
                                <li><a  >Tổng giá trị <span class="myDIV" id="total">${subTotal}</span></a></li>
                                <li><a>Phí vận chuyển <span class="myDIV"> 25000</span></a></li>
                                <li><a >Tổng thanh toán(Tạm tính) <span
                                        class="myDIV" id="subTotal">${subTotal+25000}</span></a></li>
                            </ul>


                            <a class="primary-btn" onclick="tocheckout()">Tiến hành thanh toán</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:if>

<script>

</script>
<!--========
========End Cart Area =================-->
</body>
<%@ include file="_footer.jsp" %>
</html>


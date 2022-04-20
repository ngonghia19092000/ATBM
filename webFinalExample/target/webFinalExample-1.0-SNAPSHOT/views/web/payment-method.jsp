<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Method</title>

</head>
<body>
<div class="page-banner-section section" style="background-image: url(assets/images/hero/hero-1.jpg)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">
                <h1>Hình Thức Thanh Toán</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="wishlist.html">Thanhh toán</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->
<!-- Page Section Start -->
<div class="container py-5">
    <!-- For demo purpose -->
    <div class="row mb-4">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-4">Thanh Toán</h1>
        </div>
    </div> <!-- End -->
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card ">
                <div class="card-header">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                        <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">
                            <li class="nav-item"> <a data-toggle="pill" href="#credit-card" class="nav-link active "> <i class="fa fa-credit-card-alt"></i> Credit Card </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#paypal" class="nav-link "> <i class="fa fa-paypal"></i> Paypal </a> </li>
                            <li class="nav-item"> <a data-toggle="pill" href="#net-banking" class="nav-link "> <i class="fa fa-mobile"></i> Net Banking </a> </li>
                        </ul>
                    </div> <!-- End -->
                    <!-- Credit card form content -->
                    <div class="tab-content">
                        <!-- credit card info-->
                        <div id="credit-card" class="tab-pane fade show active pt-3">
                            <form role="form">
                                <div class="form-group"> <label for="username">
                                    <h6>Chủ Thẻ</h6>
                                </label> <input type="text" name="username" placeholder="Tên chủ thẻ..." required class="form-control "> </div>
                                <div class="form-group"> <label for="cardNumber">
                                    <h6>Số thẻ</h6>
                                </label>
                                    <div class="input-group"> <input type="text" name="cardNumber" placeholder="Số thẻ..." class="form-control " required>
                                        <div class="input-group-append"> <span class="input-group-text text-muted"> <i class="fa fa-cc-visa"></i> <i class="fa fa-cc-mastercard"></i> <i class="fa fa-cc-amex"></i> </span> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="form-group"> <label><span class="hidden-xs">
                                                            <h6>Ngày hết hạn</h6>
                                                        </span></label>
                                            <div class="input-group"> <input type="number" placeholder="MM" name="" class="form-control" required> <input type="number" placeholder="YY" name="" class="form-control" required> </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="form-group mb-4"> <label data-toggle="tooltip" title="Three digit CV code on the back of your card">
                                            <h6>CVV <i class="fa fa-question-circle d-inline"></i></h6>
                                        </label> <input type="text" required class="form-control"> </div>
                                    </div>
                                </div>
                                <div class="card-footer"> <button type="button" class="subscribe btn btn-primary btn-block shadow-sm"> Xác nhận thanh toán </button>
                            </form>
                        </div>
                    </div> <!-- End -->
                    <!-- Paypal info -->
                    <div id="paypal" class="tab-pane fade pt-3">
                        <h6 class="pb-2">Chọn loại tài khoản paypal của bạn</h6>
                        <div class="form-group "> <label class="radio-inline"> <input type="radio" name="optradio" checked>Trong nước </label> <label class="radio-inline"> <input type="radio" name="optradio" class="ml-5">Quốc tế </label></div>
                        <p> <button type="button" class="btn btn-primary "><i class="fab fa-paypal mr-2"></i> Đăng nhập vào Paypal</button> </p>
                        <p class="text-muted"> Lưu ý: Sau khi nhấp vào nút, bạn sẽ được chuyển đến một cổng an toàn để thanh toán. Sau khi hoàn tất quá trình thanh toán, bạn sẽ được chuyển trở lại trang web để xem chi tiết đơn hàng của mình. </p>
                    </div> <!-- End -->
                    <!-- bank transfer info -->
                    <div id="net-banking" class="tab-pane fade pt-3">
                        <div class="form-group "> <label for="Select Your Bank">
                            <h6>Chọn ngân hàng</h6>
                        </label> <select class="form-control" id="ccmonth">
                            <option value="" selected disabled>--Vui lòng chọn Ngân hàng của bạn--</option>
                            <option>Ngân hàng 1</option>
                            <option>Ngân hàng 2</option>
                            <option>Ngân hàng 3</option>
                            <option>Ngân hàng 4</option>
                            <option>Ngân hàng 5</option>
                            <option>Ngân hàng 6</option>
                            <option>Ngân hàng 7</option>
                            <option>Ngân hàng 8</option>
                            <option>Ngân hàng 9</option>
                            <option>Ngân hàng 10</option>
                        </select> </div>
                        <div class="form-group">
                            <p> <button type="button" class="btn btn-primary "><i class="fas fa-mobile-alt mr-2"></i>Tiến hành thanh toán</button> </p>
                        </div>
                        <p class="text-muted">Lưu ý: Sau khi nhấp vào nút, bạn sẽ được chuyển đến một cổng an toàn để thanh toán. Sau khi hoàn tất quá trình thanh toán, bạn sẽ được chuyển trở lại trang web để xem chi tiết đơn hàng của mình. </p> </div> <!-- End -->
                    <!-- End -->
                </div>
            </div>
        </div>
    </div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thông tin cửa hàng</title>
</head>
<body>
<!-- Page Banner Section Start -->
<div class="page-banner-section section" style="background-image: url(assets/images/hero/hero-1.jpg)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Thông tin về cửa hàng</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ</a></li>
                    <li><a href="wishlist.html">Thông tin về cửa hàng</a></li>
                </ul>

            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->

<!-- Page Section Start -->
<div class="bg-light">
    <div class="container py-5">
        <div class="row h-100 align-items-center py-5">
            <div class="col-lg-6">
                <h1 class="display-4">Giới thiệu về trang</h1>
                <p class="lead text-muted mb-0">
                <h3>Chào mừng bạn đến với Jadusona</h3><br>
                Với mong muốn mang đến những sản phẩm may mặc hàng Việt Nam chất lượng, đặc biệt là an toàn cho sức
                khỏe của trẻ nhỏ.
                <br>

                Lấy cảm hứng từ nhu cầu thực tế của người tiêu dùng Việt Nam, Jadusona cho ra những mẫu sản phẩm vừa
                lạ, vừa độc đáo vừa hợp thời trang phù hợp với xu hướng thời trang trong nước và quốc tế,dành cho
                các bé từ 1-12 tuổi.</p>

            </div>
            <div class="col-lg-6 d-none d-lg-block"><img
                    src="https://res.cloudinary.com/mhmd/image/upload/v1556834136/illus_kftyh4.png" alt=""
                    class="img-fluid"></div>
        </div>
    </div>
</div>

<div class="bg-white py-5">
    <div class="container py-5">
        <div class="row align-items-center mb-5">
            <div class="col-lg-6 order-2 order-lg-1"><i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
                <h2 class="font-weight-light">Cam kết về chất lượng dịch vụ bán hàng</h2>
                <p class="font-italic text-muted mb-4">
                    – Tất cả hàng hoá đều có nguồn gốc xuất xứ rõ ràng, minh bạch, chính hãng từ nhà sản xuất và
                    nhập khẩu trực tiếp.<br>
                    – Tuyệt đối không bán hàng giả, hàng nhái thương hiệu, hàng kém chất lượng.<br>
                    – Đáp ứng yêu cầu của khách hàng trong thời gian ngắn nhất.<br>
                    – Tư vấn miễn phí cho quý khách hàng về các sản phẩm của chúng tôi.
                </p>
                <a href="#"
                   class="btn btn-light px-5 rounded-pill shadow-sm">Learn
                    More</a>
            </div>
            <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2"><img
                    src="https://res.cloudinary.com/mhmd/image/upload/v1556834139/img-1_e25nvh.jpg" alt=""
                    class="img-fluid mb-4 mb-lg-0"></div>
        </div>
        <div class="row align-items-center">
            <div class="col-lg-5 px-5 mx-auto"><img
                    src="https://res.cloudinary.com/mhmd/image/upload/v1556834136/img-2_vdgqgn.jpg" alt=""
                    class="img-fluid mb-4 mb-lg-0"></div>
            <div class="col-lg-6"><i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                <h2 class="font-weight-light">Chúng tôi cam kết về chất lượng sản phẩm</h2>
                <p class="font-italic text-muted mb-4">Chúng tôi luôn đặt phương châm lấy chất lượng sản phẩm làm
                    giá trị cốt
                    lõi cho sự phát triển của mình, vì vậy chúng tôi cam kết mang đến cho quý khách những sản phẩm
                    chất lượng tốt nhất, đáp ứng đầy đủ các tiêu chuẩn về sản phẩm theo các quy định hiện hành.</p>
                <a href="#"
                   class="btn btn-light px-5 rounded-pill shadow-sm">Tìm hiểu thêm
                </a>
            </div>
        </div>
    </div>
</div>

<div class="bg-light py-5">
    <div class="container py-5">
        <div class="row mb-4">
            <div class="col-lg-5">
                <h2 class="display-4 font-weight-light">Nhóm quản trị</h2>
                <p class="font-italic text-muted">Jadusona - mua sắm thả ga.</p>
            </div>
        </div>

        <div class="row text-center">
            <!-- Team item-->
            <c:forEach items="${model}" var="item">
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4"><img
                            src="<c:url value="${item.image}" />" alt=""
                            width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">${item.fullName}</h5><span class="small text-uppercase text-muted">Quản trị viên</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i
                                    class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i
                                    class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </c:forEach>
            <!-- End-->


        </div>
    </div>
</div>

</body>
</html>

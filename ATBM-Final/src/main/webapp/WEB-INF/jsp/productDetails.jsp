<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="UTF-8">
    <title>Cùng mua sắm ngay nào - Chi tiết sản phẩm</title>


</head>
<%--header ở đaya--%>
<%@ include file="_header.jsp" %>
<body class="active">
<%--content--%>
<!-- Start Banner Area -->
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>CHI TIẾT SẢN PHẨM</h1>
                <nav class="d-flex align-items-center">
                    <a href="/">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="/danh-sach-san-pham">Danh sách sản phẩm<span class="lnr lnr-arrow-right"></span></a>
                    <a>Chi tiết sản phẩm</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- End Banner Area -->

<!--================Single Product Area =================-->
<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="s_Product_carousel">
                    <div class="single-prd-item">
                        <img class="img-fluid" src="/image/display/${id}" alt="Hình ảnh của ${name}">
                    </div>
                    <div class="single-prd-item">
                        <img class="img-fluid" src="../img/category/${id}" alt="">
                    </div>
                    <div class="single-prd-item">
                        <img class="img-fluid" src="../img/category/${id}" alt="">
                    </div>
                </div>
            </div>

            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <h3>${name}</h3>
                    <h2 class="myDIV">${price}</h2>
                    <ul class="list">
                        <li><a class="active" href="#"><span>Category</span> : Household</a></li>
                        <li><a href="#"><span>Availibility</span> : In Stock</a></li>
                    </ul>
                    <p>
                        ${description}
                        Mill Oil is an innovative oil filled radiator with the most modern technology. If you are
                        looking for
                        something that can make your interior look awesome, and at the same time give you the pleasant
                        warm feeling
                        during the winter.</p>
                    <div style="margin: 20px">
                        <label for="qty">Số lượng:</label>
                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 1 ) result.value--;return false;"
                                class="btn primary circle arrow" type="button"><i class="lnr ti-minus"></i></button>
                        <input type="text" name="qty" id="sst" maxlength="3" value="1" title="Quantity:"
                               class="text-center" disabled size="5">
                        <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )  &amp;&amp; sst <15 ) result.value++;return false;"
                                class=" btn primary circle arrow" type="button"><i class="lnr ti-plus"></i></button>


                    </div>
                    <div class="card_area d-flex align-items-center">
                        <c:if test="${user!=null}">
                            <a class="primary-btn" href="javascript:addCart();">Thêm vào giỏ hàng</a>
                        </c:if>
                        <c:if test="${user==null}">
                            <div class="text-center">
                                <!-- Button HTML (to Trigger Modal) -->
                                <a href="#myModal" class="genric-btn primary circle arrow"
                                   data-toggle="modal">

                                    Thêm vào giỏ</a>

                            </div>
                            <!-- Modal HTML -->
                            <div id="myModal" class="modal fade">
                                <div class="modal-dialog modal-confirm">
                                    <div class="modal-content">
                                        <div class="modal-header justify-content-center">
                                            <div class="icon-box">
                                                <i class="material-icons"></i>
                                            </div>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-hidden="true">&times;
                                            </button>
                                        </div>
                                        <div class="modal-body text-center">
                                            <h4>Để có thêm thêm sản phẩm vào giỏ.</h4>
                                            <p>Bạn cần phải đăng nhập!</p>
                                            <a class="primary-btn" href="/login">Đăng nhập</a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>

                        <script type="text/javascript">
                            function addCart(){
                                var qty = document.getElementById('sst').value;
                               addToCart(${id},qty);
                            }
                        </script>

                    </div>
                </div>
            </div>


        </div>
    </div>
</div>
<!--================End Single Product Area =================-->

<!--================Product Description Area =================-->
<section class="product_description_area">
    <div class="container">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                   aria-selected="true">Mô tả</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                   aria-controls="profile"
                   aria-selected="false">Chính sách đổi trả</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                   aria-controls="contact"
                   aria-selected="false">Phản hồi</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab"
                   aria-controls="review"
                   aria-selected="false">Đánh giá</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                <p>CHI TIẾT SẢN PHẨM</p>
                <p>
                <p> 1. Giới thiệu sản phẩm
                    - Là một kiểu giày cá tính nhất trong thế giới giày Nữ. Với thiết kế có phần đơn giản mang lại vẻ
                    đẹp tao nhã, tự do phóng khoáng nhưng đầy cuốn hút.
                    - Đây là một sản phẩm của PASSO , sản phẩm có thiết kế hoàn hảo để bạn dễ dàng phối hợp cùng bộ
                    jeans bụi bặm cá tính cho những chuyến đi dài ngày.
                </p>
                <p> 2. Cấu tạo, kiểu dáng:
                    Xuất xứ: China/Vietnam
                    Kiểu dáng: Giày thể thao
                    Chất liệu: Vải/Cao su
                </p>
                <p> 3. Chất liệu cao cấp
                    Giày Sneaker Thể Thao Nữ PASSO được làm từ chất liệu cao cấp, rất mềm mại và êm ái, tạo cảm giác
                    thoải mái cho từng bước đi. Phần đế làm bằng cao su tổng hợp với phần rãnh chống trơn trượt, đảm bảo
                    sự an toàn cho người mang.
                </p>
                <p> 4. Kiểu dáng tinh tế, hợp xu hướng.
                    Giày Sneaker Thể Thao Nữ PASSO được thiết kế trẻ trung, là một thiết kế dành cho phái nữ, giày chú
                    trọng phom dáng với từng đừng nét cá tính, làm toát lên vẻ trẻ trung, thanh lịch. Đường may tỉ mỉ và
                    đường keo dán chắc chắn và bền bỉ trong thời gian dài.
                </p>
                <p> 5. Sự kết hợp hoàn hảo với những bộ trang phục đủ mọi phong cách.
                    Giày Sneaker Thể Thao Nữ PASSO là một “item” đa năng khi có thể dễ dàng phối với bất kì trang phục
                    nào. Chỉ cần một chút nhấn nhá với các phụ kiện, bạn đã có ngay một set đồ hoàn hảo để tự tin đến
                    nơi công sở hoặc dạo phố.
                </p>
                <p> 5. Sự kết hợp hoàn hảo với những bộ trang phục đủ mọi phong cách.
                    Giày Sneaker Thể Thao Nữ PASSO là một “item” đa năng khi có thể dễ dàng phối với bất kì trang phục
                    nào. Chỉ cần một chút nhấn nhá với các phụ kiện, bạn đã có ngay một set đồ hoàn hảo để tự tin đến
                    nơi công sở hoặc dạo phố.
                </p>
                <p> 6. Gợi ý phối đồ
                    Bạn có thể tùy thích phối hợp với trang phục theo sở thích của mình như:
                    + Váy – Áo sơ mi
                    + Đầm
                    + Quần Jeans + áo thun
                    + Quần Kaki - Áo thun/sơ mi … kèm với các phụ kiện khác như thắt lưng,đồng hồ,… chắc chắn bạn sẽ
                    trông xinh xắn và Nữ tính cá tính hơn.
                    Cách phối đồ sẽ tạo ra sự khác biệt lớn cho phong cách của bạn. Hãy phối theo bất kỳ phong cách nào
                    bạn yêu thích cũng sẽ là một đều mới mẻ đáng để khám phá.
                    Nếu cần tư vấn cách phối đồ hay bất cứ vấn đề nào bạn quan tâm về giày, xin đừng ngần ngại hãy liên
                    hệ với chúng tôi hotline 1900.21.31
                </p>
                <p> 7. Hướng dẫn bảo quản giày
                    - Bảo quản giày sau khi sử dụng
                    Bạn lưu ý khi mua hàng về, bạn đừng vứt hộp đi. Chẳng hạn, đôi giày đó bạn chỉ đi vào mùa lạnh, thì
                    khi không dùng a, hãy nhét giấy vụn vào trong giày để giữ cho giày không bị biến dạng, rồi bỏ giày
                    vào hộp. Như vậy, đôi giày của bạn sẽ yên vị trong hộp nhiều tháng trời mà không ảnh hưởng tới chất
                    lượng của da.
                    - Làm mềm giày da
                    Đôi giày da để trong xó tủ nào đó, bỗng một ngày nọ bạn muốn dùng đến nó nhưng da đã bị cứng, co
                    lại, khi đi có cảm giác đau chân. Để làm mềm da, hãy thoa một lớp kem vaseline lên giày trước khi
                    đánh xi, giày sẽ mềm trở lại.
                    Hoặc sau khi lấy giày trong tủ ra, bạn dùng giẻ mềm thấm nước vắt khô, lau toàn bộ đôi giày rồi để
                    sau một đêm, da giày sẽ mềm hơn. Để da giày bền lâu, bạn hạn chế làm ướt giày. Khi giày bị ướt không
                    nên hơ trước ngọn lửa hoặc phơi nắng, nó sẽ làm giày bị cứng và co lại, chỉ nên phơi giày ướt ở nơi
                    râm mát, sau khi giày khô thì đánh xi để làm cho da mềm trở lại.
                    - Khử mùi hôi trong giày
                    Giày dùng cả ngày thường bị mồ hôi làm ẩm ướt, gây mùi hôi. Nên đặt túi đựng viên chống ẩm vào trong
                    giày để hút ẩm và rắc phấn rôm để khử mùi. Để hạn chế mùi hôi và sự ẩm ướt, hãy chọn tất chân loại
                    tốt, có khả năng hút ẩm cao. Dùng lót giày khử mùi cũng là một phương pháp tốt.</p>
                </p>
                <div class="table-responsive">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>
                                <h5>Size</h5>
                            </td>
                            <td>
                                <h5>35 36 37 38 39 40 41 42</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Phù hợp để sử dụng</h5>
                            </td>
                            <td>
                                <h5>Đi làm, đi tiệc, đi chơi.</h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Sản xuất</h5>
                            </td>
                            <td>
                                <h5><p>Việt Nam</p></h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5>Thương hiệu</h5>
                            </td>
                            <td>
                                <h5>......</h5>
                            </td>
                        </tr>
                        <tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                <p>
                    Một sản phẩm không vừa size thì không thể nào đi được. Đi đổi hàng thì rất mất thời gian và công
                    sức.

                    Nên Merly có chính sách đổi hàng cực ngắn gọn:

                    - Khách hàng được đổi sản phẩm trong vòng 30 ngày kể từ ngày nhận được sản phẩm.

                    - Bất kỳ sản phẩm nào đặt mua tại Merly (ngoại trừ hàng giảm giá trên 20%) cũng được áp dụng chính
                    sách này.

                    - Trường hợp đổi, khách hàng sẽ chịu chi phí vận chuyển chỉ với 35.000 VNĐ, và Merly sẽ giao lại
                    hàng miễn phí cho Khách hàng (Merly đã hỗ trợ 1 phần phí giao hàng).

                    - Trường hợp trả đổi với hàng lỗi hoặc giao hàng sai mẫu, Merly sẽ hoàn lại tiền hàng cho khách
                    trong vòng 24h qua tài khoản của khách.

                    Sau đó, Merly sẽ đến tận nơi lấy hàng trả và không thu thêm bất cứ phí gì (Khách hàng cũng có thể tự
                    gởi lại hàng cho Merly)

                    3 Bước nhanh chóng để đổi trả:

                    Bước 1: Nhắn tin vào nơi đã đặt hàng. Hoăc gọi 0908 1908 56 để được hướng dẫn.

                    Bước 2: Gửi hình xác nhận tình trạng đế giày cho Merly. Merly chỉ đổi hoặc trả sản phẩm chưa qua sử
                    dụng đế giày còn mới.

                    Bước 3: Gói hàng lại và đợi shipper gọi điện thoại đến lấy hàng đồng thời nhận luôn sản phẩm cần
                    đổi.

                    Đối với việc trả hàng:

                    Chúng tôi sẽ hoàn lại số tiền vào tài khoản mà bạn xác nhận tối đa trong 24h làm việc (không tính
                    thứ 7 & Chủ Nhật).

                    Lưu ý:

                    ⁃ Merly hỗ trợ đổi tối đa 3 lần/1 khách hàng.

                    ⁃ Merly có quyền quyết định dừng việc hỗ trợ đổi trả và trả lại tiền cho khách hàng nếu phát hiện
                    khách hàng sử dụng chính sách để trục lợi (như việc đổi quá nhiều lần).


                </P>
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="comment_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-1.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item reply">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-2.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-3.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <h5>12th Feb, 2018 at 05:56 pm</h5>
                                        <a class="reply_btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Post a comment</h4>
                            <form class="row contact_form" action="contact_process.php" method="post" id="contactForm"
                                  novalidate="novalidate">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name"
                                               placeholder="Your Full name">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" name="email"
                                               placeholder="Email Address">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="number" name="number"
                                               placeholder="Phone Number">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" id="message" rows="1"
                                                  placeholder="Message"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button type="submit" value="submit" class="btn primary-btn">Submit Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row total_rate">
                            <div class="col-6">
                                <div class="box_total">
                                    <h5>Overall</h5>
                                    <h4>4.0</h4>
                                    <h6>(03 Reviews)</h6>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="rating_list">
                                    <h3>Based on 3 Reviews</h3>
                                    <ul class="list">
                                        <li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                        <li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i
                                                class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="review_list">
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-1.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-2.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                            <div class="review_item">
                                <div class="media">
                                    <div class="d-flex">
                                        <img src="img/product/review-3.png" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4>Blake Ruiz</h4>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et
                                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                    laboris nisi ut aliquip ex ea
                                    commodo</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="review_box">
                            <h4>Add a Review</h4>
                            <p>Your Rating:</p>
                            <ul class="list">
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                            </ul>
                            <p>Outstanding</p>
                            <form class="row contact_form" action="contact_process.php" method="post" id="contactForm"
                                  novalidate="novalidate">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="name"
                                               placeholder="Your Full name" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Your Full name'">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="email" name="email"
                                               placeholder="Email Address" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Email Address'">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="number" name="number"
                                               placeholder="Phone Number" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Phone Number'">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" id="message" rows="1"
                                                  placeholder="Review" onfocus="this.placeholder = ''"
                                                  onblur="this.placeholder = 'Review'"></textarea></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 text-right">
                                    <button type="submit" value="submit" class="primary-btn">Submit Now</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Product Description Area =================-->

<!-- Start related-product Area -->
<section class="related-product-area section_gap_bottom">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 text-center">
                <div class="section-title">
                    <h1>Deals of the Week</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore
                        magna aliqua.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r1.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r2.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r3.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r5.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r6.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r7.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r9.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r10.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="single-related-product d-flex">
                            <a href="#"><img src="img/r11.jpg" alt=""></a>
                            <div class="desc">
                                <a href="#" class="title">Black lace Heels</a>
                                <div class="price">
                                    <h6>$189.00</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ctg-right">
                    <a href="#" target="_blank">
                        <img class="img-fluid d-block mx-auto" src="img/category/c5.jpg" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End related-product Area -->


</body>
<%@ include file="_footer.jsp" %>
</html>
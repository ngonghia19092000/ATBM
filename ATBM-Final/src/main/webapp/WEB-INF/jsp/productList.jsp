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
                <h1>SẢN PHẨM CỦA NB STORE</h1>
                <nav class="d-flex align-items-center">
                    <a href="/home">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                    <a href="/danh-sach-san-pham">Sản phẩm<span class="lnr lnr-arrow-right"></span></a>
                    <a href="#">Danh sách sản phẩm</a>
                </nav>
            </div>
        </div>
    </div>
</section>
<div class="container active">
    <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
            <div class="sidebar-categories">
                <div class="head">Danh sách sản phẩm</div>
                <ul class="main-categories">
                    <li class="main-nav-list"><a data-toggle="collapse" href="#fruitsVegetable" aria-expanded="false"
                                                 aria-controls="fruitsVegetable"><span
                            class="lnr lnr-arrow-right"></span>Fruits and Vegetables<span class="number">(53)</span></a>
                        <ul class="collapse" id="fruitsVegetable" data-toggle="collapse" aria-expanded="false"
                            aria-controls="fruitsVegetable">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>

                    <li class="main-nav-list"><a data-toggle="collapse" href="#meatFish" aria-expanded="false"
                                                 aria-controls="meatFish"><span
                            class="lnr lnr-arrow-right"></span>Meat and Fish<span class="number">(53)</span></a>
                        <ul class="collapse" id="meatFish" data-toggle="collapse" aria-expanded="false"
                            aria-controls="meatFish">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#cooking" aria-expanded="false"
                                                 aria-controls="cooking"><span
                            class="lnr lnr-arrow-right"></span>Cooking<span class="number">(53)</span></a>
                        <ul class="collapse" id="cooking" data-toggle="collapse" aria-expanded="false"
                            aria-controls="cooking">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#beverages" aria-expanded="false"
                                                 aria-controls="beverages"><span
                            class="lnr lnr-arrow-right"></span>Beverages<span class="number">(24)</span></a>
                        <ul class="collapse" id="beverages" data-toggle="collapse" aria-expanded="false"
                            aria-controls="beverages">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#homeClean" aria-expanded="false"
                                                 aria-controls="homeClean"><span
                            class="lnr lnr-arrow-right"></span>Home and Cleaning<span class="number">(53)</span></a>
                        <ul class="collapse" id="homeClean" data-toggle="collapse" aria-expanded="false"
                            aria-controls="homeClean">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a href="#">Pest Control<span class="number">(24)</span></a></li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#officeProduct" aria-expanded="false"
                                                 aria-controls="officeProduct"><span
                            class="lnr lnr-arrow-right"></span>Office Products<span class="number">(77)</span></a>
                        <ul class="collapse" id="officeProduct" data-toggle="collapse" aria-expanded="false"
                            aria-controls="officeProduct">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#beauttyProduct" aria-expanded="false"
                                                 aria-controls="beauttyProduct"><span
                            class="lnr lnr-arrow-right"></span>Beauty Products<span class="number">(65)</span></a>
                        <ul class="collapse" id="beauttyProduct" data-toggle="collapse" aria-expanded="false"
                            aria-controls="beauttyProduct">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#healthProduct" aria-expanded="false"
                                                 aria-controls="healthProduct"><span
                            class="lnr lnr-arrow-right"></span>Health Products<span class="number">(29)</span></a>
                        <ul class="collapse" id="healthProduct" data-toggle="collapse" aria-expanded="false"
                            aria-controls="healthProduct">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a href="#">Pet Care<span class="number">(29)</span></a></li>
                    <li class="main-nav-list"><a data-toggle="collapse" href="#homeAppliance" aria-expanded="false"
                                                 aria-controls="homeAppliance"><span
                            class="lnr lnr-arrow-right"></span>Home Appliances<span class="number">(15)</span></a>
                        <ul class="collapse" id="homeAppliance" data-toggle="collapse" aria-expanded="false"
                            aria-controls="homeAppliance">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#">Meat<span class="number">(11)</span></a></li>
                        </ul>
                    </li>
                    <li class="main-nav-list"><a class="border-bottom-0" data-toggle="collapse" href="#babyCare"
                                                 aria-expanded="false"
                                                 aria-controls="babyCare"><span class="lnr lnr-arrow-right"></span>Baby
                        Care<span class="number">(48)</span></a>
                        <ul class="collapse" id="babyCare" data-toggle="collapse" aria-expanded="false"
                            aria-controls="babyCare">
                            <li class="main-nav-list child"><a href="#">Frozen Fish<span class="number">(13)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Dried Fish<span class="number">(09)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Fresh Fish<span class="number">(17)</span></a>
                            </li>
                            <li class="main-nav-list child"><a href="#">Meat Alternatives<span
                                    class="number">(01)</span></a></li>
                            <li class="main-nav-list child"><a href="#" class="border-bottom-0">Meat<span
                                    class="number">(11)</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="sidebar-filter mt-50">
                <div class="top-filter-head">Product Filters</div>
                <div class="common-filter">
                    <div class="head">Brands</div>
                    <form action="#">
                        <ul>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="apple"
                                                           name="brand"><label
                                    for="apple">Apple<span>(29)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="asus"
                                                           name="brand"><label for="asus">Asus<span>(29)</span></label>
                            </li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee"
                                                           name="brand"><label
                                    for="gionee">Gionee<span>(19)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax"
                                                           name="brand"><label for="micromax">Micromax<span>(19)</span></label>
                            </li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung"
                                                           name="brand"><label
                                    for="samsung">Samsung<span>(19)</span></label></li>
                        </ul>
                    </form>
                </div>
                <div class="common-filter">
                    <div class="head">Color</div>
                    <form action="#">
                        <ul>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="black"
                                                           name="color"><label
                                    for="black">Black<span>(29)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather"
                                                           name="color"><label for="balckleather">Black
                                Leather<span>(29)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred"
                                                           name="color"><label for="blackred">Black
                                with red<span>(19)</span></label></li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="gold"
                                                           name="color"><label for="gold">Gold<span>(19)</span></label>
                            </li>
                            <li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label
                                    for="spacegrey">Spacegrey<span>(19)</span></label></li>
                        </ul>
                    </form>
                </div>
                <div class="common-filter">
                    <div class="head">Price</div>
                    <div class="price-range-area">
                        <div id="price-range"></div>
                        <div class="value-wrapper d-flex">
                            <div class="price">Price:</div>
                            <span>$</span>
                            <div id="lower-value"></div>
                            <div class="to">to</div>
                            <span>$</span>
                            <div id="upper-value"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
            <!-- Start Filter Bar -->
            <div class="filter-bar d-flex flex-wrap align-items-center">
                <div class="sorting">
                    <select>
                        <option value="1">Default sorting</option>
                        <option value="1">Default sorting</option>
                        <option value="1">Default sorting</option>
                    </select>
                </div>
                <div class="sorting mr-auto">
                    <select>
                        <option value="1">Show 12</option>
                        <option value="1">Show 12</option>
                        <option value="1">Show 12</option>
                    </select>
                </div>
                <div class="pagination">
                    <a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                    <a href="#">6</a>
                    <a href="#" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                </div>
            </div>
            <!-- End Filter Bar -->
            <!-- Start Best Seller -->
            <section class="lattest-product-area pb-40 category-list">
                <div class="row">
                    <!-- single product -->
                    <c:forEach items="${listP}" var="products">

                        <div class="col-lg-4 col-md-6 ">
                            <div class="single-product ">
                                <img class="img-fluid" src="/image/display/${products.id}" alt="">
                                <div class="product-details">
                                    <a class="hover-text" href="/productDetails/${products.id}"><h6
                                            style="min-height: 75px">${products.name}</h6></a>
                                    <div class="price" style="min-height: 40px">
                                        <h6 class="myDIV">${products.price} </h6>
                                        <h6 class="l-through myDIV">${products.price*1.1}</h6>
                                    </div>
                                    <div class="prd-bottom" style="display: flex;font-size: medium">
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
                                                                <i class="material-icons">&#xE876;</i>
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
                                        <c:if test="${user!=null}"> <a
                                                onclick="addToCart(${products.id},1)"
                                                class="genric-btn primary circle arrow">
                                            Thêm vào giỏ
                                        </a></c:if>


                                        <a class="genric-btn info circle arrow" href="/productDetails/${products.id}">Xem</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>

                    <!-- single product -->

                </div>
            </section>
            <!-- End Best Seller -->
            <!-- Start Filter Bar -->
            <div class="filter-bar d-flex flex-wrap align-items-center">
                <div class="sorting mr-auto">
                    <select>
                        <option value="1">Show 12</option>
                        <option value="1">Show 12</option>
                        <option value="1">Show 12</option>
                    </select>
                </div>
                <div class="pagination">
                    <a href="#" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#" class="dot-dot"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                    <a href="#">6</a>
                    <a href="#" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                </div>
            </div>
            <!-- End Filter Bar -->
        </div>
    </div>
</div>
</body>

<%--footer ở đây--%>
<%@ include file="_footer.jsp" %>
</html>
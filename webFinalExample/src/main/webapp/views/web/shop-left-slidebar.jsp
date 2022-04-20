<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title> Danh mục sản phẩm</title>
</head>
<body>
<!-- Page Banner Section Start -->
<div class="page-banner-section section"
     style="background-image: url(<c:url value="/template/web/assets/images/hero/hero-1.jpg"/>)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Sản Phẩm</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang Chủ</a></li>
                    <li><a href="shop-left-sidebar.html">Sản Phẩm</a></li>
                </ul>

            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->

<!-- Page Section Start -->
<div class="page-section section mt-80 mt-lg-60 mt-md-60 mt-sm-60 mt-xs-40 mb-40 mb-lg-20 mb-md-20 mb-sm-20 mb-xs-0">
    <div class="container">
        <form action="<c:url value="/all"/>" id="formSubmit" method="get">
            <div class="row row-30">
                <div class="col-xl-9 col-lg-8 col-12 order-1 order-lg-2 mb-40">
                    <div class="row">
                        <div class="col-12">
                            <c:if test="${not empty message}">
                                <div class="alert alert-${alert}">${message}</div>
                            </c:if>
                        </div>
                        <c:if test="${empty message}">
                            <div class="col-12">
                                <div class="product-show">
                                    <h4>Show:</h4>
                                    <select class="nice-select" id="show">
                                        <option id="option9" value="9">9</option>
                                        <option id="option12" value="12">12</option>
                                        <option id="option18" value="18">18</option>
                                    </select>
                                </div>
                                <div class="product-short">
                                    <h4>Short by:</h4>
                                    <select class="nice-select" id="short">
                                        <option id="asc|name" value="asc|name">Tăng dần theo tên</option>
                                        <option id="desc|name" value="desc|name">Giảm dần theo tên</option>
                                        <option id="asc|createdDate" value="asc|createdDate">Tăng dần theo ngày</option>
                                        <option id="desc|createdDate" value="desc|createdDate">Giảm dần theo ngày</option>
                                        <option id="asc|price" value="asc|price">Tăng dần theo giá</option>
                                        <option id="desc|price" value="desc|price">Giảm dần theo giá</option>
                                        <option id="desc|manfacturerid" value="desc|manfacturerid">NSX</option>
                                    </select>
                                </div>
                            </div>
                        </c:if>
                        <c:forEach var="item" items="${model.listResult}">
                            <div class="col-xl-4 col-md-6 col-12 mb-40">

                                <div class="product-item">
                                    <div class="product-inner">

                                        <div class="image">
                                            <img src="<c:url value="${item.thumnail}"/>" alt="">

                                            <div class="image-overlay">
                                                <div class="action-buttons">
                                                    <button>THÊM VÀO GIỎ</button>
                                                    <button>THÊM VÀO DS YT</button>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="content">

                                            <div class="content-left">
                                                <c:url var="detailURL" value="/detail">
                                                    <c:param name="type" value="detail"/>
                                                    <c:param name="id" value="${item.id}"/>
                                                </c:url>
                                                <h4 class="title"><a id="detail" href="${detailURL}">${item.name}</a>
                                                </h4>

                                                <div class="ratting">
                                                    <c:forEach begin="1" end="${item.score}" step="1">
                                                        <i class="fa fa-star"></i>
                                                    </c:forEach>
                                                    <c:forEach begin="1" end="${5-item.score}" step="1">
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </c:forEach>
                                                </div>

                                                <h5 class="size">Kích thước:
                                                    <span>S</span><span>M</span><span>L</span><span>XL</span></h5>
                                                <h5 class="color">Màu sắc: <span
                                                        style="background-color: #ffb2b0"></span><span
                                                        style="background-color: #0271bc"></span><span
                                                        style="background-color: #efc87c"></span><span
                                                        style="background-color: #00c183"></span></h5>

                                            </div>

                                            <div class="d-flex justify-content-between w-100">
                                                <fmt:parseNumber var="price" integerOnly="true" type="number" value="${item.price/1000}"/>
                                                <fmt:parseNumber var="pricesale" integerOnly="true" type="number" value="${item.pricesale/1000}"/>
                                                <c:choose>
                                                    <c:when test="${pricesale > 0}">
                                                        <span style="color: #00b7ea; font-weight: bold" class="price"><strike>${price}K</strike><br>
                                                            <span style="color: red; font-weight: bold" class="old">${pricesale}K</span></span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span style="color: #00b7ea; font-weight: bold" class="price">${price}K</span>
                                                    </c:otherwise>
                                                </c:choose>

                                                </span>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                        </c:forEach>
                        <div class="col-12" style="margin-left: 235px">
                            <ul class="pagination" id="pagination"></ul>
                            <input type="hidden" value="" id="page" class="page" name="page"/>
                            <input type="hidden" value="" id="maxPageItems" class="maxPageItems" name="maxPageItems"/>
                            <input type="hidden" value="" id="sortName" class="sortName" name="sortName"/>
                            <input type="hidden" value="" id="sortBy" class="sortBy" name="sortBy"/>
                            <input type="hidden" value="${model.type}" id="type" name="type"/>
                            <c:if test="${model.type == 'search'}">
                                <input type="hidden" value="${model.search}" id="search" name="search"/>
                            </c:if>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-12 order-2 order-lg-1 mb-40">

                    <div class="sidebar">
                        <h4 class="sidebar-title">Thể loại</h4>
                        <ul class="sidebar-list">
                            <c:forEach var="item" items="${categories}">
                                <c:if test="${item.gender == 1}" >
                                    <c:url  var="listByCategory" value="/all">
                                        <c:param name="search" value="${item.name}"/>
                                        <c:param name="page" value="1"/>
                                        <c:param name="maxPageItems" value="9"/>
                                        <c:param name="sortName" value="name"/>
                                        <c:param name="sortBy" value="desc"/>
                                        <c:param name="type" value="search"/>
                                    </c:url>
                                    <li><a href="${listByCategory}">${item.name}</a></li>

                                </c:if>

                            </c:forEach>

                        </ul>
                    </div>

<%--                    <div class="sidebar">--%>
<%--                        <h4 class="sidebar-title">màu sắc</h4>--%>
<%--                        <ul class="sidebar-list">--%>
<%--                            <li><a href="#"><span class="color" style="background-color: #000000"></span> Đen</a></li>--%>
<%--                            <li><a href="#"><span class="color" style="background-color: #FF0000"></span> Đỏ</a></li>--%>
<%--                            <li><a href="#"><span class="color" style="background-color: #0000FF"></span> Xanh da--%>
<%--                                trời</a>--%>
<%--                            </li>--%>
<%--                            <li><a href="#"><span class="color" style="background-color: #28901D"></span> Xanh lá--%>
<%--                                cây</a>--%>
<%--                            </li>--%>
<%--                            <li><a href="#"><span class="color" style="background-color: #FF6801"></span> Cam</a></li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>

                    <div class="sidebar">
                        <h4 class="sidebar-title">Sản Phẩm Phổ Biến</h4>
                        <div class="sidebar-product-wrap">
                            <c:forEach var="item" items="${popular}">
                                <div class="sidebar-product">
                                    <c:url var="detailPopular" value="/detail">
                                        <c:param name="type" value="detail"/>
                                        <c:param name="id" value="${item.id}"/>
                                    </c:url>
                                    <a href="${detailPopular}" class="image"><img
                                            src="<c:url value="${item.thumnail}"/> "
                                            alt=""></a>
                                    <div class="content">
                                        <a href="${detailPopular}" class="title">${item.name}</a>
                                        <fmt:parseNumber var="price1" integerOnly="true" type="number" value="${item.price/1000}"/>
                                        <fmt:parseNumber var="pricesale1" integerOnly="true" type="number" value="${item.pricesale/1000}"/>
                                        <c:choose>
                                            <c:when test="${pricesale1 > 0}">
                                                <span class="price">${pricesale1}K<span class="old">${price1}K</span></span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="price">${price1}K</span>
                                            </c:otherwise>
                                        </c:choose>
                                        <div class="ratting">
                                            <c:forEach begin="1" end="${item.score}" step="1">
                                                <i class="fa fa-star"></i>
                                            </c:forEach>
                                            <c:forEach begin="1" end="${5-item.score}" step="1">
                                                <i class="fa fa-star-o" aria-hidden="true"></i>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div>
                    </div>

                    <div class="sidebar">
                        <h3 class="sidebar-title">Giá</h3>

                        <div class="sidebar-price">
                            <div id="price-range"></div>
                            <input type="text" id="price-amount" readonly>
                        </div>
                    </div>
                </div>

            </div>

        </form>

    </div>
</div><!-- Page Section End -->
<script src="<c:url value="/template/paging/jquery.twbsPagination.js" />"></script>
<script type="text/javascript">
    var currentPage = ${model.page};
    var totalPages = ${model.totalPages};
    document.getElementById('option${model.maxPageItems}').selected = "true";
    document.getElementById('${model.sortBy}|${model.sortName}').selected = "true";
    $(document).ready(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    var limit = $('#show').val();
                    var getsortName = $('#short').val();
                    var count = getsortName.length;
                    var test = getsortName.indexOf('|');
                    var sortBy = getsortName.substring(0, test)
                    var sortName = getsortName.substring(test + 1, count)
                    $('.maxPageItems').val(limit);
                    $('.sortName').val(sortName);
                    $('.sortBy').val(sortBy);
                    $('.page').val(page);
                    $('#formSubmit').submit();
                }
            }
        });
    });


</script>
</body>
</html>

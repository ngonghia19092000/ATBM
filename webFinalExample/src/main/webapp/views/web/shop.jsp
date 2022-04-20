<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url value="/detail" var="detailAjax"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Cửa hàng</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
</head>
<body>
<!-- Page Banner Section Start -->
<div class="page-banner-section section"
     style="background-image: url(<c:url value="/template/web/assets/images/hero/hero-1.jpg"/>)">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Shop</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="shop.html">Shop</a></li>
                </ul>

            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->

<!-- Page Section Start -->
<div class="page-section section mt-80 mt-lg-60 mt-md-60 mt-sm-60 mt-xs-40 mb-80 mb-lg-60 mb-md-60 mb-sm-60 mb-xs-40">
    <div class="container">
        <form action="<c:url value="/all"/>" id="formSubmit" method="get">
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
                            <select class="nice-select">
                                <option>8</option>
                                <option>12</option>
                                <option>16</option>
                                <option>20</option>
                            </select>
                        </div>
                        <div class="product-short">
                            <h4>Short by:</h4>
                            <select class="nice-select">
                                <option>Tăng dần theo tên</option>
                                <option>Giảm dần theo tên</option>
                                <option>Tăng dần theo tên</option>
                                <option>Giảm dần theo tên</option>
                                <option>Tăng dần theo giá</option>
                                <option>Giảm dần theo giá</option>
                            </select>
                        </div>
                    </div>
                </c:if>

                <c:forEach var="item" items="${model.listResult}">
                    <div class="col-xl-3 col-lg-4 col-md-6 col-12 mb-40">
                        <div class="product-item">
                            <div class="product-inner">

                                <div class="image">
                                    <img src="<c:url value="${item.thumnail}"/>" alt="">

                                    <div class="image-overlay">
                                        <div class="action-buttons">
                                            <button>thêm vào giỏ hàng</button>
                                            <button>thêm vào ds yêu thích</button>
                                        </div>
                                    </div>s

                                </div>

                                <div class="content">

                                    <div class="content-left">
                                        <c:url var="detailURL" value="/detail">
                                            <c:param name="type" value="detail"/>
                                            <c:param name="id" value="${item.id}"/>
                                        </c:url>
                                        <h4 class="title"><a id="detail" href="${detailURL}">${item.name}</a></h4>

                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>

                                        <h5 class="size">Size: <span>S</span><span>M</span><span>L</span><span>XL</span>
                                        </h5>
                                        <h5 class="color">Color: <span style="background-color: #ffb2b0"></span><span
                                                style="background-color: #0271bc"></span><span
                                                style="background-color: #efc87c"></span><span
                                                style="background-color: #00c183"></span></h5>

                                    </div>

                                    <div class="content-right">
                                        <span class="price">${item.price}VNĐ</span>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                </c:forEach>

                <div class="col-12" style="margin-left: 450px">
                    <ul class="pagination" id="pagination"></ul>
                    <input type="hidden" value="" id="page" class="page" name="page"/>
                    <input type="hidden" value="" id="maxPageItems" class="maxPageItems" name="maxPageItems"/>
                    <input type="hidden" value="${model.sortName}" id="sortName" name="sortName"/>
                    <input type="hidden" value="${model.sortBy}" id="sortBy" name="sortBy"/>
                    <input type="hidden" value="${model.type}" id="type" name="type"/>
                    <c:if test="${model.type == 'search'}">
                        <input type="hidden" value="${model.search}" id="search" name="search"/>
                    </c:if>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="<c:url value="/template/paging/jquery.twbsPagination.js" />"></script>
<script type="text/javascript">
    var currentPage = ${model.page};
    var totalPages = ${model.totalPages};
    var limit = 8;
    $(document).ready(function(){
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('.maxPageItems').val(limit);
                    $('.page').val(page);
                    $('#formSubmit').submit();
                }
            }
        });
    });


</script>

</body>
</html>

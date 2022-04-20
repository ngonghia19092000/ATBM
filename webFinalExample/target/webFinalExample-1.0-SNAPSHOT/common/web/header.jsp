<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>

<div class="main-wrapper">
    <!-- Header Section Start -->
    <div class="header-section section">
        <!-- Header Top Start -->
        <div class="header-top header-top-one bg-theme-two">
            <div class="container-fluid">
                <div class="row align-items-center justify-content-center">
                    <div class="col mt-10 mb-10 d-none d-md-flex">
                        <!-- Header Top Left Start -->
                        <div class="header-top-left">
                            <a href="<c:url value="/trang-chu"/> "><p style="margin-left: 10px">Welcome to Jadusona</p></a>
                            <c:forEach items="${info}" var="item">
                                <p>Hotline: <a href="tel:${item.phone}">${item.phone}</a></p>
                            </c:forEach>

                        </div><!-- Header Top Left End -->
                    </div>
                    <div class="col mt-10 mb-10">
                        <!-- Header Language Currency Start -->
                    </div>

                    <div class="header-top-right">
                        <c:if test="${not empty USERMODEL}">
                        <c:url var="account" value="/my-account">
                            <c:param name="action" value="detail"/>
                            <c:param name="id" value="${USERMODEL.id}"/>
                        </c:url>
                        <div class="dropdown">
                            <a class="dropdown-toggle" role="button" id="dropdownMenuLink"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img height="40" width="40" style="border-radius: 50%"
                                   src="<c:url value="${USERMODEL.image}"/>"
                                      />
                                <span><a href="${account}">${USERMODEL.fullName}</a>  </span>
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <c:if test="${USERMODEL.roleId==1}"><a class="dropdown-item"
                                                                       href="<c:url value="/admin-home"/>">
                                    <i class=" fa fa-user"></i> Đến trang quản trị
                                </a></c:if>


                                <a class="dropdown-item " href="<c:url value="/thoat?action=logout"/>">
                                    <i class=" fa fa-power-off"></i> Đăng xuất
                                </a>

                            </div>
                        </div>

                        </c:if>

<%--                    <div class="col mt-10 mb-10">--%>
<%--                        <!-- Header Shop Links Start -->--%>
<%--                        <c:if test="${not empty USERMODEL}">--%>
<%--                            <div class="header-top-right">--%>

<%--                                <p><a href="${account}">${USERMODEL.fullName}</a></p>--%>
<%--                                <p>--%>
<%--                                    <a href="<c:url value="/thoat?action=logout"/> ">Thoát</a>--%>
<%--                                </p>--%>
<%--                            </div><!-- Header Shop Links End -->--%>
<%--                        </c:if>--%>

                        <c:if test="${empty USERMODEL}">
                        <div class="header-top-right">
                            <p><a href=""></a></p>
                            <p>
                                <a href="<c:url value="/dang-ky?action=register"/> ">Đăng ký</a>
                                <a href="<c:url value="/dang-nhap?action=login"/> ">Đăng nhập</a>
                            </p>
                        </div><!-- Header Shop Links End -->
                        </c:if>
                    </div>
                </div>
            </div>
        </div><!-- Header Top End -->
        <!-- Header Bottom Start -->
        <div class="header-bottom header-bottom-one header-sticky@">
            <div class="container-fluid">
                <div class="row menu-center align-items-center justify-content-between">
                    <div class="col mt-15 mb-15">
                        <!-- Logo Start -->
                        <div class="header-logo">
                            <a href="<c:url value="/trang-chu"/> ">
                                <img src="<c:url value="/template/web/assets/images/logo.png"/> " alt="Jadusona">
                            </a>
                        </div><!-- Logo End -->
                    </div>
                    <div class="col order-2 order-lg-3">
                        <!-- Header Advance Search Start -->
                        <div class="header-shop-links">

                            <div class="header-search">
                                <button class="search-toggle">
                                    <img src="<c:url value="/template/web/assets/images/icons/search.png"/> " alt="Search Toggle">
                                    <img class="toggle-close"  src="<c:url value="/template/web/assets/images/icons/close.png"/> " alt="Search Toggle">
                                </button>

                                <div class="header-search-wrap">

                                    <form action="<c:url value="/all"/>" method="get">
                                        <input type="text" id="search" name="search" placeholder="Nhập thông tin tìm kiếm"/>
                                        <input type="hidden" value="1" id="page" name="page"/>
                                        <input type="hidden" value="9" id="maxPageItems" name="maxPageItems"/>
                                        <input type="hidden" value="name" id="sortName" name="sortName"/>
                                        <input type="hidden" value="desc" id="sortBy" name="sortBy"/>
                                        <input type="hidden" value="search" id="type" name="type"/>
                                        <button type="submit" >
                                            <img src="<c:url value="/template/web/assets/images/icons/search.png"/> " alt="Search">
                                        </button>
                                    </form>
                                </div>
                            </div>
<%--                            <div class="header-wishlist">--%>
<%--                                <a href="wishlist.html">--%>
<%--                                    <img src="<c:url value="/template/web/assets/images/icons/wishlist.png"/> " alt="Wishlist"><span>02</span>--%>
<%--                                </a>--%>
<%--                            </div>--%>
                            <div class="header-mini-cart">
                                <a href="cart.html">
                                    <img src="<c:url value="/template/web/assets/images/icons/cart.png"/> " alt="Cart">
                                </a>
                            </div>
                        </div><!-- Header Advance Search End -->
                    </div>
                    <div class="col order-3 order-lg-2">
                        <div class="main-menu">
                            <nav>
                                <ul>
                                    <li class="active"><a href="<c:url value="/trang-chu"/> ">TRANG CHỦ</a>
                                    </li>
                                    <li><a href="shop-left-sidebar.html">cỬA HÀNG</a>
                                        <ul class="sub-menu">
                                            <c:url  var="listURL" value="/all">
                                                <c:param name="page" value="1"/>
                                                <c:param name="maxPageItems" value="9"/>
                                                <c:param name="sortName" value="name"/>
                                                <c:param name="sortBy" value="desc"/>
                                                <c:param name="type" value="list"/>
                                            </c:url>
                                            <li><a href="${listURL} ">Tất cả sản phẩm</a></li>
                                            <li><a href="#" class="fa fa-chevron-right"> Danh mục</a>
                                                <ul class="sub-menu">
                                                    <c:url  var="listByGenderURL1" value="/all">
                                                        <c:param name="search" value="trai"/>
                                                        <c:param name="page" value="1"/>
                                                        <c:param name="maxPageItems" value="9"/>
                                                        <c:param name="sortName" value="name"/>
                                                        <c:param name="sortBy" value="desc"/>
                                                        <c:param name="type" value="search"/>
                                                    </c:url>
                                                    <li><a href="${listByGenderURL1}" class="fa fa-bars">Bé nam</a>
                                                        <ul>
                                                            <c:forEach items="${categories}" var="test">
                                                                <c:if test="${test.gender == 1}" >
                                                                    <c:url  var="listByCategoryURL1" value="/all">
                                                                        <c:param name="search" value="${test.name}"/>
                                                                        <c:param name="page" value="1"/>
                                                                        <c:param name="maxPageItems" value="9"/>
                                                                        <c:param name="sortName" value="name"/>
                                                                        <c:param name="sortBy" value="desc"/>
                                                                        <c:param name="type" value="search"/>
                                                                    </c:url>
                                                                    <li style="margin-left: 20px"><a href="${listByCategoryURL1}" class="fa fa-plus">${test.name}</a></li>
                                                                </c:if>
                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                    <c:url  var="listByGenderURL2" value="/all">
                                                        <c:param name="search" value="gái"/>
                                                        <c:param name="page" value="1"/>
                                                        <c:param name="maxPageItems" value="9"/>
                                                        <c:param name="sortName" value="name"/>
                                                        <c:param name="sortBy" value="desc"/>
                                                        <c:param name="type" value="search"/>
                                                    </c:url>
                                                    <li><a href="${listByGenderURL2}" class="fa fa-bars"> Bé gái</a>
                                                        <ul>
                                                            <c:forEach items="${categories}" var="test">
                                                                <c:if test="${test.gender == 2}" >
                                                                    <c:url  var="listByCategoryURL2" value="/all">
                                                                        <c:param name="search" value="${test.name}"/>
                                                                        <c:param name="page" value="1"/>
                                                                        <c:param name="maxPageItems" value="9"/>
                                                                        <c:param name="sortName" value="name"/>
                                                                        <c:param name="sortBy" value="desc"/>
                                                                        <c:param name="type" value="search"/>
                                                                    </c:url>
                                                                    <li style="margin-left: 20px"><a href="${listByCategoryURL2}" class="fa fa-plus">${test.name}</a></li>
                                                                </c:if>
                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="<c:url value="/lien-he"/> ">Liên hệ</a></li>
                                    <li><a href="<c:url value="/about"/> ">Thông tin cửa hàng</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="mobile-menu order-12 d-block d-lg-none col"></div>
                </div>
            </div>
        </div><!-- Header BOttom End -->
    </div>
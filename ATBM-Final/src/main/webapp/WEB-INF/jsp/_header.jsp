<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<mvc:resources mapping="/resources/**" location="/resources/static/"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="../img/fav.png">
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">--%>
    <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js">--%>
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">--%>
    <%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">--%>

    <link rel="stylesheet" href="../css/linearicons.css">
    <link rel="stylesheet" href="../css/owl.carousel.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/themify-icons.css">
    <link rel="stylesheet" href="../css/nice-select.css">
    <link rel="stylesheet" href="../css/nouislider.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/my-account.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/nice-select.css">
    <link rel="stylesheet" href="../css/nouislider.min.css">
    <link rel="stylesheet" href="../css/ion.rangeSlider.css"/>
    <link rel="stylesheet" href="../css/ion.rangeSlider.skinFlat.css">

    <link rel="stylesheet" href="../css/my-account.css">


</head>
<body>
<header class="header_area sticky-header">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light main_box">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="/home"><img src="img/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto">
                        <li class="nav-item"><a class="nav-link" href="/">Trang chủ</a></li>
                        <li class="nav-item submenu dropdown">
                            <a href="/danh-sach-san-pham" class="nav-link dropdown-toggle" data-toggle="dropdown"
                               role="button" aria-haspopup="true"
                               aria-expanded="false"><a class="nav-link" href="/danh-sach-san-pham">Sản phẩm</a></a>
                        </li>
                        <li class="nav-item submenu dropdown ">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">Thêm</a>
                            <ul class="dropdown-menu">

                                <li class="nav-item">
<a class="nav-link" href="https://drive.google.com/file/d/18RziVqBo2IeCGNmD1MEs33z7_hmohksp/view?usp=sharing" target="_blank">   Ứng dụng mã hóa</a>
                                  </li>
                            </ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                            <c:if test="${user==null}">
                        <li class="nav-item"><a class="nav-link" href="/login">Đăng nhập</a></li>

                        </c:if>
                        <c:if test="${user!=null}">

                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle " data-toggle="dropdown" role="button"
                                   aria-haspopup="true"
                                   aria-expanded="false"><span class="fa fa-user-circle-o"
                                                               style="margin-right: 10px"></span> Chào ${user.fullName}
                                </a>
                                <ul class="dropdown-menu">
                                    <c:if test="${user.isAdmin==1}">
                                    <li class="nav-item"><a class="nav-link" href="/adminPage">Trang quản trị</a></li>
                                    </c:if>
                                    <li class="nav-item"><a class="nav-link" href="/account">Tài khoản của tôi</a></li>
                                    <li class="nav-item"><a class="nav-link" href="/logout">Đăng xuất</a></li>
                                </ul>
                            </li>
                        </c:if>
                        </li>
                        <%--                        <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>--%>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="nav-item">
                            <c:if test="${user==null}"> <a href="/gio-hang-cua-toi" class="nav-link">
                                <span class="fa fa-shopping-bag "></span>
                            </a></c:if>
                            <c:if test="${user!=null}">
                                <a  href="/gio-hang-cua-toi" class="nav-link">
                                <span  class="fa fa-shopping-bag "></span>

                            </a></c:if>

                        </li>

                        <li class="nav-item">

                            <a class=" nav-link"><span class="fa fa-search " id="search"></span></a>
                        </li>


                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="search_input" id="search_input_box">
        <div class="container">
            <form class="d-flex justify-content-between">
                <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                <button type="submit" class="btn"></button>
                <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
            </form>
        </div>
    </div>
</header>
</body>

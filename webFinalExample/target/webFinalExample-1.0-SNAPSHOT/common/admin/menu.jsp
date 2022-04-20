<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<div class="sidebar-shortcuts" id="sidebar-shortcuts">
    <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
        <button class="btn btn-success">
            <i class="ace-icon fa fa-signal"></i>
        </button>
        <button class="btn btn-info">
            <i class="ace-icon fa fa-pencil"></i>
        </button>
        <button class="btn btn-warning">
            <i class="ace-icon fa fa-users"></i>
        </button>
        <button class="btn btn-danger">
            <i class="ace-icon fa fa-cogs"></i>
        </button>
    </div>
    <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
        <span class="btn btn-success"></span>
        <span class="btn btn-info"></span>
        <span class="btn btn-warning"></span>
        <span class="btn btn-danger"></span>
    </div>
</div><!-- /.sidebar-shortcuts -->
<ul class="nav nav-list">
    <li class="active">
        <a href="<c:url value="/admin-home"/>">
            <i class="menu-icon fa fa-tachometer"></i>
            <span class="menu-text"> Dashboard </span>
        </a>
        <b class="arrow"></b>
    </li>
    <li class="">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-list"></i>
            <span class="menu-text"> Quản lý </span>
            <b class="arrow fa fa-angle-down"></b>
        </a>
        <b class="arrow"></b>
        <ul class="submenu">
            <li class="">
                <a href="<c:url value="/admin-user?type=list"/> ">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Tài khoản
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="<c:url value="/admin-product?type=list"/> ">
                    <i class="menu-icon fa fa-caret-right"></i>
                   Sản phẩm
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="<c:url value="/admin-order?type=list"/>">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Đơn hàng
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="revenue-statistic.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Doanh thu
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="payment-management.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                   Thanh toán
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="<c:url value="/admin-banner?type=list"/>">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Banner khuyến mãi
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="<c:url value="/admin-coupon?type=list"/> ">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Mã giảm giá
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="<c:url value="/admin-category?type=list"/>">
                    <i class="menu-icon fa fa-caret-right"></i>
                   Thể loại
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="reviews-management.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Đánh giá
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
    </li>
    <li class="">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-tag"></i>
            <span class="menu-text"> More page </span>
            <b class="arrow fa fa-angle-down"></b>
        </a>
        <b class="arrow"></b>
        <ul class="submenu">
            <li class="">
                <a href="inbox.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Tin nhắn
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="<c:url value="/admin-information?type=list"/> ">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Thông tin trang bán hàng
                </a>
                <b class="arrow"></b>
            </li>

        </ul>
    </li>
</ul><!-- /.nav-list -->
<!-- /.nav-list -->
<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
    <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
</div>
</div>
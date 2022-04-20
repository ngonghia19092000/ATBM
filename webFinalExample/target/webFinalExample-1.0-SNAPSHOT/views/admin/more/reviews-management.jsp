<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Quản lí đánh giá sản phẩm</title>
    <style>
        /* Popup container - can be anything you want */
        .popup {
            position: relative;
            display: inline-block;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        /* The actual popup */
        .popup .popuptext {
            visibility: hidden;
            width: 160px;
            background-color: #555;
            color: #fff;
            text-align: center;
            border-radius: 6px;
            padding: 8px 0;
            position: absolute;
            z-index: 1;
            bottom: 125%;
            left: 50%;
            margin-left: -80px;
        }

        /* Popup arrow */
        .popup .popuptext::after {
            content: "";
            position: absolute;
            top: 100%;
            left: 50%;
            margin-left: -5px;
            border-width: 5px;
            border-style: solid;
            border-color: #555 transparent transparent transparent;
        }

        /* Toggle this class - hide and show the popup */
        .popup .show {
            visibility: visible;
            -webkit-animation: fadeIn 1s;
            animation: fadeIn 1s;
        }

        /* Add animation (fade in the popup) */
        @-webkit-keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

    </style>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">Tables</a>
                </li>
                <li class="active">Reviews and Rating</li>
            </ul>
            <!-- /.breadcrumb -->
            <div class="nav-search" id="nav-search">
                <form class="form-search">
                            <span class="input-icon">
                                <input type="text" placeholder="Search ..." class="nav-search-input"
                                       id="nav-search-input" autocomplete="off"/>
                                <i class="ace-icon fa fa-search nav-search-icon"></i>
                            </span>
                </form>
            </div>
            <!-- /.nav-search -->
        </div>
        <div class="page-content">
            <div class="ace-settings-container" id="ace-settings-container">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <i class="ace-icon fa fa-cog bigger-130"></i>
                </div>
                <div class="ace-settings-box clearfix" id="ace-settings-box">
                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <div class="pull-left">
                                <select id="skin-colorpicker" class="hide">
                                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                </select>
                            </div>
                            <span>&nbsp; Choose Skin</span>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-navbar" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-sidebar" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-breadcrumbs" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-add-container" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-add-container">
                                Inside
                                <b>.container</b>
                            </label>
                        </div>
                    </div>
                    <!-- /.pull-left -->
                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                        </div>
                    </div>
                    <!-- /.pull-left -->
                </div>
                <!-- /.ace-settings-box -->
            </div>
            <!-- /.ace-settings-container -->
            <div class="page-header">
                <h1>
                    Tables
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        Reviews and Rating
                    </small>
                </h1>
            </div>
            <div>
                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>
                    <th class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace"/>
                            <span class="lbl"></span>
                        </label>
                    </th>
                    <th>Email Address</th>
                    <th>Full Name</th>
                    <th>Product</th>
                    <th class="hidden-480">Comment
                    </th>

                    <th>
                        <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                        Date
                    </th>

                    <th class="hidden-480">Rating</th>

                    <th class="detail-col" style="text-align: center;">Details</th>
                    </tr>
                    </thead>

                    <tbody>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">Nhatnhat11909@gmail.com</a>
                        </td>
                        <td>Ngô Minh Nghĩa</td>
                        <td>Giày trẻ em</td>
                        <td>Tôi cảm thấy rất hài lòng về sản phẩm được giao</td>

                        <td>Feb 12 12:10</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>

                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>
                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">TranVanTuan@gmail.com</a>
                        </td>
                        <td>Trần Văn Tuấn</td>
                        <td>Kelly Shirt Set</td>
                        <td>Giao hàng nhanh.Chất liệu tốt ,cảm ơn shop.</td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>
                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">nmnn11290@gmail.com</a>
                        </td>
                        <td>Xuân Mai</td>
                        <td>Stylish Hat</td>
                        <td>Đẹp. nên mua các Mom ạ. giao hàng y hình.</td>

                        <td>Feb 10 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">abcxyz@gmail.com</a>
                        </td>
                        <td>Nguyễn Ngọc</td>
                        <td>Aó thun cá tính</td>
                        <td>nhận hàng đồ của con cưng lắm ạ</td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star"></span>

                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">nghiango1909@gmail.com</a>
                        </td>
                        <td>Ngô Minh Nghĩa</td>
                        <td>Giày trẻ em</td>
                        <td>Tôi cảm thấy rất hài lòng về sản phẩm được giao</td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">n12324nkv@gmail.com</a>
                        </td>
                        <td>Ngô Minh Nghĩa</td>
                        <td>Giày trẻ em</td>
                        <td>Tôi cảm thấy rất hài lòng về sản phẩm được giao</td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">nghvbasdsa909@gmail.com</a>
                        </td>
                        <td>Trần Phan Văn Đạt</td>
                        <td>Xshuai Baby Frock</td>
                        <td>Áo đẹp, chất liệu vải mềm mịn.sản phẩm như hình</td>

                        <td>Jul 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">ngdfgjknv@gmail.com</a>
                        </td>
                        <td>Lê Quỳnh Diễm</td>
                        <td>Bộ Quần Áo Vải Bông Cho Bé Trai</td>
                        <td>So với giá thì chấp nhận hàng được.
                            Có điều đặt màu hồng thì ship màu vàng. <br>Nhưng đang vui nên vẫn cho shop 5 sao 🤣🤣
                        </td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">XinhNhuHoa9@gmail.com</a>
                        </td>
                        <td>Nguyễn Thị Hồng Thắm</td>
                        <td>
                            Đầm Công Chúa Cho Bé Gái Từ 1-4 Tuổi,<br> Đầm Xòe Dài Tay Dễ Thương
                        </td>
                        <td>Đồ dễ thương, vải đẹp mn nên mua, sẽ ủng hộ shop lâu dài ạ 😍</td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">nganquynh112@mail.com</a>
                        </td>
                        <td>Lệ Nhật Hạ</td>
                        <td>Set 4 bộ thun lỡ gái 18-26kg</td>
                        <td>20kg, size 5, vừa , chất vải hợp giá tiền, <br>
                            mua đc lúc free ship nữa, thích ❤
                        </td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">PhanTRinh@emai.com</a>
                        </td>
                        <td>Phan Trinh</td>
                        <td>Áo sơ mi caro xanh</td>
                        <td>Tôi cảm thấy rất hài lòng về sản phẩm được giao</td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">Dongthien123@gmail.com</a>
                        </td>
                        <td>Ngô Minh Nghĩa</td>
                        <td>Bộ Quần Áo Thời Trang Tootplay <br>Cho Bé Trai Và Bé Gái,


                        </td>
                        <td>Giao sai kích cỡ,đặt 2 bộ khác size, giao cùng 1 size
                        </td>

                        <td>Feb 12 12:11</td>

                        <td class="hidden-480">

                            <span class="fa fa-star"></span>

                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                        <td>
                            <a href="#">TuanTienTrieu@gmail.com</a>
                        </td>
                        <td>Nguyễn Trúc Ly</td>
                        <td> Bộ Quần Áo Thời Trang Bằng Vải Nhung Tổng Hợp<br> In Họa Tiết Chó Dễ Thương</td>
                        <td>đẹp tuyệt vời..❤️❤️</td>

                        <td>Jul 12 12:11</td>

                        <td class="hidden-480">
                            <span class="fa fa-star "></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </td>

                        <td class="center">
                            <button aria-expanded="false" class="btn btn-outline-danger"
                                    data-toggle="collapse" data-target="#boxnoidung"><i class="fa fa-reply"
                                                                                        aria-hidden="true"></i>
                            </button>

                        </td>

                        <div class="hidden-md hidden-lg">
                            <div class="inline pos-rel">
                                <button class="btn btn-minier btn-yellow dropdown-toggle"
                                        data-toggle="dropdown" data-position="auto">
                                    <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                </button>

                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                    <li>
                                        <a href="#" class="tooltip-info" data-rel="tooltip"
                                           title="View">
                                                    <span class="blue">
                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i></span>
                                        </a>
                                    </li>

                                    <li>


                                    </li>

                                    <li>

                                    </li>
                                </ul>
                            </div>
                        </div>

                    </tr>


                    </tbody>


                </table>

                <tr>
                    <div class="collapse mt-4" id="boxnoidung">
                        <div class="card card-body bg-warning">
                            <div id="details-id">
                                <p>Reply to Customer</p>
                                <fieldset>
                                    <textarea class="width-100"
                                              placeholder="Chào Bạn, cảm ơn Bạn đã tin tưởng và sử dụng sản phẩm của Jadusona, shop chúc bạn có 1 ngày vui vẻ"></textarea>
                                </fieldset>
                                <div class="hr hr-dotted"></div>
                                <div class="clearfix">
                                    <label class="pull-left">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl">Lưu lại bản ghi</span>
                                    </label>
                                    <button class="pull-right btn btn-sm btn-primary btn-white btn-round"
                                            type="button">
                                        Reply to
                                        <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                    </button>
                                </div>


                            </div>
                        </div>
                    </div>
                </tr>
            </div>
        </div>
        <!-- /.page-content -->
    </div>
</div>
<script type="text/javascript">
    jQuery(function ($) {
        //initiate dataTables plugin
        var myTable =
            $('#dynamic-table')
                //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                .DataTable({
                    bAutoWidth: false,
                    "aoColumns": [{
                        "bSortable": false
                    },
                        null, null, null, null, null, null, {
                            "bSortable": false
                        }
                    ],
                    "aaSorting": [],


                    //"bProcessing": true,
                    //"bServerSide": true,
                    //"sAjaxSource": "http://127.0.0.1/table.php"   ,

                    //,
                    //"sScrollY": "200px",
                    //"bPaginate": false,

                    //"sScrollX": "100%",
                    //"sScrollXInner": "120%",
                    //"bScrollCollapse": true,
                    //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                    //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                    //"iDisplayLength": 50


                    select: {
                        style: 'multi'
                    }
                });


        $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

        new $.fn.dataTable.Buttons(myTable, {
            buttons: [{
                "extend": "colvis",
                "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
                "className": "btn btn-white btn-primary btn-bold",
                columns: ':not(:first):not(:last)'
            }, {
                "extend": "copy",
                "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "csv",
                "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "excel",
                "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "pdf",
                "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "print",
                "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
                "className": "btn btn-white btn-primary btn-bold",
                autoPrint: false,
                message: 'This print was produced using the Print button for DataTables'
            }]
        });
        myTable.buttons().container().appendTo($('.tableTools-container'));

        //style the message box
        var defaultCopyAction = myTable.button(1).action();
        myTable.button(1).action(function (e, dt, button, config) {
            defaultCopyAction(e, dt, button, config);
            $('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
        });


        var defaultColvisAction = myTable.button(0).action();
        myTable.button(0).action(function (e, dt, button, config) {

            defaultColvisAction(e, dt, button, config);


            if ($('.dt-button-collection > .dropdown-menu').length == 0) {
                $('.dt-button-collection')
                    .wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
                    .find('a').attr('href', '#').wrap("<li />")
            }
            $('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
        });

        ////

        setTimeout(function () {
            $($('.tableTools-container')).find('a.dt-button').each(function () {
                var div = $(this).find(' > div').first();
                if (div.length == 1) div.tooltip({
                    container: 'body',
                    title: div.parent().text()
                });
                else $(this).tooltip({
                    container: 'body',
                    title: $(this).text()
                });
            });
        }, 500);


        myTable.on('select', function (e, dt, type, index) {
            if (type === 'row') {
                $(myTable.row(index).node()).find('input:checkbox').prop('checked', true);
            }
        });
        myTable.on('deselect', function (e, dt, type, index) {
            if (type === 'row') {
                $(myTable.row(index).node()).find('input:checkbox').prop('checked', false);
            }
        });


        /////////////////////////////////
        //table checkboxes
        $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

        //select/deselect all rows according to table header checkbox
        $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked; //checkbox inside "TH" table header

            $('#dynamic-table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) myTable.row(row).select();
                else myTable.row(row).deselect();
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#dynamic-table').on('click', 'td input[type=checkbox]', function () {
            var row = $(this).closest('tr').get(0);
            if (this.checked) myTable.row(row).deselect();
            else myTable.row(row).select();
        });


        $(document).on('click', '#dynamic-table .dropdown-toggle', function (e) {
            e.stopImmediatePropagation();
            e.stopPropagation();
            e.preventDefault();
        });


        //And for the first simple table, which doesn't have TableTools or dataTables
        //select/deselect all rows according to table header checkbox
        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked; //checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#simple-table').on('click', 'td input[type=checkbox]', function () {
            var $row = $(this).closest('tr');
            if ($row.is('.detail-row ')) return;
            if (this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });

        $(document).ready(function () {
            $("#formButton").click(function () {
                $("#form-details-id").toggle();
            });
        });
        /********************************/
        //add tooltip for small view action buttons in dropdown menu
        $('[data-rel="tooltip"]').tooltip({
            placement: tooltip_placement
        });

        //tooltip placement on right or left
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }


        /***************/
        $('.show-details-btn').on('click', function (e) {
            e.preventDefault();
            $(this).closest('tr').next().toggleClass('open');
            $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
        });
        /***************/


        /**
         //add horizontal scrollbars to a simple table
         $('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
         {
            horizontal: true,
            styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
            size: 2000,
            mouseWheelLock: true
          }
         ).css('padding-top', '12px');
         */


    })
</script>
<script>
    // When the user clicks on div, open the popup
    function myFunction() {
        var popup = document.getElementById("myPopup");
        popup.classList.toggle("show");
    }

</script>

</body>
</html>

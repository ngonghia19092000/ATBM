<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Quản lí mã giảm giá</title>
    <style>

        .main-table{
            background-color: #f2f2f2;
        }
        .table-2  {
            border: 1px solid #f1f1f1;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;

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
                <li class="active">Coupon Management</li>
            </ul><!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
                <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                </form>
            </div><!-- /.nav-search -->
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
                    </div><!-- /.pull-left -->

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
                    </div><!-- /.pull-left -->
                </div><!-- /.ace-settings-box -->
            </div><!-- /.ace-settings-container -->

            <div class="page-header">
                <h1>
                    Tables
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        Coupon
                    </small>
                </h1>
            </div><!-- /.page-header -->

            <!--  add voucher-->
            <button aria-expanded="false"  class="btn btn-outline-danger"
                    data-toggle="collapse" data-target="#boxnoidung">Add Coupon</button>

            <div class="collapse mt-4" id="boxnoidung" >
                <div class="card card-body bg-warning" >
                    <div style="width: 100%; height: 100px; background-color: #438eb9;  ">
                        <div  style="float: left; margin-top: 10px; margin-left: 20px;">
                            <label for="">Issue Code</label>
<%--                            <input type="text" name="" id="">--%>
                        </div>
                        <div style="float: left; margin-top: 10px; margin-left: 50px;">
                            <label for="">Name</label>
                            <input type="text">
                        </div>
                        <div  style="float: left; margin-top: 10px; margin-left: 20px;">
                            <label for="">From</label>
<%--                            <input type="text" name="" id="">--%>
                        </div>
                        <div  style="float: left; margin-top: 10px; margin-left: 20px;">
                            <label for="">To</label>
                            <input type="text" name="" id="">
                        </div>
                        <div  style="float: left; margin-top: 10px; margin-left: 35px;">
                            <label for="">Quantity</label>
<%--                            <input type="text" name="" id="">--%>
                        </div>
                        <div  style="float: left; margin-top: 10px; margin-left: 20px;">
                            <label for="">Promotion</label>
<%--                            <input type="text" name="" id="">--%>
                        </div>
                        <div style="float: left; margin-top: 10px; margin-left: 60px;">
                            <button type="button" class="btn btn-default btn-sm">
                                <span class="glyphicon glyphicon-ok"></span> Ok
                            </button>
                        </div>

                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                    <div class="row">
                        <div class="col-xs-12">
                            <table id="simple-table" class="table  table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </th>
                                    <th >Issue Code</th>
                                    <th>Name</th>
                                    <th>From</th>
                                    <th>To</th>
                                    <th>
                                        <!-- <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i> -->
                                        Quantity
                                    </th>
                                    <th >Promotion</th>


                                    <th>Status</th>
                                </tr>
                                </thead>

                                <tbody>
                                <!-- Bắt đầu 1 voucher -->
                                <tr>
                                    <!-- K quan tâm -->
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <!--  -->

                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn"
                                               title="Show Details">
                                                DHCV1001
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        Mùa Hè Sôi Động
                                    </td>
                                    <td>
                                        20/07/2020
                                    </td>
                                    <td > 01/09/2020</td>
                                    <td>10</td>

                                    <td>
                                        5% Off
                                    </td>


                                    <td>Activated</td>
                                </tr>






                                <!-- thông tin chi tiết vocher -->
                                <tr class="detail-row">
                                    <td colspan="10">
                                        <div class="table-detail">
                                            <!-- Code voucher trong này  -->
                                            <div class="container"></div>
                                            <div class="row">
                                                <div class="col-md-10">
                                                    <!-- Nav tabs --><div class="card" >
                                                    <ul class="nav nav-tabs" role="tablist">
                                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Information</a></li>
                                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Coupon List</a></li>
                                                        <!-- <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Lịch sử sử dụng</a></li>
                                                                        -->
                                                    </ul>

                                                    <!-- Tab panes -->
                                                    <div class="tab-content">
                                                        <div role="tabpanel" class="tab-pane active" id="home">
                                                            <div F>
                                                                <table style="width:100%">
                                                                    <tr>
                                                                        <th>Issue Code:</th>
                                                                        <td>DHCV1001</td>
                                                                        <th>Name:</th>
                                                                        <td>Hè sôi động</td>                                                                             </tr>
                                                                    <tr>
                                                                        <th>Time:</th>
                                                                        <td>20/11/2020 - 30/11/2020</td>
                                                                        <th>Promotin</th>
                                                                        <td>5% Off</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Brand Name:</th>
                                                                        <td>All</td>

                                                                    </tr>
                                                                    <tr>
                                                                        <th>Status:</th>
                                                                        <td>Activated</td>
                                                                    </tr>


                                                                </table>
                                                            </div>

                                                        </div>
                                                        <div role="tabpanel" class="tab-pane" id="profile" >
                                                            <table style="width:100%" class="table-2">
                                                                <tr class="table-2  main-table">
                                                                    <th>Coupon</th>
                                                                    <th>Promotion</th>
                                                                    <th>Release Date</th>
                                                                    <th>Expiration Date</th>
                                                                    <th>Status</th>
                                                                </tr>
                                                                <tr>
                                                                    <td>BHGJ20134</td>
                                                                    <td>Discount 5% product value</td>
                                                                    <td>14/11/2020</td>
                                                                    <td>25/11/2020</td>
                                                                    <td>7</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>BHGJ20134</td>
                                                                    <td></td>
                                                                    <td>25/11/2020</td>
                                                                    <td>03/12/2020</td>
                                                                    <td>5</td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <!-- <div role="tabpanel" class="tab-pane" id="messages">
                                                                        <table style="width:100%" class="table-2">
                                                                            <tr class="table-2  main-table">
                                                                              <th>Mã Voucher</th>
                                                                              <th>Khách hàng</th>
                                                                              <th>Tên sản phẩm</th>
                                                                              <th>Giá gốc</th>
                                                                              <th>Giá thanh toán</th>
                                                                              <th>Ngày sử dụng</th>
                                                                            </tr>
                                                                            <tr>
                                                                              <td>BHGJ20134</td>
                                                                              <td>Ông Thọ</td>
                                                                              <td>Váy trẻ em Tmart</td>
                                                                              <td>120.000đ</td>
                                                                              <td>108.000đ</td>
                                                                              <td>15/09/2020</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>BHGJ20134</td>
                                                                                <td>Ông Thọ</td>
                                                                                <td>Váy trẻ em Tmart</td>
                                                                                <td>120.000đ</td>
                                                                                <td>108.000đ</td>
                                                                                <td>15/09/2020</td>
                                                                            </tr>
                                                                          </table>
                                                                    </div> -->
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Hết voucher -->
                        </div>
                        </td>
                        </tr>
                        <!--  Kết thúc-->


                        <tr>
                            <!-- K quan tâm -->
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace"/>
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <!--  -->

                            <td class="center">
                                <div class="action-buttons">
                                    <a href="#" class="green bigger-140 show-details-btn"
                                       title="Show Details">
                                        DHCV5468
                                        <i class="ace-icon fa fa-angle-double-down"></i>
                                        <span class="sr-only">Details</span>
                                    </a>
                                </div>
                            </td>

                            <td>
                                Mùa Đông Không Lạnh
                            </td>
                            <td>
                                20/11/2020
                            </td>
                            <td > 01/12/2020</td>
                            <td>20</td>

                            <td>
                                10% Off
                            </td>


                            <td>Activated</td>
                        </tr>








                        <!-- thông tin chi tiết vocher -->
                        <tr class="detail-row">
                            <td colspan="10">
                                <div class="table-detail">
                                    <!-- Code voucher trong này  -->
                                    <div class="container"></div>
                                    <div class="row">
                                        <div class="col-md-10">
                                            <!-- Nav tabs --><div class="card" >
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Information</a></li>
                                                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Coupon List</a></li>
                                                <!-- <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Lịch sử sử dụng</a></li>
                                                                    -->
                                            </ul>

                                            <!-- Tab panes -->
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active" id="home">
                                                    <div F>
                                                        <table style="width:100%">
                                                            <tr>
                                                                <th>Issue Code:</th>
                                                                <td>DHCV1001</td>
                                                                <th>Name:</th>
                                                                <td>Hè sôi động</td>                                                                             </tr>
                                                            <tr>
                                                                <th>Time:</th>
                                                                <td>20/11/2020 - 30/11/2020</td>
                                                                <th>Promotin</th>
                                                                <td>5% Off</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Brand Name:</th>
                                                                <td>All</td>

                                                            </tr>
                                                            <tr>
                                                                <th>Status:</th>
                                                                <td>Activated</td>
                                                            </tr>


                                                        </table>
                                                    </div>

                                                </div>
                                                <div role="tabpanel" class="tab-pane" id="profile" >
                                                    <table style="width:100%" class="table-2">
                                                        <tr class="table-2  main-table">
                                                            <th>Coupon</th>
                                                            <th>Promotion</th>
                                                            <th>Release Date</th>
                                                            <th>Expiration Date</th>
                                                            <th>Status</th>
                                                        </tr>
                                                        <tr>
                                                            <td>BHGJ20134</td>
                                                            <td>Discount 5% product value</td>
                                                            <td>14/11/2020</td>
                                                            <td>25/11/2020</td>
                                                            <td>3</td>
                                                        </tr>
                                                        <tr>
                                                            <td>BHGJ20134</td>
                                                            <td></td>
                                                            <td>25/11/2020</td>
                                                            <td>03/12/2020</td>
                                                            <td>5</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <!-- <div role="tabpanel" class="tab-pane" id="messages">
                                                                    <table style="width:100%" class="table-2">
                                                                        <tr class="table-2  main-table">
                                                                          <th>Mã Voucher</th>
                                                                          <th>Khách hàng</th>
                                                                          <th>Tên sản phẩm</th>
                                                                          <th>Giá gốc</th>
                                                                          <th>Giá thanh toán</th>
                                                                          <th>Ngày sử dụng</th>
                                                                        </tr>
                                                                        <tr>
                                                                          <td>BHGJ20134</td>
                                                                          <td>Ông Thọ</td>
                                                                          <td>Váy trẻ em Tmart</td>
                                                                          <td>120.000đ</td>
                                                                          <td>108.000đ</td>
                                                                          <td>15/09/2020</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>BHGJ20134</td>
                                                                            <td>Ông Thọ</td>
                                                                            <td>Váy trẻ em Tmart</td>
                                                                            <td>120.000đ</td>
                                                                            <td>108.000đ</td>
                                                                            <td>15/09/2020</td>
                                                                        </tr>
                                                                      </table>
                                                                </div> -->
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Hết voucher -->
                    </div>
                    </td>
                    </tr>
                    <!--  Kết thúc-->



                    </tbody>
                    </table>
                </div><!-- /.span -->
            </div><!-- /.row -->

            <div class="hr hr-18 dotted hr-double"></div>


            <div class="hr hr-18 dotted hr-double"></div>

            <div class="row" style="display: none;">
                <div class="col-xs-12">
                    <div class="page-header">
                        <h1>
                            Tables
                            <small>
                                <i class="ace-icon fa fa-angle-double-right"></i>
                                Customer User
                            </small>
                        </h1>
                    </div><!-- /.page-header -->

                    <div class="clearfix">
                        <div class="pull-right tableTools-container"></div>
                    </div>
                    <div class="table-header">
                        List of users who are customers
                    </div>

                    <!-- div.table-responsive -->

                    <!-- div.dataTables_borderWrap -->
                    <div>
                        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </th>
                                <th>User name</th>
                                <th>Thumbnail</th>
                                <th class="hidden-480">Full Name</th>

                                <th>
                                    <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                    Last Sign in
                                </th>
                                <th class="hidden-480">Permission</th>

                                <th></th>
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
                                    <a href="#">nha111msdas</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Gloria Freya</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">appcom</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Miranda A</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">appcom1112312</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Rowan R</td>
                                <td>Jan 1</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Isoldenha12</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Isolde Isolde</td>
                                <td>Sep 19</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">dmkmaa9024</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Nhà Ở Việt Nam</td>
                                <td>Jan 1</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">BabyCute</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Baby Cute</td>
                                <td>May 5</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">akmwecom</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Tôi Là Nghĩa</td>
                                <td>Sep 19</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">bcdefgh1</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Tôi Mệt Rồi</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">bsklwssaaa11</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Keisha Keisha</td>
                                <td>Nov 2</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Dulcie1</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Dulcie J</td>
                                <td>Feb 4</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">FionaA112</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Fiona A</td>
                                <td>Jan 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">comkaaamka</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Nha Nha</td>
                                <td>Dec 24</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Christabelcom</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Christabel H</td>
                                <td>Feb 3</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Annabellaom</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Annabella L</td>
                                <td>Sep 2</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">appDelwyn11</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Delwyn Apple</td>
                                <td>Mar 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">CalliopeCo</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Calliope Co</td>
                                <td>Feb 21</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Drusilla1166889</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Drusilla Drusilla</td>
                                <td>Jul 6</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">sdjknsdn123123</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Minh Nghĩa</td>
                                <td>Feb 30</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">fskoaaaaokokk</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Tuấn Tuấn Trần</td>
                                <td>Feb 22</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">xuyerenaskdn4234</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Talel Tul</td>
                                <td>Feb 5</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">paassha233</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Pal Pall</td>
                                <td>Nov 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">nhucCaiDau11</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Nhức Cái Đầu</td>
                                <td>May 6</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">mericulri11</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Merikillri Maas</td>
                                <td>May 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">sayOhYeah</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Sơn Tùng M-tp</td>
                                <td>May 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Chamuonnoi1223</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Isolde See</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">appcom9900</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Charmaine Sharmaine</td>
                                <td>Jan 2</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">apdrrro1</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Ndia Lynk</td>
                                <td>Dec 1</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Phoebecom</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Phoebe Con</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Violet11</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Violet K</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Nha1122</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Nhi Anh</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Jasmineaaa</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Jasmine M</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">IolantheQa</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Iolanthe Qaa</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">qsnahaha1</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Lucasta J</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">abc11911xxx</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Esther Esther</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">appacom</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Heulwen Heulwen</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Uri9991</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Uri Alan</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Lionel1909</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Lionel Baby</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Basil11229</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Farley B</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">azcsskkaa</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Clitus A</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">s112Dominic</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Gwyn Dominic</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Ethelbertwewe</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Ethelbert Edsel</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Darius111</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Da Darius</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">Cuthbert111</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Cuthbert Cuthbert</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>

                                <td>
                                    <a href="#">izabeth12</a>
                                </td>
                                <td><img src="assets/images/avatars/avatar.png"></td>
                                <td class="hidden-480">Elizabeth Donal</td>
                                <td>Feb 12</td>

                                <td class="hidden-480">
                                    <span class="label label-sm label-warning">Customer</span>
                                </td>

                                <td>
                                    <div class="hidden-sm hidden-xs action-buttons">
                                        <a class="blue" href="#">
                                            <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                        </a>

                                        <a class="green" href="#">
                                            <i class="ace-icon fa fa-pencil bigger-130"></i>
                                        </a>

                                        <a class="red" href="#">
                                            <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                        </a>
                                    </div>

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
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-success" data-rel="tooltip"
                                                       title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="tooltip-error" data-rel="tooltip"
                                                       title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>


                            <!--                                        <tr>-->
                            <!--                                            <td class="center">-->
                            <!--                                                <label class="pos-rel">-->
                            <!--                                                    <input type="checkbox" class="ace"/>-->
                            <!--                                                    <span class="lbl"></span>-->
                            <!--                                                </label>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <a href="#">taiempro123</a>-->
                            <!--                                            </td>-->
                            <!--                                            <td><img src="assets/images/avatars/avatar5.png"></td>-->
                            <!--                                            <td class="hidden-480">Trần Tấn Tài</td>-->
                            <!--                                            <td>Feb 18</td>-->

                            <!--                                            <td class="hidden-480">-->
                            <!--                                                <span class="label label-sm label-success">User Admin</span>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <div class="hidden-sm hidden-xs action-buttons">-->
                            <!--                                                    <a class="blue" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="green" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="red" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>-->
                            <!--                                                    </a>-->
                            <!--                                                </div>-->

                            <!--                                                <div class="hidden-md hidden-lg">-->
                            <!--                                                    <div class="inline pos-rel">-->
                            <!--                                                        <button class="btn btn-minier btn-yellow dropdown-toggle"-->
                            <!--                                                                data-toggle="dropdown" data-position="auto">-->
                            <!--                                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>-->
                            <!--                                                        </button>-->

                            <!--                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">-->
                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-info" data-rel="tooltip"-->
                            <!--                                                                   title="View">-->
                            <!--																				<span class="blue">-->
                            <!--																					<i class="ace-icon fa fa-search-plus bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-success" data-rel="tooltip"-->
                            <!--                                                                   title="Edit">-->
                            <!--																				<span class="green">-->
                            <!--																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-error" data-rel="tooltip"-->
                            <!--                                                                   title="Delete">-->
                            <!--																				<span class="red">-->
                            <!--																					<i class="ace-icon fa fa-trash-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->
                            <!--                                                        </ul>-->
                            <!--                                                    </div>-->
                            <!--                                                </div>-->
                            <!--                                            </td>-->
                            <!--                                        </tr>-->
                            <!--                                        <tr>-->
                            <!--                                            <td class="center">-->
                            <!--                                                <label class="pos-rel">-->
                            <!--                                                    <input type="checkbox" class="ace"/>-->
                            <!--                                                    <span class="lbl"></span>-->
                            <!--                                                </label>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <a href="#">aessica11223</a>-->
                            <!--                                            </td>-->
                            <!--                                            <td><img src="assets/images/avatars/avatar5.png"></td>-->
                            <!--                                            <td class="hidden-480">Jessica A</td>-->
                            <!--                                            <td>Feb 18</td>-->

                            <!--                                            <td class="hidden-480">-->
                            <!--                                                <span class="label label-sm label-success">User Admin</span>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <div class="hidden-sm hidden-xs action-buttons">-->
                            <!--                                                    <a class="blue" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="green" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="red" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>-->
                            <!--                                                    </a>-->
                            <!--                                                </div>-->

                            <!--                                                <div class="hidden-md hidden-lg">-->
                            <!--                                                    <div class="inline pos-rel">-->
                            <!--                                                        <button class="btn btn-minier btn-yellow dropdown-toggle"-->
                            <!--                                                                data-toggle="dropdown" data-position="auto">-->
                            <!--                                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>-->
                            <!--                                                        </button>-->

                            <!--                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">-->
                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-info" data-rel="tooltip"-->
                            <!--                                                                   title="View">-->
                            <!--																				<span class="blue">-->
                            <!--																					<i class="ace-icon fa fa-search-plus bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-success" data-rel="tooltip"-->
                            <!--                                                                   title="Edit">-->
                            <!--																				<span class="green">-->
                            <!--																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-error" data-rel="tooltip"-->
                            <!--                                                                   title="Delete">-->
                            <!--																				<span class="red">-->
                            <!--																					<i class="ace-icon fa fa-trash-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->
                            <!--                                                        </ul>-->
                            <!--                                                    </div>-->
                            <!--                                                </div>-->
                            <!--                                            </td>-->
                            <!--                                        </tr>-->
                            <!--                                        <tr>-->
                            <!--                                            <td class="center">-->
                            <!--                                                <label class="pos-rel">-->
                            <!--                                                    <input type="checkbox" class="ace"/>-->
                            <!--                                                    <span class="lbl"></span>-->
                            <!--                                                </label>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <a href="#">LauraKMA112</a>-->
                            <!--                                            </td>-->
                            <!--                                            <td><img src="assets/images/avatars/avatar5.png"></td>-->
                            <!--                                            <td class="hidden-480">Laura Linda</td>-->
                            <!--                                            <td>Feb 18</td>-->

                            <!--                                            <td class="hidden-480">-->
                            <!--                                                <span class="label label-sm label-success">User Admin</span>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <div class="hidden-sm hidden-xs action-buttons">-->
                            <!--                                                    <a class="blue" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="green" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="red" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>-->
                            <!--                                                    </a>-->
                            <!--                                                </div>-->

                            <!--                                                <div class="hidden-md hidden-lg">-->
                            <!--                                                    <div class="inline pos-rel">-->
                            <!--                                                        <button class="btn btn-minier btn-yellow dropdown-toggle"-->
                            <!--                                                                data-toggle="dropdown" data-position="auto">-->
                            <!--                                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>-->
                            <!--                                                        </button>-->

                            <!--                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">-->
                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-info" data-rel="tooltip"-->
                            <!--                                                                   title="View">-->
                            <!--																				<span class="blue">-->
                            <!--																					<i class="ace-icon fa fa-search-plus bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-success" data-rel="tooltip"-->
                            <!--                                                                   title="Edit">-->
                            <!--																				<span class="green">-->
                            <!--																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-error" data-rel="tooltip"-->
                            <!--                                                                   title="Delete">-->
                            <!--																				<span class="red">-->
                            <!--																					<i class="ace-icon fa fa-trash-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->
                            <!--                                                        </ul>-->
                            <!--                                                    </div>-->
                            <!--                                                </div>-->
                            <!--                                            </td>-->
                            <!--                                        </tr>-->
                            <!--                                        <tr>-->
                            <!--                                            <td class="center">-->
                            <!--                                                <label class="pos-rel">-->
                            <!--                                                    <input type="checkbox" class="ace"/>-->
                            <!--                                                    <span class="lbl"></span>-->
                            <!--                                                </label>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <a href="#">hristopher</a>-->
                            <!--                                            </td>-->
                            <!--                                            <td><img src="assets/images/avatars/avatar5.png"></td>-->
                            <!--                                            <td class="hidden-480">Christopher Biden</td>-->
                            <!--                                            <td>Feb 18</td>-->

                            <!--                                            <td class="hidden-480">-->
                            <!--                                                <span class="label label-sm label-success">User Admin</span>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <div class="hidden-sm hidden-xs action-buttons">-->
                            <!--                                                    <a class="blue" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="green" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="red" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>-->
                            <!--                                                    </a>-->
                            <!--                                                </div>-->

                            <!--                                                <div class="hidden-md hidden-lg">-->
                            <!--                                                    <div class="inline pos-rel">-->
                            <!--                                                        <button class="btn btn-minier btn-yellow dropdown-toggle"-->
                            <!--                                                                data-toggle="dropdown" data-position="auto">-->
                            <!--                                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>-->
                            <!--                                                        </button>-->

                            <!--                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">-->
                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-info" data-rel="tooltip"-->
                            <!--                                                                   title="View">-->
                            <!--																				<span class="blue">-->
                            <!--																					<i class="ace-icon fa fa-search-plus bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-success" data-rel="tooltip"-->
                            <!--                                                                   title="Edit">-->
                            <!--																				<span class="green">-->
                            <!--																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-error" data-rel="tooltip"-->
                            <!--                                                                   title="Delete">-->
                            <!--																				<span class="red">-->
                            <!--																					<i class="ace-icon fa fa-trash-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->
                            <!--                                                        </ul>-->
                            <!--                                                    </div>-->
                            <!--                                                </div>-->
                            <!--                                            </td>-->
                            <!--                                        </tr>-->
                            <!--                                        <tr>-->
                            <!--                                            <td class="center">-->
                            <!--                                                <label class="pos-rel">-->
                            <!--                                                    <input type="checkbox" class="ace"/>-->
                            <!--                                                    <span class="lbl"></span>-->
                            <!--                                                </label>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <a href="#">JamesJames</a>-->
                            <!--                                            </td>-->
                            <!--                                            <td><img src="assets/images/avatars/avatar5.png"></td>-->
                            <!--                                            <td class="hidden-480">James Daniel</td>-->
                            <!--                                            <td>Feb 18</td>-->

                            <!--                                            <td class="hidden-480">-->
                            <!--                                                <span class="label label-sm label-success">User Admin</span>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <div class="hidden-sm hidden-xs action-buttons">-->
                            <!--                                                    <a class="blue" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="green" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="red" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>-->
                            <!--                                                    </a>-->
                            <!--                                                </div>-->

                            <!--                                                <div class="hidden-md hidden-lg">-->
                            <!--                                                    <div class="inline pos-rel">-->
                            <!--                                                        <button class="btn btn-minier btn-yellow dropdown-toggle"-->
                            <!--                                                                data-toggle="dropdown" data-position="auto">-->
                            <!--                                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>-->
                            <!--                                                        </button>-->

                            <!--                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">-->
                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-info" data-rel="tooltip"-->
                            <!--                                                                   title="View">-->
                            <!--																				<span class="blue">-->
                            <!--																					<i class="ace-icon fa fa-search-plus bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-success" data-rel="tooltip"-->
                            <!--                                                                   title="Edit">-->
                            <!--																				<span class="green">-->
                            <!--																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-error" data-rel="tooltip"-->
                            <!--                                                                   title="Delete">-->
                            <!--																				<span class="red">-->
                            <!--																					<i class="ace-icon fa fa-trash-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->
                            <!--                                                        </ul>-->
                            <!--                                                    </div>-->
                            <!--                                                </div>-->
                            <!--                                            </td>-->
                            <!--                                        </tr>-->
                            <!--                                        <tr>-->
                            <!--                                            <td class="center">-->
                            <!--                                                <label class="pos-rel">-->
                            <!--                                                    <input type="checkbox" class="ace"/>-->
                            <!--                                                    <span class="lbl"></span>-->
                            <!--                                                </label>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <a href="#">Mark12222</a>-->
                            <!--                                            </td>-->
                            <!--                                            <td><img src="assets/images/avatars/avatar5.png"></td>-->
                            <!--                                            <td class="hidden-480">Mark Zuckerberg</td>-->
                            <!--                                            <td>Feb 18</td>-->

                            <!--                                            <td class="hidden-480">-->
                            <!--                                                <span class="label label-sm label-success">User Admin</span>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <div class="hidden-sm hidden-xs action-buttons">-->
                            <!--                                                    <a class="blue" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="green" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="red" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>-->
                            <!--                                                    </a>-->
                            <!--                                                </div>-->

                            <!--                                                <div class="hidden-md hidden-lg">-->
                            <!--                                                    <div class="inline pos-rel">-->
                            <!--                                                        <button class="btn btn-minier btn-yellow dropdown-toggle"-->
                            <!--                                                                data-toggle="dropdown" data-position="auto">-->
                            <!--                                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>-->
                            <!--                                                        </button>-->

                            <!--                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">-->
                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-info" data-rel="tooltip"-->
                            <!--                                                                   title="View">-->
                            <!--																				<span class="blue">-->
                            <!--																					<i class="ace-icon fa fa-search-plus bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-success" data-rel="tooltip"-->
                            <!--                                                                   title="Edit">-->
                            <!--																				<span class="green">-->
                            <!--																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-error" data-rel="tooltip"-->
                            <!--                                                                   title="Delete">-->
                            <!--																				<span class="red">-->
                            <!--																					<i class="ace-icon fa fa-trash-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->
                            <!--                                                        </ul>-->
                            <!--                                                    </div>-->
                            <!--                                                </div>-->
                            <!--                                            </td>-->
                            <!--                                        </tr>-->
                            <!--                                        <tr>-->
                            <!--                                            <td class="center">-->
                            <!--                                                <label class="pos-rel">-->
                            <!--                                                    <input type="checkbox" class="ace"/>-->
                            <!--                                                    <span class="lbl"></span>-->
                            <!--                                                </label>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <a href="#">Saintsain</a>-->
                            <!--                                            </td>-->
                            <!--                                            <td><img src="assets/images/avatars/avatar5.png"></td>-->
                            <!--                                            <td class="hidden-480">Conan Saint</td>-->
                            <!--                                            <td>Feb 18</td>-->

                            <!--                                            <td class="hidden-480">-->
                            <!--                                                <span class="label label-sm label-success">User Admin</span>-->
                            <!--                                            </td>-->

                            <!--                                            <td>-->
                            <!--                                                <div class="hidden-sm hidden-xs action-buttons">-->
                            <!--                                                    <a class="blue" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="green" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>-->
                            <!--                                                    </a>-->

                            <!--                                                    <a class="red" href="#">-->
                            <!--                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>-->
                            <!--                                                    </a>-->
                            <!--                                                </div>-->

                            <!--                                                <div class="hidden-md hidden-lg">-->
                            <!--                                                    <div class="inline pos-rel">-->
                            <!--                                                        <button class="btn btn-minier btn-yellow dropdown-toggle"-->
                            <!--                                                                data-toggle="dropdown" data-position="auto">-->
                            <!--                                                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>-->
                            <!--                                                        </button>-->

                            <!--                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">-->
                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-info" data-rel="tooltip"-->
                            <!--                                                                   title="View">-->
                            <!--																				<span class="blue">-->
                            <!--																					<i class="ace-icon fa fa-search-plus bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-success" data-rel="tooltip"-->
                            <!--                                                                   title="Edit">-->
                            <!--																				<span class="green">-->
                            <!--																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->

                            <!--                                                            <li>-->
                            <!--                                                                <a href="#" class="tooltip-error" data-rel="tooltip"-->
                            <!--                                                                   title="Delete">-->
                            <!--																				<span class="red">-->
                            <!--																					<i class="ace-icon fa fa-trash-o bigger-120"></i>-->
                            <!--																				</span>-->
                            <!--                                                                </a>-->
                            <!--                                                            </li>-->
                            <!--                                                        </ul>-->
                            <!--                                                    </div>-->
                            <!--                                                </div>-->
                            <!--                                            </td>-->
                            <!--                                        </tr>-->



                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div id="modal-table" class="modal fade" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header no-padding">
                            <div class="table-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <span class="white">&times;</span>
                                </button>
                                List of users who are customers
                            </div>
                        </div>

                        <div class="modal-body no-padding">
                            <table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                <thead>
                                <tr>
                                    <th>Domain</th>
                                    <th>Price</th>
                                    <th>Clicks</th>

                                    <th>
                                        <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                        Update
                                    </th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr>
                                    <td>
                                        <a href="#">ace.com</a>
                                    </td>
                                    <td>$45</td>
                                    <td>3,330</td>
                                    <td>Feb 12</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">base.com</a>
                                    </td>
                                    <td>$35</td>
                                    <td>2,595</td>
                                    <td>Feb 18</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">max.com</a>
                                    </td>
                                    <td>$60</td>
                                    <td>4,400</td>
                                    <td>Mar 11</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">best.com</a>
                                    </td>
                                    <td>$75</td>
                                    <td>6,500</td>
                                    <td>Apr 03</td>
                                </tr>

                                <tr>
                                    <td>
                                        <a href="#">pro.com</a>
                                    </td>
                                    <td>$55</td>
                                    <td>4,250</td>
                                    <td>Jan 21</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="modal-footer no-margin-top">
                            <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
                                <i class="ace-icon fa fa-times"></i>
                                Close
                            </button>

                            <ul class="pagination pull-right no-margin">
                                <li class="prev disabled">
                                    <a href="#">
                                        <i class="ace-icon fa fa-angle-double-left"></i>
                                    </a>
                                </li>

                                <li class="active">
                                    <a href="#">1</a>
                                </li>

                                <li>
                                    <a href="#">2</a>
                                </li>

                                <li>
                                    <a href="#">3</a>
                                </li>

                                <li class="next">
                                    <a href="#">
                                        <i class="ace-icon fa fa-angle-double-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>

            <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->

<script type="text/javascript">
    jQuery(function ($) {
        //initiate dataTables plugin
        var myTable =
            $('#dynamic-table')
                //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                .DataTable({
                    bAutoWidth: false,
                    "aoColumns": [
                        {"bSortable": false},
                        null, null, null, null, null,
                        {"bSortable": false}
                    ],
                    "aaSorting": [],


                    //"bProcessing": true,
                    //"bServerSide": true,
                    //"sAjaxSource": "http://127.0.0.1/table.php"	,

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
            buttons: [
                {
                    "extend": "colvis",
                    "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    columns: ':not(:first):not(:last)'
                },
                {
                    "extend": "copy",
                    "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "csv",
                    "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "excel",
                    "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "pdf",
                    "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "print",
                    "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    autoPrint: false,
                    message: 'This print was produced using the Print button for DataTables'
                }
            ]
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
                if (div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
                else $(this).tooltip({container: 'body', title: $(this).text()});
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
            var th_checked = this.checked;//checkbox inside "TH" table header

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
            var th_checked = this.checked;//checkbox inside "TH" table header

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


        /********************************/
        //add tooltip for small view action buttons in dropdown menu
        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

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
</body>
</html>

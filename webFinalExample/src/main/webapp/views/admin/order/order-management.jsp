<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Quản lí đơn hàng</title>
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
                <li class="active">Order Management</li>
            </ul>
            <!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
                <form class="form-search">
                            <span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
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
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                            <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                            <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                            <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                            <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                            <label class="lbl" for="ace-settings-add-container">
                                Inside
                                <b>.container</b>
                            </label>
                        </div>
                    </div>
                    <!-- /.pull-left -->

                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                            <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                            <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
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
                        Order Management
                    </small>
                </h1>
            </div>
            <!-- /.page-header -->

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
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </th>
                                    <th style="text-align: center;">ID</th>
                                    <th class="detail-col" style="text-align: center;">Details</th>
                                    <th style="text-align: center;">User</th>
                                    <th style="text-align: center;">Order Date</th>
                                    <th class="hidden-480" style="text-align: center;">Quantity</th>

                                    <th style="text-align: center;">
                                        <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i> Total Price
                                    </th>
                                    <th class="hidden-480" style="text-align: center;"> Address</th>

                                    <th></th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td style="text-align: center;">
                                        1
                                    </td>
                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn" title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">Tvtuan</a>
                                    </td>
                                    <td>14/11/2020</td>
                                    <td class="hidden-480">4</td>
                                    <td>1.000.000đ</td>

                                    <td class="hidden-480">
                                        <i class="fa fa-map-marker light-orange bigger-110"></i> Ký túc xá Đại học Quốc gia khu B
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>



                                            <button class="btn btn-xs btn-danger">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-warning">
                                                <i class="ace-icon fa fa-flag bigger-120"></i>
                                            </button>
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline pos-rel">
                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                </button>

                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                        <span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                        <span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg" />
                                                        <br />
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">

                                                                    <span class="white">Tr.V Tuan</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Full Name </div>

                                                            <div class="profile-info-value">
                                                                <span>Tran Van Tuan</span>

                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age </div>

                                                            <div class="profile-info-value">

                                                                <span>20</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row profile-info-product">
                                                            <div class="profile-info-name"> Product </div>

                                                            <div class="profile-info-name"> Quantity </div>

                                                            <div class="profile-info-name"> Size </div>
                                                            <div class="profile-info-name"> Price </div>
                                                            <div class="profile-info-name"> Total Price </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>X</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>L</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>




                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                            <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                                Submit
                                                                <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td style="text-align: center;">
                                        1
                                    </td>
                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn" title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">Taiempro123</a>
                                    </td>
                                    <td>14/11/2020</td>
                                    <td class="hidden-480">4</td>
                                    <td>1.000.000đ</td>

                                    <td class="hidden-480">
                                        <i class="fa fa-map-marker light-orange bigger-110"></i> Đại học Nông Lâm, Linh Trung, Thủ Đức.
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>



                                            <button class="btn btn-xs btn-danger">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-warning">
                                                <i class="ace-icon fa fa-flag bigger-120"></i>
                                            </button>
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline pos-rel">
                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                </button>

                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                        <span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                        <span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg" />
                                                        <br />
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">

                                                                    <span class="white">Tr.T Tai</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Full Name </div>

                                                            <div class="profile-info-value">
                                                                <span>Tran Tan Tai</span>

                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age </div>

                                                            <div class="profile-info-value">

                                                                <span>20</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row profile-info-product">
                                                            <div class="profile-info-name"> Product </div>


                                                            <div class="profile-info-name"> Quantity </div>
                                                            <div class="profile-info-name"> Size </div>
                                                            <div class="profile-info-name"> Price </div>
                                                            <div class="profile-info-name"> Total Price </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>L</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>X</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>




                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                            <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                                Submit
                                                                <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td style="text-align: center;">
                                        1
                                    </td>
                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn" title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">NgoNghia</a>
                                    </td>
                                    <td>14/11/2020</td>
                                    <td class="hidden-480">4</td>
                                    <td>1.000.000đ</td>

                                    <td class="hidden-480">
                                        <i class="fa fa-map-marker light-orange bigger-110"></i> Đại học Kinh kế - Luật, Linh Trung, Thủ Đức
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>



                                            <button class="btn btn-xs btn-danger">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-warning">
                                                <i class="ace-icon fa fa-flag bigger-120"></i>
                                            </button>
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline pos-rel">
                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                </button>

                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                        <span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                        <span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg" />
                                                        <br />
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">

                                                                    <span class="white">Ng.M Nghia</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Full Name </div>

                                                            <div class="profile-info-value">
                                                                <span>Ngo Minh Nghia</span>

                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age </div>

                                                            <div class="profile-info-value">

                                                                <span>20</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row profile-info-product">
                                                            <div class="profile-info-name"> Product </div>


                                                            <div class="profile-info-name"> Quantity </div>
                                                            <div class="profile-info-name"> Size </div>
                                                            <div class="profile-info-name"> Price </div>
                                                            <div class="profile-info-name"> Total Price </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>XL</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>XL</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>




                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                            <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                                Submit
                                                                <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td style="text-align: center;">
                                        1
                                    </td>
                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn" title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">Tvtuan</a>
                                    </td>
                                    <td>14/11/2020</td>
                                    <td class="hidden-480">4</td>
                                    <td>1.000.000đ</td>

                                    <td class="hidden-480">
                                        <i class="fa fa-map-marker light-orange bigger-110"></i> Thôn 12 xã Eapal, Eakar, Daklak
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>


                                            <button class="btn btn-xs btn-danger">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-warning">
                                                <i class="ace-icon fa fa-flag bigger-120"></i>
                                            </button>
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline pos-rel">
                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                </button>

                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                        <span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                        <span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg" />
                                                        <br />
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">

                                                                    <span class="white">Tr.V Tuan</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Full Name </div>

                                                            <div class="profile-info-value">
                                                                <span>Tran Van Tuan</span>

                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age </div>

                                                            <div class="profile-info-value">

                                                                <span>20</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row profile-info-product">
                                                            <div class="profile-info-name"> Product </div>


                                                            <div class="profile-info-name"> Quantity </div>
                                                            <div class="profile-info-name"> Size </div>
                                                            <div class="profile-info-name"> Price </div>
                                                            <div class="profile-info-name"> Total Price </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>XL</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>M</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>




                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                            <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                                Submit
                                                                <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td style="text-align: center;">
                                        1
                                    </td>
                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn" title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">Tvtuan</a>
                                    </td>
                                    <td>14/11/2020</td>
                                    <td class="hidden-480">4</td>
                                    <td>1.000.000đ</td>

                                    <td class="hidden-480">
                                        <i class="fa fa-map-marker light-orange bigger-110"></i> Ký túc xá khu B Đại học Quốc gia
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>



                                            <button class="btn btn-xs btn-danger">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-warning">
                                                <i class="ace-icon fa fa-flag bigger-120"></i>
                                            </button>
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline pos-rel">
                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                </button>

                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                        <span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                        <span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg" />
                                                        <br />
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">

                                                                    <span class="white">Tr.V Tuan</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Full Name </div>

                                                            <div class="profile-info-value">
                                                                <span>Tran Van Tuan</span>

                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age </div>

                                                            <div class="profile-info-value">

                                                                <span>20</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row profile-info-product">
                                                            <div class="profile-info-name"> Product </div>


                                                            <div class="profile-info-name"> Quantity </div>
                                                            <div class="profile-info-name"> Size </div>
                                                            <div class="profile-info-name"> Price </div>
                                                            <div class="profile-info-name"> Total Price </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>XL</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>XL</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>




                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                            <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                                Submit
                                                                <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="center">
                                        <label class="pos-rel">
                                            <input type="checkbox" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td style="text-align: center;">
                                        1
                                    </td>
                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn" title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">Tvtuan</a>
                                    </td>
                                    <td>14/11/2020</td>
                                    <td class="hidden-480">4</td>
                                    <td>1.000.000đ</td>

                                    <td class="hidden-480">
                                        <i class="fa fa-map-marker light-orange bigger-110"></i> Ký túc xá khu A Đại học Quốc gia
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>


                                            <button class="btn btn-xs btn-danger">
                                                <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-warning">
                                                <i class="ace-icon fa fa-flag bigger-120"></i>
                                            </button>
                                        </div>

                                        <div class="hidden-md hidden-lg">
                                            <div class="inline pos-rel">
                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                </button>

                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                    <li>
                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                        <span class="blue">
																				<i class="ace-icon fa fa-search-plus bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                        <span class="green">
																				<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																			</span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom" alt="Domain Owner's Avatar" src="assets/images/avatars/profile-pic.jpg" />
                                                        <br />
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">

                                                                    <span class="white">Tr.V Tuan</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Full Name </div>

                                                            <div class="profile-info-value">
                                                                <span>Tran Van Tuan</span>

                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age </div>

                                                            <div class="profile-info-value">

                                                                <span>20</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row profile-info-product">
                                                            <div class="profile-info-name"> Product </div>


                                                            <div class="profile-info-name"> Quantity </div>
                                                            <div class="profile-info-name"> Size </div>
                                                            <div class="profile-info-name"> Price </div>
                                                            <div class="profile-info-name"> Total Price </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>XL</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-value">
                                                                <span>Tmart Baby Dress</span>
                                                            </div>

                                                            <div class="profile-info-value value">
                                                                <span>2</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>S</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>250.000đ</span>
                                                            </div>
                                                            <div class="profile-info-value value">
                                                                <span>500.000đ</span>
                                                            </div>
                                                        </div>




                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                            <textarea class="width-100" resize="none" placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace" />
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                                                Submit
                                                                <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                                            </button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.span -->
                    </div>
                    <!-- /.row -->




                    <div class="row" style="display: none">
                        <div disabled="true" class="col-xs-12">
                            <h3 class="header smaller lighter blue">jQuery dataTables</h3>

                            <div class="clearfix">
                                <div class="pull-right tableTools-container"></div>
                            </div>
                            <div class="table-header">
                                Results for "Latest Registered Domains"
                            </div>

                            <!-- div.table-responsive -->

                            <!-- div.dataTables_borderWrap -->
                            <div>
                                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="pos-rel">
                                                <input type="checkbox" class="ace" />
                                                <span class="lbl"></span>
                                            </label>
                                        </th>
                                        <th>Domain</th>
                                        <th>Price</th>
                                        <th class="hidden-480">Clicks</th>
                                        <th>
                                            <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i> Update
                                        </th>
                                        <th class="hidden-480">Status</th>
                                        <th></th>
                                    </tr>
                                    </thead>
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
                                        </button> Results for "Latest Registered Domains
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
                                                <i class="ace-icon fa fa-clock-o bigger-110"></i> Update
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
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>

                    <!-- PAGE CONTENT ENDS -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.page-content -->
    </div>
</div>

</body>
</html>

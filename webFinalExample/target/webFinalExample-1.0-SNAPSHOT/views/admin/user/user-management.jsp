<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Quản lí người dùng</title>
</head>
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
                <li class="active">User Management</li>
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
                        User Admin
                    </small>
                </h1>
            </div><!-- /.page-header -->

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
                                    <th class="detail-col">Details</th>
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

                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn"
                                               title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">ngonghia1909</a>
                                    </td>
                                    <td><img src="assets/images/avatars/avatar4.png"></td>
                                    <td class="hidden-480">Ngô Minh Nghĩa</td>
                                    <td>Feb 12</td>

                                    <td class="hidden-480">
                                        <span class="label label-sm label-inverse arrowed-in">Administrator</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-info">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
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
                                                <button class="btn btn-minier btn-primary dropdown-toggle"
                                                        data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom"
                                                             alt="Domain Owner's Avatar"
                                                             src="assets/images/avatars/profile-pic.jpg"/>
                                                        <br/>
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">
                                                                    <i class="ace-icon fa fa-circle light-green"></i>
                                                                    &nbsp;
                                                                    <span class="white">Ngô Minh Nghĩa </span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Username</div>

                                                            <div class="profile-info-value">
                                                                <span>ngonghia1909</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location</div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands, Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age</div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Joined</div>

                                                            <div class="profile-info-value">
                                                                <span>2010/06/20</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Last Online</div>

                                                            <div class="profile-info-value">
                                                                <span>3 hours ago</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Email Address:</div>

                                                            <div class="profile-info-value">
                                                                <span>Nghiango1909@gmail.com</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to
                                                        Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                                <textarea class="width-100" resize="none"
                                                                          placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round"
                                                                    type="button">
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
                                            <input type="checkbox" class="ace"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn"
                                               title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">taiempro123</a>
                                    </td>
                                    <td><img src="assets/images/avatars/avatar5.png"></td>
                                    <td class="hidden-480">Trần Tấn Tài</td>
                                    <td>Feb 18</td>

                                    <td class="hidden-480">
                                        <span class="label label-sm label-inverse arrowed-in">	Administrator</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-info">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
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
                                                <button class="btn btn-minier btn-primary dropdown-toggle"
                                                        data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom"
                                                             alt="Domain Owner's Avatar"
                                                             src="assets/images/avatars/profile-pic.jpg"/>
                                                        <br/>
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">
                                                                    <i class="ace-icon fa fa-circle light-green"></i>
                                                                    &nbsp;
                                                                    <span class="white">Trần Tấn Tài</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Username</div>

                                                            <div class="profile-info-value">
                                                                <span>taiempro123</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location</div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands, Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age</div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Joined</div>

                                                            <div class="profile-info-value">
                                                                <span>2010/06/20</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Last Online</div>

                                                            <div class="profile-info-value">
                                                                <span>3 hours ago</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Email Address:</div>

                                                            <div class="profile-info-value">
                                                                <span>taiempro123@gmail.com</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to
                                                        Tai</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                                <textarea class="width-100" resize="none"
                                                                          placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round"
                                                                    type="button">
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
                                            <input type="checkbox" class="ace"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn"
                                               title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">tuantv</a>
                                    </td>
                                    <td><img src="assets/images/avatars/avatar3.png"></td>
                                    <td class="hidden-480">Trần Văn Tuấn</td>
                                    <td>Mar 11</td>

                                    <td class="hidden-480">
                                        <span class="label label-sm label-inverse arrowed-in">Administrator</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-info">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
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
                                                <button class="btn btn-minier btn-primary dropdown-toggle"
                                                        data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom"
                                                             alt="Domain Owner's Avatar"
                                                             src="assets/images/avatars/avatar3.png"/>
                                                        <br/>
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">
                                                                    <i class="ace-icon fa fa-circle light-green"></i>
                                                                    &nbsp;
                                                                    <span class="white">Trần Văn Tuấn</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Username</div>

                                                            <div class="profile-info-value">
                                                                <span>tuantv</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location</div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands, Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age</div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Joined</div>

                                                            <div class="profile-info-value">
                                                                <span>2010/06/20</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Last Online</div>

                                                            <div class="profile-info-value">
                                                                <span>3 hours ago</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Email Address</div>

                                                            <div class="profile-info-value">
                                                                <span>TvTuan11@gmail.com</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to
                                                        Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                                <textarea class="width-100" resize="none"
                                                                          placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round"
                                                                    type="button">
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
                                            <input type="checkbox" class="ace"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn"
                                               title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">alexbdf</a>
                                    </td>
                                    <td><img src="assets/images/avatars/avatar3.png"></td>
                                    <td class="hidden-480">Tabslad Jonre</td>
                                    <td>Mar 11</td>

                                    <td class="hidden-480">
                                        <span class="label label-sm label-success">User Admin</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-info">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
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
                                                <button class="btn btn-minier btn-primary dropdown-toggle"
                                                        data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom"
                                                             alt="Domain Owner's Avatar"
                                                             src="assets/images/avatars/profile-pic.jpg"/>
                                                        <br/>
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">
                                                                    <i class="ace-icon fa fa-circle light-green"></i>
                                                                    &nbsp;
                                                                    <span class="white">Trần Văn </span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Username</div>

                                                            <div class="profile-info-value">
                                                                <span>aaaa1111</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location</div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands, Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age</div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Joined</div>

                                                            <div class="profile-info-value">
                                                                <span>2010/06/20</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Last Online</div>

                                                            <div class="profile-info-value">
                                                                <span>3 hours ago</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Email Address</div>

                                                            <div class="profile-info-value">
                                                                <span>Aaaaaaa@gmai.com</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to
                                                        Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                                <textarea class="width-100" resize="none"
                                                                          placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round"
                                                                    type="button">
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
                                            <input type="checkbox" class="ace"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn"
                                               title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">bbbb122311aa</a>
                                    </td>
                                    <td><img src="assets/images/avatars/avatar3.png"></td>
                                    <td class="hidden-480">Amanda</td>
                                    <td>Mar 11</td>

                                    <td class="hidden-480">
                                        <span class="label label-sm label-success">User Admin</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-info">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
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
                                                <button class="btn btn-minier btn-primary dropdown-toggle"
                                                        data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom"
                                                             alt="Domain Owner's Avatar"
                                                             src="assets/images/avatars/profile-pic.jpg"/>
                                                        <br/>
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">
                                                                    <i class="ace-icon fa fa-circle light-green"></i>
                                                                    &nbsp;
                                                                    <span class="white">Amanda</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Username</div>

                                                            <div class="profile-info-value">
                                                                <span>bbbb122311aa</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location</div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands, Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age</div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Joined</div>

                                                            <div class="profile-info-value">
                                                                <span>2010/06/20</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Last Online</div>

                                                            <div class="profile-info-value">
                                                                <span>3 hours ago</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Email Address</div>

                                                            <div class="profile-info-value">
                                                                <span>bb@mail.com</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to
                                                        Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                                <textarea class="width-100" resize="none"
                                                                          placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round"
                                                                    type="button">
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
                                            <input type="checkbox" class="ace"/>
                                            <span class="lbl"></span>
                                        </label>
                                    </td>

                                    <td class="center">
                                        <div class="action-buttons">
                                            <a href="#" class="green bigger-140 show-details-btn"
                                               title="Show Details">
                                                <i class="ace-icon fa fa-angle-double-down"></i>
                                                <span class="sr-only">Details</span>
                                            </a>
                                        </div>
                                    </td>

                                    <td>
                                        <a href="#">hnefaa11</a>
                                    </td>
                                    <td><img src="assets/images/avatars/avatar3.png"></td>
                                    <td class="hidden-480">Helen Helen</td>
                                    <td>Mar 11</td>

                                    <td class="hidden-480">
                                        <span class="label label-sm label-success">User Admin</span>
                                    </td>

                                    <td>
                                        <div class="hidden-sm hidden-xs btn-group">
                                            <button class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-check bigger-120"></i>
                                            </button>

                                            <button class="btn btn-xs btn-info">
                                                <i class="ace-icon fa fa-pencil bigger-120"></i>
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
                                                <button class="btn btn-minier btn-primary dropdown-toggle"
                                                        data-toggle="dropdown" data-position="auto">
                                                    <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
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

                                <tr class="detail-row">
                                    <td colspan="8">
                                        <div class="table-detail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-2">
                                                    <div class="text-center">
                                                        <img height="150" class="thumbnail inline no-margin-bottom"
                                                             alt="Domain Owner's Avatar"
                                                             src="assets/images/avatars/profile-pic.jpg"/>
                                                        <br/>
                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <a class="user-title-label" href="#">
                                                                    <i class="ace-icon fa fa-circle light-green"></i>
                                                                    &nbsp;
                                                                    <span class="white">Helen Helen</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-7">
                                                    <div class="space visible-xs"></div>

                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Username</div>

                                                            <div class="profile-info-value">
                                                                <span>hnefaa11</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location</div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands, Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age</div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Joined</div>

                                                            <div class="profile-info-value">
                                                                <span>2010/06/20</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Last Online</div>

                                                            <div class="profile-info-value">
                                                                <span>3 hours ago</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> About Me</div>

                                                            <div class="profile-info-value">
                                                                <span>Bio</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-3">
                                                    <div class="space visible-xs"></div>
                                                    <h4 class="header blue lighter less-margin">Send a message to
                                                        Alex</h4>

                                                    <div class="space-6"></div>

                                                    <form>
                                                        <fieldset>
                                                                <textarea class="width-100" resize="none"
                                                                          placeholder="Type something…"></textarea>
                                                        </fieldset>

                                                        <div class="hr hr-dotted"></div>

                                                        <div class="clearfix">
                                                            <label class="pull-left">
                                                                <input type="checkbox" class="ace"/>
                                                                <span class="lbl"> Email me a copy</span>
                                                            </label>

                                                            <button class="pull-right btn btn-sm btn-primary btn-white btn-round"
                                                                    type="button">
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
                        </div><!-- /.span -->
                    </div><!-- /.row -->

                    <div class="hr hr-18 dotted hr-double"></div>


                    <div class="hr hr-18 dotted hr-double"></div>

                    <div class="row">
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
    </div>
</div><!-- /.main-content -->
</html>

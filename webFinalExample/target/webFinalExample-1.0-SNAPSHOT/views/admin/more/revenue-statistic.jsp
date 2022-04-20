<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Quản lí doanh thu</title>
    <style>
        #datechoose{
            margin-left: 0px;
        }
        #datepicker{
            width:180px;
            margin: 0 20px 20px 20px;
        }
        #datepicker > span:hover{
            color: #000;
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
                <li class="active">Revenue Statistic</li>
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
                        Revenue Statistic
                    </small>
                </h1>
            </div>
            <!-- /.page-header -->
            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="clearfix">
                                <div class="pull-right tableTools-container"></div>
                            </div>
                            <!-- div.table-responsive -->
                            <!-- div.dataTables_borderWrap -->
                            <div id="datechoose">
                                <label id="choose-lable">Chọn ngày: </label>
                                <div id="datepicker" class="input-group date" data-date-format="dd-mm-yyyy"> <input class="form-control" readonly="" type="text"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                </div>
                                </span>
                            </div>
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
                                        <th>ID</th>
                                        <th>Price Total</th>
                                        <th class="hidden-480">Quantity</th>
                                        <th>
                                            <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                            Order date
                                        </th>
                                        <th class="hidden-480">Status</th>
                                        <th class="hidden-480"></th>
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
                                        <td>
                                            <a href="#">12345</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Feb 12</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">12345</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">2</td>
                                        <td>Feb 18</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">4</td>
                                        <td>Mar 11</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">6</td>
                                        <td>Apr 03</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">4</td>
                                        <td>Jan 21</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Feb 09</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">8</td>
                                        <td>Feb 22</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">4</td>
                                        <td>Mar 12</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Feb 12</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">2</td>
                                        <td>Apr 01</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>500.000đ</td>
                                        <td class="hidden-480">6</td>
                                        <td>Feb 02</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">g123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">6</td>
                                        <td>Feb 24</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">s123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">2</td>
                                        <td>Apr 01</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>420.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Feb 01</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">a123456</a>
                                        </td>
                                        <td>350.00đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Mar 12</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">s123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Feb 11</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Mar 26</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Feb 15</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">5</td>
                                        <td>Jan 29</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">l123456</a>
                                        </td>
                                        <td>400.000đ</td>
                                        <td class="hidden-480">3</td>
                                        <td>Feb 17</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">s123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">6</td>
                                        <td>Feb 19</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">4</td>
                                        <td>Apr 01</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-warning">delivering</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
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
                                        <td>
                                            <a href="#">123456</a>
                                        </td>
                                        <td>100.000đ</td>
                                        <td class="hidden-480">1</td>
                                        <td>Apr 04</td>
                                        <td class="hidden-480">
                                            <span class="label label-sm label-success">delivered</span>
                                        </td>
                                        <td>
                                            <div class="hidden-sm hidden-xs action-buttons">
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                    <thead>
                                    <tr>
                                        <th class="center">
                                            <label class="pos-rel">
                                            </label>
                                        </th>
                                        <th>Revenue Total</th>
                                        <th>1 tỷ</th>
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
                                        </button>
                                        Results for "Latest Registered Domains
                                    </div>
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
            </div>
            <!-- /.row -->
        </div>
        <!-- /.page-content -->
    </div>
</div>

<!-- inline scripts related to this page -->

</body>
</html>

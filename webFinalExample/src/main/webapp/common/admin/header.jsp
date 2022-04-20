<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="navbar" class="navbar navbar-default          ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <a href="<c:url value="/admin-home"/>" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    TNT Admin
                </small>
            </a>
        </div>
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="purple dropdown-modal">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                        <span class="badge badge-important">8</span>
                    </a>
                    <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-exclamation-triangle"></i> 8 Thông báo mới
                        </li>
                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                                <span class="pull-left">
                                                    <i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
                                                   Bình luận mới
                                                </span>
                                            <span class="pull-right badge badge-info">+12</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="btn btn-xs btn-primary fa fa-user"></i> Sản phẩm chất lượng ...
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                                <span class="pull-left">
                                                    <i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
                                                  Đơn hàng mới
                                                </span>
                                            <span class="pull-right badge badge-success">+8</span>
                                        </div>
                                    </a>
                                </li>

                            </ul>
                        </li>
                        <li class="dropdown-footer">
                            <a href="#">
                                Xem thêm
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="green dropdown-modal">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                        <span class="badge badge-success">5</span>
                    </a>
                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-envelope-o"></i> 5 Tin nhắn mới
                        </li>
                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="<c:url value="/template/admin/assets/images/avatars/avatar.png"/>" class="msg-photo" alt="Alex's Avatar" />
                                        <span class="msg-body">
                                                <span class="msg-title">
                                                    <span class="blue">Alex:</span> Sản phẩm thật phù hợp với...
                                                </span>
                                                <span class="msg-time">
                                                    <i class="ace-icon fa fa-clock-o"></i>
                                                    <span>vừa xong</span>
                                                </span>
                                            </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="<c:url value="/template/admin/assets/images/avatars/avatar.png"/>" class="msg-photo" alt="Susan's Avatar" />
                                        <span class="msg-body">
                                                <span class="msg-title">
                                                    <span class="blue">Susan:</span> Rất thích sản phẩm của shop. Tôi...
                                                </span>
                                                <span class="msg-time">
                                                    <i class="ace-icon fa fa-clock-o"></i>
                                                    <span>20 phút trước</span>
                                                </span>
                                            </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="<c:url value="/template/admin/assets/images/avatars/avatar.png"/>" class="msg-photo" alt="Bob's Avatar" />
                                        <span class="msg-body">
                                                <span class="msg-title">
                                                    <span class="blue">Bob:</span> Shop giao hàng rất nhanh ...
                                                </span>
                                                <span class="msg-time">
                                                    <i class="ace-icon fa fa-clock-o"></i>
                                                    <span>3:15 pm</span>
                                                </span>
                                            </span>
                                    </a>
                                </li>


                            </ul>
                        </li>
                        <li class="dropdown-footer">
                            <a href="/views/admin/inbox.jsp">
                               Xem thêm tin nhắn
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="light-blue dropdown-modal">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="<c:url value="${USERMODEL.image}"/>" alt="Anhr của ${USERMODEL.fullName} " />
                        <span class="user-info">
                                <small>Chào mừng,</small>
                                ${USERMODEL.fullName}
                            </span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">

                        <li>
                            <a href="<c:url value="/trang-chu"/>">
                                <i class="ace-icon fa fa-user"></i> Quay lại trang web bán hàng
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="<c:url value="/thoat?action=logout"/>">
                                <i class="ace-icon fa fa-power-off"></i> Đăng xuất
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- /.navbar-container -->
</div>

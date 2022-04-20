<%@include file="/common/taglib.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Quản lí tài khoản</title>
</head>

<body>
<div class="main-content">
    <form action="<c:url value='/admin-user'/>" id="formSubmit" method="get">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Trang chủ</a>
                    </li>
                </ul>
                <!-- /.breadcrumb -->
            </div>
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <c:if test="${not empty messageResponse}">
                            <div class="alert alert-${alert}">
                                    ${messageResponse}
                            </div>
                        </c:if>
                        <div class="widget-box table-filter">
                            <div class="table-btn-controls">
                                <div class="pull-right tableTools-container">
                                    <div class="dt-buttons btn-overlap btn-group">
                                        <a flag="info"
                                           class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle="tooltip"
                                           title='Thêm bài viết' href='<c:url value="/admin-user?type=edit"/>'>
															<span>
																<i class="fa fa-plus-circle bigger-110 purple"></i>
															</span>
                                        </a>
                                        <button id="btnDelete" type="button"
                                                class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa bài viết'>
																<span>
																	<i class="fa fa-trash-o bigger-110 pink"></i>
																</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="table-responsive">
                                    <table id="dynamic-table-user" class="table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th><input type="checkbox" id="checkAll"></th>
                                            <th>Tên đăng nhập</th>
                                            <th>Họ và tên</th>
                                            <th>Ảnh đại diện</th>
                                            <th>Email</th>
                                            <th>Số điện thoại</th>
                                            <th>Ngày sinh</th>
                                            <th>Địa chỉ</th>
                                            <th>Loại tài khoản</th>
                                            <th>Ngày tạo</th>
                                            <th>Thao tác</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="item" items="${USER.listResult}">
                                            <tr>
                                                <td><input type="checkbox" id="checkbox_${item.id}" value="${item.id}"></td>
                                                <td>${item.userName}</td>
                                                <td>${item.fullName}</td>
                                                <td><img height="50" width="50" src="<c:url value="${item.image}"/> " alt="${item.fullName}"></td>

                                                <td>${item.email}</td>
                                                <td>${item.phone}</td>
                                                <td>${item.birthday}</td>
                                                <td>${item.address}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${item.roleId==1}">ADMIN</c:when>
                                                        <c:when test="${item.roleId==2}">USER</c:when>
                                                    </c:choose>
                                                </td>
                                                <td>${item.createdDate}</td>
                                                <td>
                                                    <c:url var="editURL" value="/admin-user">
                                                        <c:param name="type" value="edit"/>
                                                        <c:param name="id" value="${item.id}"/>
                                                    </c:url>
                                                    <c:if test="${item.roleId==1}">
                                                    <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                                       title="Cập nhật tài khoản" href='${editURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                                    </a>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- /.main-content -->


</body>

</html>
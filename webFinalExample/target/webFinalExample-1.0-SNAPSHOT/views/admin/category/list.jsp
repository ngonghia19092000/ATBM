<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Quản lí sản phẩm</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>

                <li>
                    <a href="#">Quản lý</a>
                </li>
                <li class="active">Thể loại</li>
            </ul><!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
                <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                </form>
            </div><!-- /.nav-search -->
        </div>

        <div class="page-content">



            </div><!-- /.ace-settings-container -->

            <div class="page-header">
                <h1>
                    Quản lí thể loại sản phẩm
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        Danh sách
                    </small>
                </h1>
            </div><!-- /.page-header -->

            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->

                    <table id="dynamic-table-category" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace"/>
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>ID</th>
                            <th>Thể loại</th>
                            <th>Mã thể loại</th>
                            <th>Giới tính</th>
                            <th>Ngày tạo</th>
                            <th>Người tạo</th>
                            <th>Ngày sửa</th>
                            <th>Người sửa</th>
<td>Thao tác</td>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="item" items="${CATEGORY.listResult}">
                            <tr>
                                <td class="center">
                                    <label class="pos-rel">
                                        <input type="checkbox" class="ace"/>
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td>
                                        ${item.id}
                                </td>
                                <td>
                                        ${item.name}
                                </td>
<%--                                <td><img height="30px" width="30px" src="<c:url value="${item.thumnail}"></c:url> "></td>--%>
                                <td>${item.code}</td>

                                <td>
                                    <c:choose>
                                        <c:when test="${item.gender== 1}">Bé trai</c:when>
                                        <c:when test="${item.gender== 2}"> Bé gái</c:when>


                                    </c:choose>
                                </td>
                                <td>${item.createdDate}</td>
                                <td>${item.createdBy}</td>
                                <td>${item.modifiedDate}</td>


                                <td>${item.modifiedBy}</td>

                                <td>
                                    <c:url var="editURL" value="/admin-category">
                                        <c:param name="type" value="edit"/>
                                        <c:param name="id" value="${item.id}"/>
                                    </c:url>
                                    <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                                       title="Cập nhật thông tin" href='${editURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                    </a>
                                </td>

                            </tr>
                        </c:forEach>
                        </tbody>
                        <div class="widget-box table-filter">
                            <div class="table-btn-controls">
                                <div class="pull-right tableTools-container">
                                    <div class="dt-buttons btn-overlap btn-group">
                                        <a flag="info"
                                           class="dt-button buttons-colvis btn btn-white btn-primary btn-bold" data-toggle="tooltip"
                                           title='Thêm người dùng' href='<c:url value="/admin-category?type=edit"/>'>
															<span>
																<i class="fa fa-plus-circle bigger-110 purple"></i>
															</span>
                                        </a>
                                        <button id="btnDeleteCate" type="button"
                                                class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa thể loại'>
																<span>
																	<i class="fa fa-trash-o bigger-110 pink"></i>
																</span>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <%-- //Them xoa sua user--%>

                    </table>



                    <!-- PAGE CONTENT ENDS -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

</body>
</html>

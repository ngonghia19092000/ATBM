<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="URLapi" value="/api-admin-user"/>
<c:url var ="URL" value="/admin-user"/>
<html>
<head>
    <title></title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
            </script>
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <c:if test="${empty USER.id}">
                    <li class="active">Thêm tài khoản</li>
                </c:if>
                <c:if test="${not empty USER.id}">
                    <li class="active">Chỉnh sửa thông tin</li>
                </c:if>

            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <c:if test="${not empty messageResponse}">
                        <div class="alert alert-${alert}">
                                <%-- ${messageResponse} --%>
                            Thêm thành công
                        </div>
                    </c:if>
                    <form id="formSubmit">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Loại người dùng</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="roleId" name="roleId">
                                    <c:if test="${empty USER.roleId}">
                                        <option value="">Chọn loại người dùng</option>
                                        <c:forEach var="item" items="${ROLE}">
                                            <option value="${item.id}">${item.name}</option>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty USER.roleId}">
                                        <option value="">Chọn lại người dùng</option>
                                        <c:forEach var="item" items="${ROLE}">
                                            <option value="${item.id}" <c:if test="${item.id == USER.roleId}">selected="selected"</c:if>>
                                                    ${item.name}
                                            </option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Tên đăng nhập</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="userName" name="userName" value="${USER.userName}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Họ và tên</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="fullName" name="fullName" value="${USER.fullName}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Ảnh đại diện</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="image" name="image" value="${USER.image}"/>
                            </div>
                        </div>
                        <br/>

                        <br/>
                       <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right">Email</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="email" name="email" value="${USER.email}"/>
                        </div>
                       </div>
                <br/>

                <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Mật khẩu</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="password" name="password" value="${USER.password}"/>
                            </div>
                        </div>
                        <br/>

                        <br/>
                        <div class="form-group">
                            <c:if test="${not empty USER.id}">
                            <label class="col-sm-3 control-label no-padding-right">Trạng thái</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="statusUser" name="statusUser"
                                       value="${USER.status}" />
                            </div>
                            </c:if>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <div style="margin: 0 auto">
                                <c:if test="${not empty USER.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật thông tin" id="btnAddOrUpdateUser"/>
                                </c:if>
                                <c:if test="${empty USER.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm tài khoản" id="btnAddOrUpdateUser"/>
                                </c:if>
                                <c:if test="${empty USER.id}">
                                    <a href="<c:url value="/admin-user?type=list"/> ">
                                        <input type="button" class="btn btn-white btn-primary btn-bold" value="Trở lại" id="btnBack"/>
                                    </a>
                                </c:if>
                            </div>
                        </div>


                        <input type="hidden" value="${USER.id}" id="id" name="id"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>

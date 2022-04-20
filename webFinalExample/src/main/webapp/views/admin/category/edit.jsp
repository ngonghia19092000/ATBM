<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

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
                <c:if test="${empty CATEGORY.id}">
                    <li class="active">Thêm thể loại</li>
                </c:if>
                <c:if test="${not empty CATEGORY.id}">
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
                            <label class="col-sm-3 control-label no-padding-right">GiỚI Tính</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="genderid" name="genderid">
                                    <c:if test="${empty CATEGORY.genderid}">
                                        <option value="">Chọn GiỚI Tính</option>
                                        <c:forEach var="item" items="${GENDER}">
                                            <option value="${item.id}">${item.name}</option>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty CATEGORY.genderid}">
                                        <option value="">Giới tính</option>
                                        <c:forEach var="item" items="${GENDER}">
                                            <option value="${item.id}" <c:if test="${CATEGORY.gender == item.id }">selected="selected"</c:if>>
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
                            <label class="col-sm-3 control-label no-padding-right">Mã thể loại</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="code" name="code" value="${CATEGORY.code}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Tên thể loại</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="name" name="name" value="${CATEGORY.name}"/>
                            </div>
                        </div>

                        <br/>
                        <br/>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <c:if test="${not empty CATEGORY.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật thể loại" id="btnAddOrUpdateCate"/>
                                </c:if>
                                <c:if test="${empty CATEGORY.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm thể loại" id="btnAddOrUpdateCate"/>
                                </c:if>
                                <a href="<c:url value="/admin-category?type=list"/> ">
                                    <input type="button" class="btn btn-white btn-primary btn-bold" value="Trở lại" id="btnBack"/>
                                </a>
                            </div>
                        </div>
                        <input type="hidden" value="${CATEGORY.id}" id="id" name="id"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>




</body>

</html>

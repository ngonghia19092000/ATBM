<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<html>
<head>
    <title>Quản lí banner khuyến mãi</title>
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
                <c:if test="${empty BANNER.id}">
                    <li class="active">Thêm banner khuyến mãi</li>
                </c:if>
                <c:if test="${not empty BANNER.id}">
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
                            <label class="col-sm-3 control-label no-padding-right">Tên banner</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="name" name="name" value="${BANNER.name}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Ảnh banner</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="image" name="image" value="${BANNER.image}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Nội dung khuyến mãi</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="describe" name="describe" value="${BANNER.describe}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Trạng thái </label>
                            <div class="col-sm-9">
                                <select class="form-control" id="status" name="status">
                                    <c:if test="${empty BANNER.status}">
                                        <option value="">Chọn trạng thái</option>

                                            <option value="${1}">HOẠT ĐỘNG</option>
                                            <option value="${0}">NGỪNG HOẠT ĐỘNG</option>

                                    </c:if>
                                    <c:if test="${not empty BANNER.status}">
                                        <option value="">Chọn trạng thái</option>

                                            <option value="${1}" <c:if test="${BANNER.status ==1}">selected="selected"</c:if>>
                                                   HOẠT ĐỘNG
                                            </option>
                                        <option value="${0}" <c:if test="${BANNER.status ==0}">selected="selected"</c:if>>
                                                 NGỪNG  HOẠT ĐỘNG
                                            </option>

                                    </c:if>
                                </select>
                            </div>
                        </div>
                        <br/>
                        <br/>

                        <div class="form-group">
                            <div style="margin: 0 auto">
                                <c:if test="${not empty BANNER.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật thông tin" id="btnAddOrUpdateBanner"/>
                                </c:if>
                                <c:if test="${empty BANNER.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm  " id="btnAddOrUpdateBanner"/>
                                </c:if>
                                <c:if test="${empty BANNER.id}">
                                    <a href="<c:url value="/admin-banner?type=list"/> ">
                                        <input type="button" class="btn btn-white btn-primary btn-bold" value="Trở lại" id="btnBack"/>
                                    </a>
                                </c:if>
                            </div>
                        </div>


                        <input type="hidden" value="${BANNER.id}" id="id" name="id"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>

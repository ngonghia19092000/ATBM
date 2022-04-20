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
                <c:if test="${empty COUPON.id}">
                    <li class="active">Thêm mã giảm giá</li>
                </c:if>
                <c:if test="${not empty COUPON.id}">
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
                            <label class="col-sm-3 control-label no-padding-right">Sản phẩm </label>
                            <div class="col-sm-9">
                                <select class="form-control" id="productId" name="productId">
                                    <c:if test="${empty COUPON.productId}">
                                        <option value="">Chọn loại người dùng</option>
                                        <c:forEach var="item" items="${PRODUCT}">
                                            <option value="${item.id}">${item.name}</option>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty COUPON.productId}">
                                        <option value="">Chọn lại người dùng</option>
                                        <c:forEach var="item" items="${PRODUCT}">
                                            <option value="${item.id}" <c:if test="${item.id == COUPON.productId}">selected="selected"</c:if>>
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
                            <label class="col-sm-3 control-label no-padding-right">Tên đợt khuyến mãi</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="name" name="name" value="${COUPON.name}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Mã giảm giá</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="code" name="code" value="${COUPON.code}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Từ ngày</label>
                            <div class="col-sm-9">
                                <input type="date" class="form-control" id="fromDate" name="fromDate" value="${COUPON.fromDate}"/>
                            </div>
                        </div>
                        <br/>

                        <br/>
                       <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right">Email</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" id="toDate" name="toDate" value="${COUPON.toDate}"/>
                        </div>
                       </div>
                <br/>

                <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Số lượng mã</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="password" name="quantity" value="${COUPON.quantity}"/>
                            </div>
                        </div>
                        <br/>

                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Số lượng mã</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="remain" name="remain" value="${COUPON.remain}"/>
                            </div>
                        </div>
                        <br/>

                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Khuyến mãi</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="promotion" name="promotion" value="${COUPON.promotion}"/>
                            </div>
                        </div>
                        <br/>


                        <div class="form-group">
                            <div style="margin: 0 auto">
                                <c:if test="${not empty COUPON.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật thông tin" id="btnAddOrUpdateCoupon"/>
                                </c:if>
                                <c:if test="${empty COUPON.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm mã " id="btnAddOrUpdateCoupon"/>
                                </c:if>
                                <c:if test="${empty COUPON.id}">
                                    <a href="<c:url value="/admin-coupon?type=list"/> ">
                                        <input type="button" class="btn btn-white btn-primary btn-bold" value="Trở lại" id="btnBack"/>
                                    </a>
                                </c:if>
                            </div>
                        </div>


                        <input type="hidden" value="${COUPON.id}" id="id" name="id"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>

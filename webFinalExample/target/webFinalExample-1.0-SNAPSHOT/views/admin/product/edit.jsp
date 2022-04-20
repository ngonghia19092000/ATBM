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
                    <form id="formSubmit" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Mã sản phẩm</label>
                            <div class="col-sm-9">
                                <input type="text" style="font-family: 'Times New Roman' ; font-weight: bold" class="form-control" id="code" name="code" value="${PRODUCT.code}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Chọn thể loại sản phẩm</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="categoryid" name="categoryid">
                                    <c:if test="${empty PRODUCT.categoryid}">
                                        <option value="">Chọn thể loại</option>
                                        <c:forEach var="item" items="${CATE}">
                                            <option value="${item.id}">${item.name}</option>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty PRODUCT.categoryid}">
                                        <option value="">Chọn thể loại</option>
                                        <c:forEach var="item" items="${CATE}">
                                            <option value="${item.id}" <c:if test="${item.id == PRODUCT.categoryid}">selected="selected"</c:if>>
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
                            <label class="col-sm-3 control-label no-padding-right">Nhà sản xuất</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="manfacturerid" name="manfacturerid">
                                    <c:if test="${empty PRODUCT.manfacturerid}">
                                        <option value="">Chọn nhà sản xuất</option>
                                        <c:forEach var="item" items="${MANUFACTURER}">
                                            <option value="${item.id}">${item.name}</option>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty  PRODUCT.manfacturerid}">
                                        <option value="">Chọn nhà sản xuất</option>
                                        <c:forEach var="item" items="${MANUFACTURER}">
                                            <option value="${item.id}" <c:if test="${item.id == PRODUCT.manfacturerid}">selected="selected"</c:if>>
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
                            <label class="col-sm-3 control-label no-padding-right">Chọn màu sắc</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="color" name="color">
                                    <c:if test="${empty PRODUCT.color}">
                                        <option value="">Chọn loại người dùng</option>
                                        <c:forEach var="item" items="${COLOR}">
                                            <option value="${item.id}">${item.colors}</option>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${not empty PRODUCT.color}">
                                        <option value="">Chọn lại người dùng</option>
                                        <c:forEach var="item" items="${COLOR}">
                                            <option value="${item.id}" <c:if test="${item.id == PRODUCT.color}">selected="selected"</c:if>>
                                                    ${item.colors}
                                            </option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Tên sản phẩm</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="name" name="name" value="${PRODUCT.name}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Giá sản phẩm</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="price" name="price" value="${PRODUCT.price}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Giá khuyến mãi</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="pricesale" name="pricesale" value="${PRODUCT.pricesale}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Kích cỡ</label>
                            <div class="col-sm-9">
                                <select class="form-control" id="size" name="size">
                                    <c:if test="${empty PRODUCT.size}">
                                        <option value="">Chọn kích cỡ</option>

                                            <option value="S">S</option>
                                            <option value="M">M</option>
                                            <option value="L">L</option>
                                        <option value="XL">XL</option>
                                        <option value="OVERSIZE">OVERSIZE</option>

                                    </c:if>
                                    <c:if test="${not empty PRODUCT.size}">
                                        <option value="">Chọn lại người dùng</option>

                                            <option value="${PRODUCT.size}" selected="selected">
                                                ${PRODUCT.size}
                                            </option>
                                        <option value="S">S</option>
                                        <option value="M">M</option>
                                        <option value="L">L</option>
                                        <option value="XL">XL</option>
                                        <option value="OVERSIZE">OVERSIZE</option>

                                    </c:if>
                                </select>

                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Số lượng</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="quantity" name="quantity" value="${PRODUCT.quantity}"/>
                            </div>
                        </div>
                        <br/>
                        <br/>


                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Hình ảnh sản phẩm</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="thumnail"  name="thumnail" value="${PRODUCT.thumnail}"/>

                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Mô tả sản phẩm</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="description"  name="description" value="${PRODUCT.description}"/>

                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <div style="margin: 0 auto">
                                <c:if test="${not empty PRODUCT.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật thông tin" id="btnAddOrUpdateProduct"/>
                                </c:if>
                                <c:if test="${empty PRODUCT.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm sản phẩm" id="btnAddOrUpdateProduct"/>
                                </c:if>

                                    <a href="<c:url value="/admin-product?type=list"/> ">
                                        <input type="button" class="btn btn-white btn-primary btn-bold" value="Trở lại" id="btnBack"/>
                                    </a>

                            </div>
                        </div>


                        <input type="hidden" value="${PRODUCT.id}" id="id" name="id"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</body>

</html>

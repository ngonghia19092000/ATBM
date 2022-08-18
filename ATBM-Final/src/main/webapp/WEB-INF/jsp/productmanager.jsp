<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--header ở đaya--%>
<%@ include file="_admin-header.jsp" %>
<body>
<%--content--%>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Quản lý sản phẩm</h1>
            </div>
        </div>
    </div>
</section>


<div class="col tm-block-col" style="padding: 70px">
    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
        <h2 class="tm-block-title">DANH SÁCH SẢN PHẨM</h2>
        <%--        <table class="table">--%>
        <%--         --%>
        <%--        </table>--%>
        <div style="width: 100%;max-height: 400px;  overflow-y:auto; ">
            <table class="table">
                <thead>
                <tr style="text-align: left">
                    <th></th>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Giá</th>
                    <th>Mô tả</th>
                    <th>Ngày tạo</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="product" items="${listP}">
                    <tr>
                        <td><input type="checkbox"/></td>
                        <td>${product.name}</td>

                        <td><img style="max-width: 60px;height: auto;"
                                 src="/image/display/${product.id}" alt=""></td>
                        <td class="myDIV">${product.price}</td>
                        <td>${product.description}</td>

                        <td>${product.createDate}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/admin/product/edit?id=${product.id}"
                               class="genric-btn primary-btn info small">
                                Sửa
                            </a>
                            <a href="/product-admin/delete?id=${product.id}"
                               class="genric-btn primary-btn danger small">
                                Xóa
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

    </div>
    <!-- table container -->

    <div style="padding: 10px;margin-top: 30px" class="col-md-12 progress-table">

        <button class="genric-btn primary-btn success-border" data-toggle="modal"
                data-target="#exampleModalCenter1"> Thêm sản phẩm
        </button>

        <button class="genric-btn primary-btn danger-border">
            Xóa các sản phẩm đã chọn
        </button>
    </div>
    <br>
    <br>

    <!-- Modal -->


</div>
<div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLongTitle1"> Thêm sản phẩm</h3>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="billing-details" id="form">
                    <div class="section-title">

                    </div>
                    <div class="form-group">
                        <input class="form-control" type="text" placeholder="Tên sản phẩm" name="name"
                               autocomplete="off" required>
                    </div>
                    <div class="form-group">
							<textarea
                                    id="description" name="description" type="text" placeholder="Mô tả sản phẩm"
                                    class="form-control"
                                    style="background: #FFF;border: 1px solid #BDBCBC;color: inherit;font-family: inherit;font-size: inherit;"
                                    size="18" rows="3" cols="73" autocomplete="off" required></textarea>
                    </div>

                    <div class="form-group">
                        <input id="image"
                               name="image" type="file" class="form-control"
                               autocomplete="off" required>
                    </div>
                    <div class="form-group">
                        <input id="price" placeholder="Giá sản phẩm"
                               name="price" class="form-control" autocomplete="off"
                               required>
                    </div>
                    <div class="form-group">
                        <input type="submit" id="submit" name="Submit" class="genric-btn primary-btn success-border"
                               value="Tạo mới">
                    </div>

                </form>

            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>


</body>

<%@ include file="_footer.jsp" %>

</html>


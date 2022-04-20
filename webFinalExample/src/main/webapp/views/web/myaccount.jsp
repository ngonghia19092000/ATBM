<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var ="deleteURL" value="/my-account?action=delete"/>

<!DOCTYPE html>
<html>
<head>
    <title>My Account</title>
</head>
<body>
<div class="page-banner-section section" >
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">
                <h1>Tài Khoản Của Tôi</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Trang chủ </a></li>
                    <li><a href="wishlist.html">Tài khoản của tôi</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- Page Banner Section End -->
<!-- Page Section Start -->
<div class="container light-style flex-grow-1 container-p-y">
    <h4 class="font-weight-bold py-3 mb-4">
        Tài khoản
    </h4>
    <div class="card overflow-hidden">
        <c:if test="${not empty message}">
            <div class="alert alert-${alert}">${message}</div>
        </c:if>
        <div class="row no-gutters row-bordered row-border-light">
            <div class="col-md-3 pt-0">
                <div class="list-group list-group-flush account-settings-links">
                    <a class="list-group-item list-group-item-action active" data-toggle="list"
                       href="#account-general">Chung</a>
                    <a class="list-group-item list-group-item-action" data-toggle="list"
                       href="#account-change-password">Thay đổi mật khẩu</a>
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content">

                    <form class="form-edit" id="form-edit" method="post" action="<c:url value="/my-account"/> ">
                        <div class="tab-pane fade active show" id="account-general">
                            <div class="card-body media align-items-center">
                                <img width="50" height="50" src="<c:url value="${USER.image}"/> " alt=""
                                     class="d-block ui-w-80">
                                <div class="media-body ml-4">
                                    <label class="btn btn-outline-primary">
                                        Tải lên ảnh mới
                                        <input type="file" class="account-settings-fileinput">
                                    </label> &nbsp;
                                    <button type="button" class="btn btn-default md-btn-flat">Đặt lại</button>
                                    <div class="text-light small mt-1">Cho phép JPG, GIF hoặc PNG. Kích thước tối đa
                                        800K
                                    </div>
                                </div>
                            </div>
                            <hr class="border-light m-0">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label">Tên tài khoản</label>
                                    <input name="userName" type="text" class="form-control mb-1"
                                           value="${USER.userName}">
                                    <input name="id" type="hidden" class="form-control mb-1" value="${USER.id}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Tên khách hàng</label>
                                    <input name="fullName" type="text" class="form-control" value="${USER.fullName}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail</label>
                                    <input name="email" type="text" class="form-control mb-1" value="${USER.email}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Giới tính</label>
                                    <input name="gender" type="text" class="form-control" value="${USER.gender}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Ngày sinh</label>
                                    <input name="birthday" type="text" class="form-control" value="${USER.birthday}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Địa chỉ</label>
                                    <input name="address" type="text" class="form-control" value="${USER.address}">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Số điện thoại</label>
                                    <input name="phone" type="text" class="form-control" value="${USER.phone}">
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label class="d-block text-danger">Xóa tài khoản</label>
                                    <p class="text-muted font-size-sm">
                                        Sau khi bạn xóa tài khoản của mình, sẽ mất vĩnh viễn. Hãy chắc chắn.</p>
                                </div>

                                <button onclick="deleteFunction()" class="btn btn-danger" type="button">Xóa tài khoản</button>

                                <div class="text-right mt-3">
                                    <input type="hidden" name="action" value="edit">
                                    <button type="submit" class="btn btn-primary">Lưu thay đổi</button>&nbsp;
                                    <button type="button" class="btn btn-default"><a href="<c:url value="/trang-chu"/> ">Hủy</a></button>
                                </div>
                            </div>
                        </div>
                    </form>
                    </div>
                    <div class="tab-pane fade" id="account-change-password">
                        <form class="form-change" id="form-change" method="post" action="<c:url value="/my-account"/> ">
                            <div class="card-body pb-2">
                                <div class="form-group">
                                    <label class="form-label">Mật khẩu hiện tại</label>
                                    <input type="password" class="form-control" name="currentPassword">
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Mật khẩu mới</label>
                                    <input type="password" class="form-control" name="password" required>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Nhập lại mật khẩu mới</label>
                                    <input type="password" class="form-control" required>
                                </div>
                                <div class="text-right mt-3">
                                    <input type="hidden" name="action" value="change">
                                    <button type="submit" class="btn btn-primary">Lưu thay đổi</button>&nbsp;
                                    <button type="button" class="btn btn-default"><a href="<c:url value="/trang-chu"/> ">Hủy</a></button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<script>
function deleteFunction(){
    if(confirm("Bạn có chắc chắn muốn xóa tài khoản này")){
        window.location.href = "${deleteURL}";
    }


}
</script>
</body>
</html>

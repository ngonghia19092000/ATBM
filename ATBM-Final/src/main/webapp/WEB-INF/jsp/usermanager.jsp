<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--header ở đaya--%>
<%@ include file="_admin-header.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
    @import url('https://fonts.googleapis.com/css?family=Lobster+Two:700|Poppins&display=swap');
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }


    .center,.start-btn{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
    .start-btn a{
        font-size: 22px;
        background: white;
        color: #02242b;
        padding: 15px 18px;
        border-radius: 5px;
        text-decoration: none;
        text-transform: uppercase;
        font-weight: 600;
        letter-spacing: 1px;

    }
    .modal-box{
        top: 40%;
        opacity: 0;
        visibility: hidden;
        background: white;
        height: auto;
        width: 480px;
        margin-top:140px;
        padding: 18px 10px;
        border-radius: 5px;
        box-shadow: 5px 5px 30px rgba(0,0,0,.2);
    }

    .start-btn.show-modal{
        opacity: 0;
        visibility: hidden;
    }
    .modal-box.show-modal{
        top: 50%;
        opacity: 1;
        visibility: visible;
        transition: .4s;
    }
    .modal-box .fa-times{
        position: absolute;
        top: 0;
        right: 0;
        background: #0569d4;
        height: 40px;
        width: 40px;
        line-height: 40px;
        margin: 10px;

        color: white;
        font-size: 18px;
        border-radius: 100%;
        text-align: center;
        cursor: pointer;
    }
    .fa-times:hover{
        font-size: 22px;
    }


    .form_container{
        background: #fff;
        padding: 30px;
        margin-top: 20px;
        border-radius: 3px;
    }

    .form_container .form_item{
        margin-bottom: 25px;
    }

    .form_container .form_wrap.form_grp{
        display: flex;
    }

    .form_container .form_wrap.form_grp .form_item{
        width: 50%;
    }

    .form_container .form_wrap.form_grp .form_item:first-child{
        margin-right: 4%;
    }

    .form_container .form_item label{
        display: block;
        margin-bottom: 5px;
    }

    .form_container .form_item input,
    .form_container .form_item select{
        width: 100%;
        padding: 10px;
        font-size: 16px;
        border: 1px solid #dadce0;
        border-radius: 3px;
    }

    .form_container .btn input[type="submit"]{
        background: #6271f0;
        border: 1px solid #6271f0;
        padding: 10px;
        width: 100%;
        border-radius: 3px;
        cursor: pointer;
        color: #fff;
    }

</style>
<body>
<%--content--%>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Quản lý người dùng</h1>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="row">

        <div class=" col-sm-12 tm-block-col">
    <div class="tm-bg-primary-dark tm-block tm-block-products">
        <div class="tm-product-table-container">
            <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">Họ và tên</th>
                    <th scope="col">Tên đăng nhập</th>
                    <th scope="col">Ngày sinh</th>
                    <th scope="col">Public Key</th>
                    <th scope="col">Quyền quản trị viên</th>
                    <th scope="col">&nbsp;</th>
                </tr>
                </thead>
            </table>
            <div style="width: 100%;max-height: 400px;  overflow-y:auto; ">
              <table class="table table-hover tm-table-small tm-product-table" >
                  <tbody>
                      <c:forEach var="item" items="${listU}">
                      <tr>

                          <th scope="row"><input type="checkbox"/></th>
                          <td>${item.fullName}</td>
                          <td>${item.userName}</td>
                          <td>${item.birthday}</td>
                          <td>
                              <c:forEach var="key" items="${listK}">
                                  <c:if test="${item.id == key.userId}">
                                      <button onclick="showKey('${key.publicKey}')" class="genric-btn primary-btn default "> Xem khóa    </button>

                                  </c:if>

                              </c:forEach>

                          </td>

                          <c:if test="${item.isAdmin==1}">
                              <td>
                              <c:if test="${item.id!=1}">
                                  <a href="/usermanager/setUser?uid=${item.id}" class="genric-btn primary-btn danger ">Bỏ quyền quản trị</a>

                              </c:if>
                              <c:if test="${item.id==1}">
                                  <a class=" genric-btn primary-btn success "> Quản trị viên</a></td>


                              </c:if>

                          </c:if>

                          <c:if test="${item.isAdmin==0}">
                              <td><a href="/usermanager/setAdmin?uid=${item.id}" class="genric-btn primary-btn info "> Cấp quyền quản trị</a></td>
                          </c:if>

                          <td>
                              <c:if test="${item.id!=1}">
                                  <a href="/usermanager/delete?uid=${item.id}" class="genric-btn primary-btn danger ">Xóa</a>


                              </c:if>
                          </td>

                      </tr>
                      </c:forEach>


                  </tbody>
              </table>

        </div>

        </div>
        <!-- table container -->

        <div class="col-md-4">
            <button class="genric-btn success arrow radius"  data-toggle="modal"
                    data-target="#exampleModalCenter1"> Tạo mới tài khoản
            </button>
        </div>
<br>
        <br>

        <!-- Modal -->



    </div>
</div>

</div>
</div>
<div class="modal fade" id="exampleModalCenter1" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalCenterTitle1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle1">Thêm tài khoản</h5>
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="col-md-12 form-group">
                    <input type="tel" class="form-control" id="fullName" name="fullName"
                           placeholder="Họ và tên">
                </div>
                <div class="col-md-12 form-group">
                    <input type="text" class="form-control" id="userName" name="userName"

                           placeholder="Tên đăng nhập">
                </div>
                <div class="col-md-12 form-group">
                    <input type="text" class="form-control"  id="birthday" name="birthday"

                           placeholder="Ngày sinh">
                </div>
                <div class="col-md-12 form-group">
                    <input type="password" class="form-control"  id="passWord" name="passWord"
                           placeholder="Mật khẩu">

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary"
                        data-dismiss="modal">Đóng
                </button>
                <button type="button" class="genric-btn primary-btn info"
                        onclick="addNewUser()">Tạo mới
                </button>
            </div>
        </div>
    </div>
</div>

<script src="../js/main.js"></script>
<script>
    function showKey(key){
        Swal.fire(
            'Public Key!',
            key,
        )
    }
    $(document).ready(function(){
        $('.start-btn').click(function(){
            $('.modal-box').toggleClass("show-modal");
            $('.start-btn').toggleClass("show-modal");
        });
        $('.fa-times').click(function(){
            $('.modal-box').toggleClass("show-modal");
            $('.start-btn').toggleClass("show-modal");
        });
    });
</script>
</body>
<%@ include file="_footer.jsp" %>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="apiUser" value="/api-admin-user"/>
<c:url var="URLUser" value="/admin-user"/>
<c:url var="apiProduct" value="/api-admin-product"/>
<c:url var="URLProduct" value="/admin-product"/>
<c:url var="apiCategory" value="/api-admin-category"/>
<c:url var="URLCategory" value="/admin-category"/>
<c:url var="apiCoupon" value="/api-admin-coupon"/>
<c:url var="URLCoupon" value="/admin-coupon"/>
<c:url var="apiInfo" value="/api-admin-information"/>
<c:url var="URLinfo" value="/admin-information"/>
<c:url var="apiBanner" value="/api-admin-banner"/>
<c:url var="URLBanner" value="/admin-banner"/>
<!DOCTYPE html>
<html>
<head>
    <title><dec:title default="TNTAdmin"/></title>
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/fonts.googleapis.com.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/ace.min.css"/> " class="ace-main-stylesheet"
          id="main-ace-style">
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/ace-part2.min.css"/>"
          class="ace-main-stylesheet">
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/ace-skins.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/ace-rtl.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/admin/assets/css/ace-ie.min.css"/>">
    <script src="<c:url value="/template/admin/assets/js/ace-extra.min.js"/>"></script>
    <script src="<c:url value="/template/admin/assets/js/html5shiv.min.js"/>"></script>
    <script src="<c:url value="/template/admin/assets/js/respond.min.js"/>"></script>
    <script src="<c:url value="/template/admin/assets/js/ace-extra.min.js"/>"></script>
    <script src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<%--    <script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>--%>
</head>
<body class="no-skin">
<!-- header -->
<%@ include file="/common/admin/header.jsp" %>
<!-- header -->
<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>
    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>
        <%@ include file="/common/admin/menu.jsp" %>

        <dec:body/>


        <!-- footer -->
        <%@ include file="/common/admin/footer.jsp" %>
        <!-- footer -->
    </div>
</div>
<script src="<c:url value="/template/admin/assets/js/jquery-2.1.4.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery-1.11.3.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/excanvas.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery-ui.custom.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.ui.touch-punch.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.easypiechart.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.sparkline.index.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.flot.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.flot.pie.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.flot.resize.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/ace-elements.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/ace.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.dataTables.bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/dataTables.buttons.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/buttons.flash.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/buttons.html5.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/buttons.print.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/buttons.colVis.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/dataTables.select.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/bootstrap-datepicker.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/jquery.jqGrid.min.js"/>"></script>
<script src="<c:url value="/template/admin/assets/js/grid.locale-en.js"/>"></script>
<script src="<c:url value='/template/admin/assets/js/jquery-ui.min.js'/>"></script>

<%--CKEDITOR--%>

<%--Table dynamic--%>
<script type="text/javascript">
    jQuery(function ($) {
        //initiate dataTables plugin
        var myTable =
            $('#dynamic-table-user')
                //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                .DataTable({
                    bAutoWidth: false,
                    "aoColumns": [
                        {"bSortable": false},
                        null, null, null, null, null, null, null, null, null,
                        {"bSortable": false}
                    ],
                    "aaSorting": [],


                    select: {
                        style: 'multi'
                    }
                });

        $('#dynamic-table-product')
            //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .DataTable({
                bAutoWidth: false,
                "aoColumns": [
                    {"bSortable": false},
                    null, null, null, null, null, null, null, null, null, null, null,
                    {"bSortable": false}
                ],
                "aaSorting": [],


                select: {
                    style: 'multi'
                }
            });


        $('#dynamic-table-coupon')
            //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .DataTable({
                bAutoWidth: false,
                "aoColumns": [
                    {"bSortable": false},
                    null, null, null, null, null, null, null,
                    {"bSortable": false}
                ],
                "aaSorting": [],


                select: {
                    style: 'multi'
                }
            });
        $('#dynamic-table-category')
            //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .DataTable({
                bAutoWidth: false,
                "aoColumns": [
                    {"bSortable": false},
                    null, null, null, null, null, null, null, null,
                    {"bSortable": false}
                ],
                "aaSorting": [],


                select: {
                    style: 'multi'
                }
            });
        $('#dynamic-table-order')
            //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .DataTable({
                bAutoWidth: false,
                "aoColumns": [
                    {"bSortable": false},
                    null, null, null, null, null, null, null, null,
                    {"bSortable": false}
                ],
                "aaSorting": [],


                select: {
                    style: 'multi'
                }
            });
        $('#dynamic-table-banner')
            //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
            .DataTable({
                bAutoWidth: false,
                "aoColumns": [
                    {"bSortable": false},
                    null, null, null, null, null,
                    {"bSortable": false}
                ],
                "aaSorting": [],


                select: {
                    style: 'multi'
                }
            });

        $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

        new $.fn.dataTable.Buttons(myTable, {
            buttons: [
                {
                    "extend": "colvis",
                    "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    columns: ':not(:first):not(:last)'
                },
                {
                    "extend": "copy",
                    "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "csv",
                    "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "excel",
                    "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "pdf",
                    "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
                    "className": "btn btn-white btn-primary btn-bold"
                },
                {
                    "extend": "print",
                    "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
                    "className": "btn btn-white btn-primary btn-bold",
                    autoPrint: false,
                    message: 'This print was produced using the Print button for DataTables'
                }
            ]
        });
        myTable.buttons().container().appendTo($('.tableTools-container'));

        //style the message box
        var defaultCopyAction = myTable.button(1).action();
        myTable.button(1).action(function (e, dt, button, config) {
            defaultCopyAction(e, dt, button, config);
            $('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
        });


        var defaultColvisAction = myTable.button(0).action();
        myTable.button(0).action(function (e, dt, button, config) {

            defaultColvisAction(e, dt, button, config);


            if ($('.dt-button-collection > .dropdown-menu').length == 0) {
                $('.dt-button-collection')
                    .wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
                    .find('a').attr('href', '#').wrap("<li />")
            }
            $('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
        });


        setTimeout(function () {
            $($('.tableTools-container')).find('a.dt-button').each(function () {
                var div = $(this).find(' > div').first();
                if (div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
                else $(this).tooltip({container: 'body', title: $(this).text()});
            });
        }, 500);


        myTable.on('select', function (e, dt, type, index) {
            if (type === 'row') {
                $(myTable.row(index).node()).find('input:checkbox').prop('checked', true);
            }
        });
        myTable.on('deselect', function (e, dt, type, index) {
            if (type === 'row') {
                $(myTable.row(index).node()).find('input:checkbox').prop('checked', false);
            }
        });
        //table checkboxes
        $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

        //select/deselect all rows according to table header checkbox
        $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked;//checkbox inside "TH" table header

            $('#dynamic-table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) myTable.row(row).select();
                else myTable.row(row).deselect();
            });
        });

        $('#dynamic-table').on('click', 'td input[type=checkbox]', function () {
            var row = $(this).closest('tr').get(0);
            if (this.checked) myTable.row(row).deselect();
            else myTable.row(row).select();
        });


        $(document).on('click', '#dynamic-table .dropdown-toggle', function (e) {
            e.stopImmediatePropagation();
            e.stopPropagation();
            e.preventDefault();
        });

        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked;//checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });
        $('#simple-table').on('click', 'td input[type=checkbox]', function () {
            var $row = $(this).closest('tr');
            if ($row.is('.detail-row ')) return;
            if (this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });
        $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

        //tooltip placement on right or left
        function tooltip_placement(context, source) {
            var $source = $(source);
            var $parent = $source.closest('table')
            var off1 = $parent.offset();
            var w1 = $parent.width();

            var off2 = $source.offset();
            //var w2 = $source.width();

            if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
            return 'left';
        }

        $('.show-details-btn').on('click', function (e) {
            e.preventDefault();
            $(this).closest('tr').next().toggleClass('open');
            $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
        });

    });

</script>

<%--<script>--%>
<%--    var editor = '';--%>
<%--    $( document ).ready(function() {--%>
<%--editor =CKEDITOR.replace('description');--%>
<%--    });--%>
<%--</script>--%>
<%--Nguoi dung--%>
<script>

    $("#btnDelete").click(function () {
        var data = {};
        var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['ids'] = ids;
        deleteUser(data);
    });

    function deleteUser(data) {
        $.ajax({
            url: '${apiUser}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                alert(" xóa thành công");
                window.location.href = "${URLUser}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=delete_success";
            },
            error: function (error) {
                alert("Xóa thất bại");
                window.location.href = "${URLUser}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=error_system";
            }
        });
    }

    $('#btnAddOrUpdateUser').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        // data["content"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addUser(data);
        } else {
            updateUser(data);
        }
    });

    function addUser(data) {
        $.ajax({
            url: '${apiUser}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Thêm tài khoản thành công");
                window.location.href = "${URLUser}?type=list&message=insert_success";
            },
            error: function (error) {
                alert("Thêm tài khoản thất bai");
                window.location.href = "${URLUser}?type=list&maxPageItem=2&page=1&message=error_system";
                console.log(error);
            }
        });
    }

    function updateUser(data) {
        $.ajax({
            url: '${apiUser}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Sửa tài khoản thành công");
                window.location.href = "${URLUser}?type=list&message=update_success";
                console.log(result);
            },
            error: function (error) {
                console.log(error);
                alert("Sửa tài khoản thất bai");
                window.location.href = "${URLUser}?type=list&message=error_system";
            }
        });
    }
</script>

<%--nguoi dung--%>

<%--San pham--%>
<script>

    $("#btnDeleteProduct").click(function () {
        var data = {};
        var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['ids'] = ids;
        deleteProduct(data);
    });

    function deleteProduct(data) {
        $.ajax({
            url: '${apiProduct}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                alert("Xóa sản phẩm thành công");
                window.location.href = "${URLProduct}?type=list&message=delete_success";
            },
            error: function (error) {
                alert("Xóa sản phẩm thất bại");
                window.location.href = "${URLProduct}?type=list&message=error_system";
            }
        });
    }

    $('#btnAddOrUpdateProduct').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        // data["content"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addProduct(data);
        } else {
            updateProduct(data);
        }
    });

    function addProduct(data) {
        $.ajax({
            url: '${apiProduct}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Thêm sản phẩm thành công");
                window.location.href = "${URLProduct}?type=list&message=insert_success";
            },
            error: function (error) {
                alert("Thêm sản phẩm thất bại");
                window.location.href = "${URLProduct}?type=edit&id="+result.id+"&message=error_system";
                console.log(error);
            }
        });
    }

    function updateProduct(data) {
        $.ajax({
            url: '${apiProducrt}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Sửa sản phẩm thành công");
                window.location.href = "${URLProduct}?type=edit&id="+result.id+"&message=update_success";
                console.log(result);
            },
            error: function (error) {
                console.log(error);
                alert("Sửa sản phẩm thất bại");
                window.location.href = "${URLProduct}?type=edit&id="+error.id+"&message=error_system";
            }
        });
    }
</script>

<%--sanpham--%>

<%--The loại--%>

<script>

    $("#btnDeleteCate").click(function () {
        var data = {};
        var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['ids'] = ids;
        deleteCate(data);
    });

    function deleteCate(data) {
        $.ajax({
            url: '${apiCategory}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                alert(" xóa thành công");
                window.location.href = "${URLCategory}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=delete_success";
            },
            error: function (error) {
                alert("Xóa thất bại");
                window.location.href = "${URLCategory}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=error_system";
            }
        });
    }

    $('#btnAddOrUpdateCate').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        // data["content"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addCategory(data);
        } else {
            updateCategory(data);
        }
    });

    function addCategory(data) {
        $.ajax({
            url: '${apiCategory}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Thêm sản phẩm thành công");
                window.location.href = "${URLCategory}?type=list&message=insert_success";
            },
            error: function (error) {
                alert("Thêm thể loại thất bại");
                window.location.href = "${URLCategory}?type=edit&id="+error.id+"&message=error_system";
                console.log(error);
            }
        });
    }

    function updateCategory(data) {
        $.ajax({
            url: '${apiCategory}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Sửa thể loại thành công");
                window.location.href = "${URLCategory}?type=edit&id="+result.id+"&message=update_success";
                console.log(result);
            },
            error: function (error) {
                console.log(error);
                alert("Sửa thể loại thất bại");
                window.location.href = "${URLCategory}?type=edit&id="+error.id+"&message=error_system";
            }
        });
    }
</script>
<%--the loai--%>

<%--Thong tin trang ban hang--%>
<script>


    $('#btnAddOrUpdateInfo').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        // data["content"] = editor.getData();
        var id = $('#id').val();

        updateInfo(data);

    });

    function updateInfo(data) {
        $.ajax({
            url: '${apiInfo}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("sửa thành công");
                window.location.href = "${URLinfo}?type=list&message=update_success";
                console.log(result);
            },
            error: function (error) {
                console.log(error);
                alert("sửa thất bai");
                window.location.href = "${URLinfo}?type=list&message=error_system";
            }
        });
    }
</script>
<%--Thong tin trang ban hang--%>


<%--Ma giam gia--%>
<script>

    $("#btnDeleteCoupon").click(function () {
        var data = {};
        var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['ids'] = ids;
        deleteCoupon(data);
    });

    function deleteCoupon(data) {
        $.ajax({
            url: '${apiCoupon}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                alert(" xóa thành công");
                window.location.href = "${URLCoupon}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=delete_success";
            },
            error: function (error) {
                alert("Xóa thất bại");
                window.location.href = "${URLCoupon}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=error_system";
            }
        });
    }

    $('#btnAddOrUpdateCoupon').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        // data["content"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addCoupon(data);
        } else {
            updateCoupon(data);
        }
    });

    function addCoupon(data) {
        $.ajax({
            url: '${apiCoupon}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Thêm mã thành công");
                window.location.href = "${URLCoupon}?type=list&message=insert_success";
            },
            error: function (error) {
                alert("Thêm mã thất bai");
                window.location.href = "${URLCoupon}?type=list&maxPageItem=2&page=1&message=error_system";
                console.log(error);
            }
        });
    }

    function updateCoupon(data) {
        $.ajax({
            url: '${apiCoupon}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Sửa mã thành công");
                window.location.href = "${URLCoupon}?type=list&message=update_success";
                console.log(result);
            },
            error: function (error) {
                console.log(error);
                alert("Sửa mã thất bai");
                window.location.href = "${URLCoupon}?type=list&message=error_system";
            }
        });
    }
</script>
<script>
    var editor ='';
    $( document ).ready(function() {
        editor=CKEDITOR.replace('description');
    });
</script>
<script>

    $("#btnDeleteBanner").click(function () {
        var data = {};
        var ids = $('tbody input[type=checkbox]:checked').map(function () {
            return $(this).val();
        }).get();
        data['ids'] = ids;
        deleteBanner(data);
    });

    function deleteBanner(data) {
        $.ajax({
            url: '${apiBanner}',
            type: 'DELETE',
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                alert(" xóa thành công");
                window.location.href = "${URLBanner}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=delete_success";
            },
            error: function (error) {
                alert("Xóa thất bại");
                window.location.href = "${URLBanner}?type=list&page=1&maxPageItem=2&sortName=title&sortBy=desc&message=error_system";
            }
        });
    }

    $('#btnAddOrUpdateBanner').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        });
        // data["content"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addBanner(data);
        } else {
            updateBanner(data);
        }
    });

    function addBanner(data) {
        $.ajax({
            url: '${apiBanner}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Thêm  thành công");
                window.location.href = "${URLBanner}?type=list&message=insert_success";
            },
            error: function (error) {
                alert("Thêm  thất bai");
                window.location.href = "${URLBanner}?type=list&maxPageItem=2&page=1&message=error_system";
                console.log(error);
            }
        });
    }

    function updateBanner(data) {
        $.ajax({
            url: '${apiBanner}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                console.log(result);
                alert("Sửa  thành công");
                window.location.href = "${URLBanner}?type=list&message=update_success";
                console.log(result);
            },
            error: function (error) {
                console.log(error);
                alert("Sửa  thất bai");
                window.location.href = "${URLBanner}?type=list&message=error_system";
            }
        });
    }
</script>
</body>

</html>


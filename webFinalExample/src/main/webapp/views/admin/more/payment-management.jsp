<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Quản lí thanh toán</title>
    <style>
        /* Popup container - can be anything you want */
        .popup {
            position: relative;
            display: inline-block;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        /* The actual popup */
        .popup .popuptext {
            visibility: hidden;
            width: 160px;
            background-color: #555;
            color: #fff;
            text-align: center;
            border-radius: 6px;
            padding: 8px 0;
            position: absolute;
            z-index: 1;
            bottom: 125%;
            left: 50%;
            margin-left: -80px;
        }

        /* Popup arrow */
        .popup .popuptext::after {
            content: "";
            position: absolute;
            top: 100%;
            left: 50%;
            margin-left: -5px;
            border-width: 5px;
            border-style: solid;
            border-color: #555 transparent transparent transparent;
        }

        /* Toggle this class - hide and show the popup */
        .popup .show {
            visibility: visible;
            -webkit-animation: fadeIn 1s;
            animation: fadeIn 1s;
        }

        /* Add animation (fade in the popup) */
        @-webkit-keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0, 0, 0); /* Fallback color */
            background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        /* The Close Button */
        .close {
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

    </style>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">Tables</a>
                </li>
                <li class="active">Payment Management</li>
            </ul>
            <!-- /.breadcrumb -->
            <div class="nav-search" id="nav-search">
                <form class="form-search">
                            <span class="input-icon">
                                <input type="text" placeholder="Search ..." class="nav-search-input"
                                       id="nav-search-input" autocomplete="off"/>
                                <i class="ace-icon fa fa-search nav-search-icon"></i>
                            </span>
                </form>
            </div>
            <!-- /.nav-search -->
        </div>
        <div class="page-content">
            <div class="ace-settings-container" id="ace-settings-container">
                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                    <i class="ace-icon fa fa-cog bigger-130"></i>
                </div>
                <div class="ace-settings-box clearfix" id="ace-settings-box">
                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <div class="pull-left">
                                <select id="skin-colorpicker" class="hide">
                                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                </select>
                            </div>
                            <span>&nbsp; Choose Skin</span>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-navbar" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-sidebar" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-breadcrumbs" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state"
                                   id="ace-settings-add-container" autocomplete="off"/>
                            <label class="lbl" for="ace-settings-add-container">
                                Inside
                                <b>.container</b>
                            </label>
                        </div>
                    </div>
                    <!-- /.pull-left -->
                    <div class="pull-left width-50">
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                        </div>
                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight"
                                   autocomplete="off"/>
                            <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                        </div>
                    </div>
                    <!-- /.pull-left -->
                </div>
                <!-- /.ace-settings-box -->
            </div>
            <!-- /.ace-settings-container -->
            <div class="page-header">
                <h1>
                    Tables
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        Payment Management
                    </small>
                </h1>
            </div>
            <div>
                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>

                    <th>User Name</th>
                    <th>Phone Number</th>
                    <th>Account Holder</th>
                    <th>Bank Account Number</th>


                    <th>
                        Bank Card Number
                    </th>

                    <th>Bank</th>
                    <th>Card Opening Date</th>
                    <th>Status</th>
                    <th class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace"/>
                            <span class="lbl"></span>
                        </label>
                    </th>

                    </tr>
                    </thead>

                    <tbody>

                    <tr>


                        <td>
                            <a href="#">Ngonghia1909</a>
                        </td>
                        <td>0399491909</td>
                        <td>NGO MINH NGHIA</td>
                        <td>31410002956179</td>

                        <td>9704180094695566</td>

                        <td>
                            <span>BIDV - Ngân hàng Đầu tư và Phát triển Việt Nam</span>

                        </td>

                        <td>

                            4-2018
                        </td>
                        <td>   <span class="label label-sm label-success">Đang liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>

                    <tr>


                        <td>
                            <a href="#">taiempro123</a>
                        </td>
                        <td>0981335151</td>
                        <td>TRAN TAN TAI</td>
                        <td>314122029511179</td>

                        <td>5233480094695566</td>

                        <td>
                            <span>   BIDV - Ngân hàng đàu tư và phát triển Việt Nam</span>

                        </td>

                        <td>

                            7-2018
                        </td>
                        <td>   <span class="label label-sm label-success">Đang liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">Trantuan123</a>
                        </td>
                        <td>0961155151 </td>
                        <td>TRAN VAN TUAN</td>
                        <td>314133029511179</td>

                        <td>9723480094695566</td>

                        <td>
                            <span>Vietcombank - Ngân hàng thương mại cổ phần Ngoại thương Việt Nam</span>

                        </td>

                        <td>

                            9-2018
                        </td>
                        <td> <span class="label label-sm label-inverse arrowed-in">Đã hủy liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>

                    <tr>


                        <td>
                            <a href="#">bbbb122311aa</a>
                        </td>
                        <td>0362035406</td>
                        <td>DO GIA AN</td>
                        <td>314144029511179</td>

                        <td>9673480094695566</td>

                        <td>
                            <span>AGRIBANK - Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam</span>

                        </td>

                        <td>

                            12-2018
                        </td>
                        <td>   <span class="label label-sm label-success">Đang liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">CalliopeCo</a>
                        </td>
                        <td>0396521450</td>
                        <td>BUI THI LAN ANH</td>
                        <td>314880029511179</td>

                        <td>9243480094695566</td>

                        <td>
                            <span>ACB - Ngân hàng thương mại cổ phần Á Châu</span>

                        </td>

                        <td>

                            6-2018
                        </td>
                        <td>        <span class="label label-sm label-inverse arrowed-in">Đã hủy liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">Drusilla1166889</a>
                        </td>
                        <td>0347238072</td>
                        <td>PHAN DUY BAO</td>
                        <td>141045029511179</td>

                        <td>8503480094695566</td>

                        <td>
                            <span>VietinBank - Ngân hàng Thương mại cổ phần Công Thương Việt Nam</span>
                        </td>

                        <td>

                            1-2018
                        </td>
                        <td>   <span class="label label-sm label-success">Đang liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>

                    <tr>


                        <td>
                            <a href="#">Phoebecom</a>
                        </td>
                        <td>0395510654</td>
                        <td>TRAN NGUYEN QUE CHI</td>
                        <td>314100129511179</td>

                        <td>9553480094695566</td>

                        <td>
                            <span>MB Bank- Ngân hàng thương mại cổ phần Quân đội</span>

                        </td>

                        <td>

                            12-2018
                        </td>
                        <td>     <span class="label label-sm label-inverse arrowed-in">Đã hủy liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">Violet11</a>
                        </td>
                        <td>0364248356</td>
                        <td>TON PHUONG DONG</td>
                        <td>314103402951119</td>

                        <td>9701280094695566</td>

                        <td>
                            <span>AGRIBANK - Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam</span>

                        </td>

                        <td>

                            1-2018
                        </td>
                        <td>   <span class="label label-sm label-success">Đang liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">Jasmineaaa</a>
                        </td>
                        <td>0344247582</td>
                        <td>TRAN TUAN HAO</td>
                        <td>314199029511179</td>

                        <td>97034800946955666</td>

                        <td>
                            <span>AGRIBANK - Ngân hàng Nông nghiệp và Phát triển Nông thôn Việt Nam</span>
                        </td>

                        <td>

                            5-2018
                        </td>
                        <td>     <span class="label label-sm label-inverse arrowed-in">Đã hủy liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">Lionel1909</a>
                        </td>
                        <td>0352139564</td>
                        <td>TRAN THI LE HANG</td>
                        <td>121410002951111</td>

                        <td>9703480094695123</td>

                        <td>
                                <span>Sacombank - Ngân hàng thương mại cổ phần Sài Gòn Thương Tín
</span>

                        </td>

                        <td>

                            6-2018
                        </td>
                        <td>     <span class="label label-sm label-inverse arrowed-in">Đã hủy liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">Darius111</a>
                        </td>
                        <td>0352769854</td>
                        <td>NGUYEN NGOC PHUONG UYEN</td>
                        <td>3514100029511179</td>

                        <td>9703110094695566</td>

                        <td>
                            <span>OCB - Ngân hàng TMCP Phương Đông OCB (Việt Nam)</span>
                        </td>

                        <td>

                            10-2018
                        </td>
                        <td>     <span class="label label-sm label-inverse arrowed-in">Đã hủy liên kết</span>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>
                    <tr>


                        <td>
                            <a href="#">Cuthbert111</a>
                        </td>
                        <td>0394884610</td>
                        <td>NGUYEN THI MY <TUYEN></TUYEN></td>
                        <td>314100029511179</td>

                        <td>970348009123456</td>

                        <td>
                            <span>BIDV - Ngân hàng Đầu tư và Phát triển Việt Nam</span>
                        </td>

                        <td>

                            3-2018
                        </td>
                        <td>   <span class="label label-sm label-success">Đang liên kết</span></td>

                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace"/>
                                <span class="lbl"></span>
                            </label>
                        </td>

                    </tr>




                    </tbody>


                </table>

            </div>
        </div>
        <!-- /.page-content -->
    </div>
</div>
<script type="text/javascript">
    jQuery(function ($) {
        //initiate dataTables plugin
        var myTable =
            $('#dynamic-table')
                //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
                .DataTable({
                    bAutoWidth: false,
                    "aoColumns": [{
                        "bSortable": false
                    },
                        null, null, null, null, null, null,null, {
                            "bSortable": false
                        }
                    ],
                    "aaSorting": [],


                    //"bProcessing": true,
                    //"bServerSide": true,
                    //"sAjaxSource": "http://127.0.0.1/table.php"   ,

                    //,
                    //"sScrollY": "200px",
                    //"bPaginate": false,

                    //"sScrollX": "100%",
                    //"sScrollXInner": "120%",
                    //"bScrollCollapse": true,
                    //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
                    //you may want to wrap the table inside a "div.dataTables_borderWrap" element

                    //"iDisplayLength": 50


                    select: {
                        style: 'multi'
                    }
                });


        $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

        new $.fn.dataTable.Buttons(myTable, {
            buttons: [{
                "extend": "colvis",
                "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
                "className": "btn btn-white btn-primary btn-bold",
                columns: ':not(:first):not(:last)'
            }, {
                "extend": "copy",
                "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "csv",
                "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "excel",
                "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "pdf",
                "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
                "className": "btn btn-white btn-primary btn-bold"
            }, {
                "extend": "print",
                "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
                "className": "btn btn-white btn-primary btn-bold",
                autoPrint: false,
                message: 'This print was produced using the Print button for DataTables'
            }]
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

        ////

        setTimeout(function () {
            $($('.tableTools-container')).find('a.dt-button').each(function () {
                var div = $(this).find(' > div').first();
                if (div.length == 1) div.tooltip({
                    container: 'body',
                    title: div.parent().text()
                });
                else $(this).tooltip({
                    container: 'body',
                    title: $(this).text()
                });
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


        /////////////////////////////////
        //table checkboxes
        $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

        //select/deselect all rows according to table header checkbox
        $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked; //checkbox inside "TH" table header

            $('#dynamic-table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) myTable.row(row).select();
                else myTable.row(row).deselect();
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
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


        //And for the first simple table, which doesn't have TableTools or dataTables
        //select/deselect all rows according to table header checkbox
        var active_class = 'active';
        $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function () {
            var th_checked = this.checked; //checkbox inside "TH" table header

            $(this).closest('table').find('tbody > tr').each(function () {
                var row = this;
                if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
                else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
            });
        });

        //select/deselect a row when the checkbox is checked/unchecked
        $('#simple-table').on('click', 'td input[type=checkbox]', function () {
            var $row = $(this).closest('tr');
            if ($row.is('.detail-row ')) return;
            if (this.checked) $row.addClass(active_class);
            else $row.removeClass(active_class);
        });

        $(document).ready(function () {
            $("#formButton").click(function () {
                $("#form-details-id").toggle();
            });
        });
        /********************************/
        //add tooltip for small view action buttons in dropdown menu
        $('[data-rel="tooltip"]').tooltip({
            placement: tooltip_placement
        });

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


        /***************/
        $('.show-details-btn').on('click', function (e) {
            e.preventDefault();
            $(this).closest('tr').next().toggleClass('open');
            $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
        });
        /***************/


        /**
         //add horizontal scrollbars to a simple table
         $('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
         {
            horizontal: true,
            styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
            size: 2000,
            mouseWheelLock: true
          }
         ).css('padding-top', '12px');
         */


    })
</script>
<script>
    // When the user clicks on div, open the popup
    function myFunction() {
        var popup = document.getElementById("myPopup");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup2");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup3");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup4");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup5");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup6");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup7");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup8");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup9");
        popup.classList.toggle("show");
    }
    function myFunction() {
        var popup = document.getElementById("myPopup10");
        popup.classList.toggle("show");
    }

</script>
</body>

    </html>

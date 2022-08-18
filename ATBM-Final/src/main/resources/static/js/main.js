$(document).ready(function () {
    "use strict";

    var window_width = $(window).width(),
        window_height = window.innerHeight,
        header_height = $(".default-header").height(),
        header_height_static = $(".site-header.static").outerHeight(),
        fitscreen = window_height - header_height;


    $(".fullscreen").css("height", window_height)
    $(".fitscreen").css("height", fitscreen);

    //------- Active Nice Select --------//

    $('select').niceSelect();


    $('.navbar-nav li.dropdown').hover(function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
    }, function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
    });

    $('.img-pop-up').magnificPopup({
        type: 'image',
        gallery: {
            enabled: true
        }
    });

    // Search Toggle
    $("#search_input_box").hide();
    $("#search").on("click", function () {
        $("#search_input_box").slideToggle();
        $("#search_input").focus();
    });
    $("#close_search").on("click", function () {
        $('#search_input_box').slideUp(500);
    });

    /*==========================
		javaScript for sticky header
		============================*/
    $(".sticky-header").sticky();

    /*=================================
    Javascript for banner area carousel
    ==================================*/
    $(".active-banner-slider").owlCarousel({
        items: 1,
        autoplay: false,
        autoplayTimeout: 5000,
        loop: true,
        nav: true,
        navText: ["<img src='../img/banner/prev.png'>", "<img src='../img/banner/next.png'>"],
        dots: false
    });

    /*=================================
    Javascript for product area carousel
    ==================================*/
    $(".active-product-area").owlCarousel({
        items: 1,
        autoplay: false,
        autoplayTimeout: 5000,
        loop: true,
        nav: true,
        navText: ["<img src='../img/product/prev.png'>", "<img src='../img/product/next.png'>"],
        dots: false
    });

    /*=================================
    Javascript for single product area carousel
    ==================================*/
    $(".s_Product_carousel").owlCarousel({
        items: 1,
        autoplay: false,
        autoplayTimeout: 5000,
        loop: true,
        nav: false,
        dots: true
    });

    /*=================================
    Javascript for exclusive area carousel
    ==================================*/
    $(".active-exclusive-product-slider").owlCarousel({
        items: 1,
        autoplay: false,
        autoplayTimeout: 5000,
        loop: true,
        nav: true,
        navText: ["<img src='../img/product/prev.png'>", "<img src='../img/product/next.png'>"],
        dots: false
    });

    //--------- Accordion Icon Change ---------//

    $('.collapse').on('shown.bs.collapse', function () {
        $(this).parent().find(".lnr-arrow-right").removeClass("lnr-arrow-right").addClass("lnr-arrow-left");
    }).on('hidden.bs.collapse', function () {
        $(this).parent().find(".lnr-arrow-left").removeClass("lnr-arrow-left").addClass("lnr-arrow-right");
    });

    // Select all links with hashes
    $('.main-menubar a[href*="#"]')
        // Remove links that don't actually link to anything
        .not('[href="#"]')
        .not('[href="#0"]')
        .click(function (event) {
            // On-page links
            if (
                location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
                &&
                location.hostname == this.hostname
            ) {
                // Figure out element to scroll to
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                // Does a scroll target exist?
                if (target.length) {
                    // Only prevent default if animation is actually gonna happen
                    event.preventDefault();
                    $('html, body').animate({
                        scrollTop: target.offset().top - 70
                    }, 1000, function () {
                        // Callback after animation
                        // Must change focus!
                        var $target = $(target);
                        $target.focus();
                        if ($target.is(":focus")) { // Checking if the target was focused
                            return false;
                        } else {
                            $target.attr('tabindex', '-1'); // Adding tabindex for elements not focusable
                            $target.focus(); // Set focus again
                        }
                        ;
                    });
                }
            }
        });


    // -------   Mail Send ajax

    $(document).ready(function () {
        var form = $('#booking'); // contact form
        var submit = $('.submit-btn'); // submit button
        var alert = $('.alert-msg'); // alert div for show alert message

        // form submit event
        form.on('submit', function (e) {
            e.preventDefault(); // prevent default form submit

            $.ajax({
                url: 'booking.php', // form action url
                type: 'POST', // form submit method get/post
                dataType: 'html', // request type html/json/xml
                data: form.serialize(), // serialize form data
                beforeSend: function () {
                    alert.fadeOut();
                    submit.html('Sending....'); // change submit button text
                },
                success: function (data) {
                    alert.html(data).fadeIn(); // fade in response data
                    form.trigger('reset'); // reset form
                    submit.attr("style", "display: none !important");
                    ; // reset submit button text
                },
                error: function (e) {
                    console.log(e)
                }
            });
        });
    });


    $(document).ready(function () {
        $('#mc_embed_signup').find('form').ajaxChimp();
    });


    if (document.getElementById("js-countdown")) {

        var countdown = new Date("October 17, 2018");

        function getRemainingTime(endtime) {
            var milliseconds = Date.parse(endtime) - Date.parse(new Date());
            var seconds = Math.floor(milliseconds / 1000 % 60);
            var minutes = Math.floor(milliseconds / 1000 / 60 % 60);
            var hours = Math.floor(milliseconds / (1000 * 60 * 60) % 24);
            var days = Math.floor(milliseconds / (1000 * 60 * 60 * 24));

            return {
                'total': milliseconds,
                'seconds': seconds,
                'minutes': minutes,
                'hours': hours,
                'days': days
            };
        }

        function initClock(id, endtime) {
            var counter = document.getElementById(id);
            var daysItem = counter.querySelector('.js-countdown-days');
            var hoursItem = counter.querySelector('.js-countdown-hours');
            var minutesItem = counter.querySelector('.js-countdown-minutes');
            var secondsItem = counter.querySelector('.js-countdown-seconds');

            function updateClock() {
                var time = getRemainingTime(endtime);

                daysItem.innerHTML = time.days;
                hoursItem.innerHTML = ('0' + time.hours).slice(-2);
                minutesItem.innerHTML = ('0' + time.minutes).slice(-2);
                secondsItem.innerHTML = ('0' + time.seconds).slice(-2);

                if (time.total <= 0) {
                    clearInterval(timeinterval);
                }
            }

            updateClock();
            var timeinterval = setInterval(updateClock, 1000);
        }

        initClock('js-countdown', countdown);

    }
    ;


    $('.quick-view-carousel-details').owlCarousel({
        loop: true,
        dots: true,
        items: 1,
    })


    //----- Active No ui slider --------//


    $(function () {

        if (document.getElementById("price-range")) {

            var nonLinearSlider = document.getElementById('price-range');

            noUiSlider.create(nonLinearSlider, {
                connect: true,
                behaviour: 'tap',
                start: [500, 4000],
                range: {
                    // Starting at 500, step the value by 500,
                    // until 4000 is reached. From there, step by 1000.
                    'min': [0],
                    '10%': [500, 500],
                    '50%': [4000, 1000],
                    'max': [10000]
                }
            });


            var nodes = [
                document.getElementById('lower-value'), // 0
                document.getElementById('upper-value')  // 1
            ];

            // Display the slider value and how far the handle moved
            // from the left edge of the slider.
            nonLinearSlider.noUiSlider.on('update', function (values, handle, unencoded, isTap, positions) {
                nodes[handle].innerHTML = values[handle];
            });

        }

    });


    //-------- Have Cupon Button Text Toggle Change -------//

    $('.have-btn').on('click', function (e) {
        e.preventDefault();
        $('.have-btn span').text(function (i, text) {
            return text === "Have a Coupon?" ? "Close Coupon" : "Have a Coupon?";
        })
        $('.cupon-code').fadeToggle("slow");
    });

    $('.load-more-btn').on('click', function (e) {
        e.preventDefault();
        $('.load-product').fadeIn('slow');
        $(this).fadeOut();
    });


    //------- Start Quantity Increase & Decrease Value --------//


    var value,
        quantity = document.getElementsByClassName('quantity-container');

    function createBindings(quantityContainer) {
        var quantityAmount = quantityContainer.getElementsByClassName('quantity-amount')[0];
        var increase = quantityContainer.getElementsByClassName('increase')[0];
        var decrease = quantityContainer.getElementsByClassName('decrease')[0];
        increase.addEventListener('click', function () {
            increaseValue(quantityAmount);
        });
        decrease.addEventListener('click', function () {
            decreaseValue(quantityAmount);
        });
    }

    function init() {
        for (var i = 0; i < quantity.length; i++) {
            createBindings(quantity[i]);
        }
    };

    function increaseValue(quantityAmount) {
        value = parseInt(quantityAmount.value, 10);

        console.log(quantityAmount, quantityAmount.value);

        value = isNaN(value) ? 0 : value;
        value++;
        quantityAmount.value = value;
    }

    function decreaseValue(quantityAmount) {
        value = parseInt(quantityAmount.value, 10);

        value = isNaN(value) ? 0 : value;
        if (value > 0) value--;

        quantityAmount.value = value;
    }

    init();

//------- End Quantity Increase & Decrease Value --------//

    /*----------------------------------------------------*/
    /*  Google map js
      /*----------------------------------------------------*/

    if ($("#mapBox").length) {
        var $lat = $("#mapBox").data("lat");
        var $lon = $("#mapBox").data("lon");
        var $zoom = $("#mapBox").data("zoom");
        var $marker = $("#mapBox").data("marker");
        var $info = $("#mapBox").data("info");
        var $markerLat = $("#mapBox").data("mlat");
        var $markerLon = $("#mapBox").data("mlon");
        var map = new GMaps({
            el: "#mapBox",
            lat: $lat,
            lng: $lon,
            scrollwheel: false,
            scaleControl: true,
            streetViewControl: false,
            panControl: true,
            disableDoubleClickZoom: true,
            mapTypeControl: false,
            zoom: $zoom,
            styles: [
                {
                    featureType: "water",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            color: "#dcdfe6"
                        }
                    ]
                },
                {
                    featureType: "transit",
                    stylers: [
                        {
                            color: "#808080"
                        },
                        {
                            visibility: "off"
                        }
                    ]
                },
                {
                    featureType: "road.highway",
                    elementType: "geometry.stroke",
                    stylers: [
                        {
                            visibility: "on"
                        },
                        {
                            color: "#dcdfe6"
                        }
                    ]
                },
                {
                    featureType: "road.highway",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            color: "#ffffff"
                        }
                    ]
                },
                {
                    featureType: "road.local",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            visibility: "on"
                        },
                        {
                            color: "#ffffff"
                        },
                        {
                            weight: 1.8
                        }
                    ]
                },
                {
                    featureType: "road.local",
                    elementType: "geometry.stroke",
                    stylers: [
                        {
                            color: "#d7d7d7"
                        }
                    ]
                },
                {
                    featureType: "poi",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            visibility: "on"
                        },
                        {
                            color: "#ebebeb"
                        }
                    ]
                },
                {
                    featureType: "administrative",
                    elementType: "geometry",
                    stylers: [
                        {
                            color: "#a7a7a7"
                        }
                    ]
                },
                {
                    featureType: "road.arterial",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            color: "#ffffff"
                        }
                    ]
                },
                {
                    featureType: "road.arterial",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            color: "#ffffff"
                        }
                    ]
                },
                {
                    featureType: "landscape",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            visibility: "on"
                        },
                        {
                            color: "#efefef"
                        }
                    ]
                },
                {
                    featureType: "road",
                    elementType: "labels.text.fill",
                    stylers: [
                        {
                            color: "#696969"
                        }
                    ]
                },
                {
                    featureType: "administrative",
                    elementType: "labels.text.fill",
                    stylers: [
                        {
                            visibility: "on"
                        },
                        {
                            color: "#737373"
                        }
                    ]
                },
                {
                    featureType: "poi",
                    elementType: "labels.icon",
                    stylers: [
                        {
                            visibility: "off"
                        }
                    ]
                },
                {
                    featureType: "poi",
                    elementType: "labels",
                    stylers: [
                        {
                            visibility: "off"
                        }
                    ]
                },
                {
                    featureType: "road.arterial",
                    elementType: "geometry.stroke",
                    stylers: [
                        {
                            color: "#d6d6d6"
                        }
                    ]
                },
                {
                    featureType: "road",
                    elementType: "labels.icon",
                    stylers: [
                        {
                            visibility: "off"
                        }
                    ]
                },
                {},
                {
                    featureType: "poi",
                    elementType: "geometry.fill",
                    stylers: [
                        {
                            color: "#dadada"
                        }
                    ]
                }
            ]
        });
    }


});

function showError() {
    document.getElementById("error").hidden = true;
}

function createPrivateKey(id) {
    $.ajax({
        type: "POST",
        url: "/createkey",
        data: {
            idUser: id
        },
        success: function (data) {
            let dataResponse = data;
            if (dataResponse != null) {
                $('#privateKey').val(data);
            } else {
                $('#privateKey').val("Tạo khóa thất bại");
            }
        }
    });
}

function saveCart(id, pri, idIt, obj) {
    $.ajax({
        url: "/cart-update",
        type: "POST",
        data: 'pid=' + id + '&qty=' + obj,

        success: function (data) {
            $(idIt).html(obj * pri)
            let x = document.querySelectorAll(idIt);
            for (let i = 0, len = x.length; i < len; i++) {
                let num = Number(x[i].innerHTML)
                    .toLocaleString('vn');
                x[i].innerHTML = num + '&#x20AB;';

            }
        }
    });
}

function checkCartItem(e, id) {
    var mycheck = document.getElementById(e);
    if (mycheck.checked == true) {
        checkBoxCart(e, id)
    } else if (mycheck.checked == false) {
        uncheckBoxCart(e, id)
    }
};

function checkBoxCart(id, idItem) {
    $.ajax({
        url: "/cart-check-out",
        type: "POST",
        data: 'cartId=' + idItem,

        success: function (data) {
            $('#litao').html("");
            var text = ""
            var total = 0;
            for (let i = 0; i < data.length; i++) {
                text += '<li ="li' + data[i].id + '"><a  class="abcxyz">' + data[i].product.name + '  x' + data[i].quantity + '</span> <span class="myDIV last">' + data[i].subtotal + 'đ</span></a> </li>';
                total += data[i].subtotal;
            }
            $('#litao').html(text)
            $('#subTotal').html('<span className="myDIV" id="total">' + (total + 25000) + 'đ</span>');
            $('#total').html('<span className="myDIV" id="total">' + total + 'đ</span>');

            ;
        }


    });

}

function uncheckBoxCart(id, idItem) {
    $.ajax({
        url: "/cart-uncheck-out",
        type: "POST",
        data: 'cartId=' + idItem,

        success: function (data) {
            $('#litao').html("");
            var text = "";
            var total = 0;
            for (let i = 0; i < data.length; i++) {
                text += '<li  id="li' + data[i].id + '"><a  class="abcxyz" >' + data[i].product.name + '  (x' + data[i].quantity + ')</span> <span class="myDIV last" >' + data[i].subtotal + 'đ</span></a> </li>';
                total += data[i].subtotal;
            }
            $('#litao').html(text);
            $('#subTotal').html('<span className="myDIV" id="total">' + (total + 25000) + 'đ</span>');
            $('#total').html('<span className="myDIV" id="total">' + total + 'đ</span>');
        }
    });
}

function addToCart(pid, qty) {
    $.ajax({
        url: "/add-to-cart",
        type: "POST",
        data: 'pid=' + pid + '&qty=' + qty,

        success: function (data) {
            $('#countCartSize').val(data);
            Swal.fire(
                'Đã thêm sản phẩm vào giỏ',
                'Bạn có thể xem sản phẩm tại giỏ hàng!',
                'success'
            )

        }
    });
}

function deleteUser(uid) {
    $.ajax({
        url: "/deleteUser",
        type: "POST",
        data: 'uid=' + uid,

        success: function (data) {
            Swal.fire(
                'Đã xóa tài khoản',
                'success'
            )

        }
    });
}

function savePrivateKey() {
    let data = $('#privateKey').val();
    var blob = new Blob([data],
        {type: "text/plain;charset=utf-8"});
    saveAs(blob, "privateKey.txt");
}

function alertNoti(status, content, description) {
    Swal.fire(
        content,
        description,
        status
    )
}

function tocheckout() {
    $.ajax({
        url: "/checkSize",
        type: "GET",
        data: {},

        success: function (data) {

            let dataResponse = data;
            if (dataResponse > 0) {
                window.location = "/checkout";
            } else {
                alertNoti('info', 'Chưa chọn sản phẩm', 'Vui lòng chọn sản phẩm!')
            }


        }
    });
}

function codeOder() {
    alertNoti('info', 'code nè');
}

function copyCodeOrder() {
    var copyText = document.getElementById("code-order");
    /* Select the text field */
    copyText.select();
    copyText.setSelectionRange(0, 99999); /* For mobile devices */

    /* Copy the text inside the text field */
    navigator.clipboard.writeText(copyText.value);
    alertNoti('info', "Đã sao chép");
}

function checkCodeOrder() {
    let text = $('#decodeText').val();
    $.ajax({
        url: "/tracking-order",
        type: "GET",
        data: {
            decodeText: text
        },
        success: function (data) {
            let t = data;
            if (t == "true") {
                alertNoti('info', "Xác nhận thành công");
                window.location = "/xac-nhan-don-hang";
            } else {
                alertNoti('info', "Xác nhận thất bại");
            }
        }
    })
}

function checkHash() {
    let text = $('#decodeHash').val();
    $.ajax({
        url: "/checkHash",
        type: "GET",
        data: {
            decodeText: text
        },
        success: function (data) {
            let t = data;
            if (t == "true") {
                Swal.fire(
                    'Chính xác',
                    'Thông tin trùng khớp với đơn hàng',
                    'success');
            } else {
                Swal.fire(
                    'Không chính xác',
                    'Thông tin không trùng khớp với đơn hàng',
                    'error'
                )
            }
        }
    })
}


function addNewAddress() {
    let phone = $('#phone').val();
    let province = $('#Province').val();
    let districts = $('#districts').val();
    let wards = $('#wards').val();
    let addressDetails = $('#addressDetails').val();
    $.ajax({
        url: "/add-address",
        type: "POST",
        data:
            'phone=' + phone + '&province=' + province + '&districts=' + districts + '&wards=' + wards + '&addressDetails=' + addressDetails
        ,
        success: function (data) {
            let t = data;
            if (t != null) {

                // $('#addressCre').html("");
                // var text ="";
                // for (let i = 0; i < data.length; i++) {
                //  text += '<div className="col-md-6"> <h5>Địa chỉ giao hàng</h5> <p>'+data[i].wards +', '+data[i].districts+', '+ data[i].province+'</p> <p>Số điện thoại: '+data[i].phone+'</p> <button className="btn" onclick="deleteAddress('+data[i].id+')">Xóa</button></div>'
                //
                // }

                alertNoti('success', "Tạo địa chỉ thành công");
                window.location.reload();
                // $('#addressCre').html(text);
            } else {
                alertNoti('error', "Tạo địa chỉ thất bại");
            }
        }
    })
}

function deleteAddress(id) {
    $.ajax({
        url: "/delete-address",
        type: "POST",
        data:
            {adId: id},
        success: function (data) {
            let t = data;
            if (t != null) {
                alertNoti('success', "Đã xóa địa  chỉ thành công");

                setTimeout(() => window.location.reload(), 1500);
            } else {
                alertNoti('error', "Xóa địa chỉ thất bại");
            }
        }
    })
}

function tickAddress(id) {
    $.ajax({
        url: "/tick-address",
        type: "POST",
        data:
            {adId: id},
        success: function (data) {
            let t = data;
            if (t != null) {
                alertNoti('info', data);
            } else {
                alertNoti('error', "");
            }
        }
    })
}

function addNewUser() {
    let fullName = $('#fullName').val();
    let userName = $('#userName').val();
    let birthday = $('#birthday').val();
    let passWord = $('#passWord').val();

    $.ajax({
        url: "/add-user",
        type: "POST",
        data:
            'fullName=' + fullName + '&userName=' + userName + '&birthday=' + birthday + '&passWord=' + passWord,
        success: function (data) {
            let t = data;
            if (t != null) {

                // $('#addressCre').html("");
                // var text ="";
                // for (let i = 0; i < data.length; i++) {
                //  text += '<div className="col-md-6"> <h5>Địa chỉ giao hàng</h5> <p>'+data[i].wards +', '+data[i].districts+', '+ data[i].province+'</p> <p>Số điện thoại: '+data[i].phone+'</p> <button className="btn" onclick="deleteAddress('+data[i].id+')">Xóa</button></div>'
                //
                // }

                alertNoti('success', "Thêm tài khoản thành công");
                window.location.reload();
                // $('#addressCre').html(text);
            } else {
                alertNoti('error', "Thêm tài khoản thất bại");
            }
        }
    })

}

function updateOderAdmin(obj) {
    var options = obj.children;
    var html = '';
    for (var i = 0; i < options.length; i++) {
        if (options[i].selected) {
            html = options[i].value;
        }
    }

    // let e = document.getElementById('order_status_'+id).value;


    $.ajax({

        url: "/admin/order/updateStatus",
        type: "POST",
        data:
            'status=' + html + '&oid=' + obj.id,
        success: function (data) {
            let t = data;
            if (t != null) {


                alertNoti('success', "Cập nhật đơn hàng thành công");
                window.location.reload();
                // $('#addressCre').html(text);
            } else {
                alertNoti('error', "Cập nhật đơn hàng thất bại");
            }
        }
    })
}

function cancelOder(obj) {
    $.ajax({
        url: "/cancelOder",
        type: "POST",
        data:
            {oid: obj.id},
        success: function (data) {
            let t = data;
            if (t != null) {
                alertNoti('success', "Đã hủy đơn hàng thành công");

                setTimeout(() => window.location.reload(), 1500);
            } else {
                alertNoti('error', "Hủy đơn hàng thất bại");
            }
        }
    })
}

function addAccount() {
    let name = $('#name').val();
    let price = $('#price').val();
    let description = $('#description').val();
    let image = $('#image').val();

    var data = new FormData();
    data.append('name', name);
    data.append('price', price);
    data.append('description', description);
    $.ajax({
        cache: false,
        contentType: 'multipart/form-data',
        processData: false,
        url: "/new_product_process",
        type: "POST",
        data:data
        ,
        success: function (data) {
            let t = data;
            if (t != null) {
                alertNoti('success', "Thêm sản phẩm thành công");
                window.location.reload();
            } else {
                alertNoti('error', "Thêm sản phẩm thất bại");
            }
        }
    })
}
$(document).ready(function() {
    $('#loader').hide();
    $("#submit").on("click", function() {
        $("#submit").prop("disabled", true);
        var name = $("#name").val();
        var file = $("#image").val();
        var price = $("#price").val();
        var description = $("#description").val();
        var form = $("#form").serialize();
        var data = new FormData($("#form")[0]);
        data.append('name', name);
        data.append('price', price);
        data.append('description', description);
        //alert(data);
        $('#loader').show();
        if (name === "" || file === "" || price === "" || description === "") {
            $("#submit").prop("disabled", false);
            $('#loader').hide();
            $("#name").css("border-color", "red");
            $("#image").css("border-color", "red");
            $("#price").css("border-color", "red");
            $("#description").css("border-color", "red");
            $("#error_name").html("Please fill the required field.");
            $("#error_file").html("Please fill the required field.");
            $("#error_price").html("Please fill the required field.");
            $("#error_description").html("Please fill the required field.");
        } else {
            $("#name").css("border-color", "");
            $("#image").css("border-color", "");
            $("#price").css("border-color", "");
            $("#description").css("border-color", "");
            $('#error_name').css('opacity', 0);
            $('#error_file').css('opacity', 0);
            $('#error_price').css('opacity', 0);
            $('#error_description').css('opacity', 0);
            $.ajax({
                type: 'POST',
                enctype: 'multipart/form-data',
                data: data,
                url: "/new_product_process",
                processData: false,
                contentType: false,
                cache: false,
                success: function(data) {
                    let t = data;
                    if (t != null) {
                        alertNoti('success', "Thêm sản phẩm thành công");
                        window.location.reload();
                    } else {
                        alertNoti('error', "Thêm sản phẩm thất bại");

                    }
                },
                error: function(e) {
                    $('#loader').hide();
                    $('#error').css('display','block');
                    $("#error").html("Oops! something went wrong.");
                    $('#error').delay(5000).fadeOut('slow');
                    location.reload();
                }
            });
        }
    });
});
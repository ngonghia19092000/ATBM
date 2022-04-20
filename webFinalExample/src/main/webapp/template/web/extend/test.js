$("input[type=password]").keyup(function() {
    var ucase = new RegExp("[A-Z]+");
    var lcase = new RegExp("[a-z]+");
    var num = new RegExp("[0-9]+");

    if ($("#password1").val().length >= 8) {
        $("#8char").removeClass("fa fa-times");
        $("#8char").addClass("fa fa-check");
        $("#8char").css("color", "#00A41E");
    } else {
        $("#8char").removeClass("fa fa-check");
        $("#8char").addClass("fa fa-times");
        $("#8char").css("color", "#FF0004");
    }

    if (ucase.test($("#password1").val())) {
        $("#ucase").removeClass("fa fa-times");
        $("#ucase").addClass("fa fa-check");
        $("#ucase").css("color", "#00A41E");
    } else {
        $("#ucase").removeClass("fa fa-check");
        $("#ucase").addClass("fa fa-times");
        $("#ucase").css("color", "#FF0004");
    }

    if (lcase.test($("#password1").val())) {
        $("#lcase").removeClass("fa fa-times");
        $("#lcase").addClass("fa fa-check");
        $("#lcase").css("color", "#00A41E");
    } else {
        $("#lcase").removeClass("fa fa-check");
        $("#lcase").addClass("fa fa-times");
        $("#lcase").css("color", "#FF0004");
    }

    if (num.test($("#password1").val())) {
        $("#num").removeClass("fa fa-times");
        $("#num").addClass("fa fa-check");
        $("#num").css("color", "#00A41E");
    } else {
        $("#num").removeClass("fa fa-check");
        $("#num").addClass("fa fa-times");
        $("#num").css("color", "#FF0004");
    }

    if ($("#password1").val() == $("#password2").val()) {
        $("#pwmatch").removeClass("fa fa-times");
        $("#pwmatch").addClass("glyphicon-ok");
        $("#pwmatch").css("color", "#00A41E");
    } else {
        $("#pwmatch").removeClass("fa fa-check");
        $("#pwmatch").addClass("fa fa-times");
        $("#pwmatch").css("color", "#FF0004");
    }
});
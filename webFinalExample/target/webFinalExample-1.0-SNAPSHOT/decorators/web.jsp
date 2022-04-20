<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<c:url var="AutoSearch" value="/auto-search"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Jadusona</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/template/web/assets/images/favicon.ico" />">
    <!-- CSS
    ============================================ -->
    <!-- FontAnsome -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/font-awesome/css/font-awesome.min.css"/> ">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/bootstrap.min.css"/> ">
    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/icon-font.min.css"/> ">
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/plugins.css"/> ">
    <!-- Helper CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/helper.css"/> ">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/style.css"/> ">
    <!--  -->
    <link rel="stylesheet"
          href="<c:url value="/template/web/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/> ">
    <!-- Modernizer JS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/chatbot.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/loader.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/css/style.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/myacc.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/extend/pass2.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/extend/test.js"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/extend/myaccount.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/extend/payment-method.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/extend/payment-method.js"/> ">
    <link rel="stylesheet"
          href="<c:url value="/template/web/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/css/raleway-font.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/css/style.css"/> ">
    <link rel="stylesheet"
          href="<c:url value="/template/web/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/template/web/extend/auto-complete.css"/> ">
    <script src="<c:url value="/template/web/extend/auto-complete.js"/>"></script>
    <script src="<c:url value="/template/web/assets/js/vendor/jquery-1.12.4.min.js"/>"></script>
    <script src="<c:url value="/template/web/js/jquery-3.3.1.min.js"/>"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-latest.pack.js"></script>






</head>
<body>
<!-- header -->
<%@ include file="/common/web/header.jsp" %>
<!-- header -->
<script src="<c:url value="/template/web/js/jquery-3.3.1.min.js"/>"></script>
<script src="<c:url value="/template/web/assets/js/vendor/jquery-1.12.4.min.js"/>"></script>


<dec:body/>


<!-- footer -->
<%@ include file="/common/web/footer.jsp" %>
<!-- footer -->
<script src="https://www.google.com/recaptcha/api.js"></script>
<%--script--%>
<script src="<c:url value="/template/web/assets/js/vendor/jquery-1.12.4.min.js"/>"></script>
<!-- Popper JS -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="<c:url value="/template/web/assets/js/popper.min.js"/>"></script>
<!-- Bootstrap JS -->
<script src="<c:url value="/template/web/assets/js/bootstrap.min.js"/>"></script>
<!-- Plugins JS -->
<script src="<c:url value="/template/web/assets/js/plugins.js"/>"></script>
<!-- Ajax Mail -->
<script src="<c:url value="/template/web/assets/js/ajax-mail.js"/>"></script>
<!-- Main JS -->
<script src="<c:url value="/template/web/assets/js/main.js"/>"></script>
<script src="<c:url value="/template/web/extend/test.js"/>"></script>
<script src="<c:url value="/template/web/assets/jquery-validation-1.19.2/dist/jquery.validate.min.js"/>"></script>
<script src="<c:url value="/template/web/assets/jquery-validation-1.19.2/dist/additional-methods.min.js"/>"></script>
<script src="<c:url value="/template/web/js/jquery.steps.js"/>"></script>
<script src="<c:url value="/template/web/js/main.js"/>"></script>
<script src="<c:url value="/template/web/assets/js/vendor/modernizr-2.8.3.min.js"/>"></script>
<%--facebook--%>
<script src="<c:url value="/template/web/extend/fb.js"/>"></script>
<script src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>



<script type="text/javascript">
    $(document).ready(function () {
        $(".chat_on").click(function () {
            $(".Layout").toggle();
            $(".chat_on").hide(300);
        });

        $(".chat_close_icon").click(function () {
            $(".Layout").hide();
            $(".chat_on").show(300);
        });

    });
</script>
<script src="<c:url value="/template/web/extend/auto-complete.js"/>"></script>
<script>
    var xhr;
    new autoComplete({
        selector: 'input[name="search"]',
        minChars: 2,
        source: function (term, response) {
            try {
                xhr.abort();
            } catch (e) {
            }
            xhr = $.getJSON('${AutoSearch}', {q: term}, function (data) {
                response(data);
            });
        }
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/places.js@1.19.0"></script>
<script>
    (function () {
        var placesAutocomplete = places({
            appId: 'plEAKWJAEHYJ',
            apiKey: '7ab879dc48ef04ff2bc147586b3668d0',
            container: document.querySelector('#form-address'),
            templates: {
                value: function (suggestion) {
                    return suggestion.name;
                }
            }
        }).configure({
            type: 'address'
        });
        placesAutocomplete.on('change', function resultSelected(e) {
            document.querySelector('#form-address2').value = e.suggestion.administrative || '';
            document.querySelector('#form-city').value = e.suggestion.city || '';
            document.querySelector('#form-zip').value = e.suggestion.postcode || '';
        });
    })();
</script>


</body>
</html>

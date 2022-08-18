<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%--header ở đaya--%>
<%@ include file="_admin-header.jsp" %>
<body>
<%--content--%>
<section class="banner-area organic-breadcrumb">
    <div class="container">
        <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
            <div class="col-first">
                <h1>Trang quản trị</h1>
            </div>
        </div>
    </div>
</section>
<  <div class="container">
    <div class="row">
        <div class="col">
            <p class="text-white mt-5 mb-5">Welcome back, <b>Admin</b></p>
        </div>
    </div>
    <!-- row -->
    <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
            <div class="tm-bg-primary-dark tm-block">
                <h2 class="tm-block-title">Latest Hits</h2>
                <canvas id="lineChart"></canvas>
            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
            <div class="tm-bg-primary-dark tm-block">
                <h2 class="tm-block-title">Performance</h2>
                <canvas id="barChart"></canvas>
            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-taller">
                <h2 class="tm-block-title">Storage Information</h2>
                <div id="pieChartContainer">
                    <canvas id="pieChart" class="chartjs-render-monitor" width="200" height="200"></canvas>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
<%@ include file="_footer.jsp" %>
<%@ include file="_admin-footer.jsp" %>
</html>


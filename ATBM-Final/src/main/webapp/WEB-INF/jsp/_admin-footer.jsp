
<script src="../js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="../js/moment.min.js"></script>
<!-- https://momentjs.com/ -->
<script src="../js/Chart.min.js"></script>
<!-- http://www.chartjs.org/docs/latest/ -->
<script src="../js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script src="../js/tooplate-scripts.js"></script>
<script src="../js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.17/dist/sweetalert2.all.min.js"></script>
<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>

<script src="../js/jquery.ajaxchimp.min.js"></script>
<script src="../js/jquery.nice-select.min.js"></script>
<script src="../js/jquery.sticky.js"></script>
<script src="../js/nouislider.min.js"></script>
<script src="../js/jquery.magnific-popup.min.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<!--gmaps Js-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
<script src="../js/gmaps.min.js"></script>

<script>
    Chart.defaults.global.defaultFontColor = 'white';
    let ctxLine,
        ctxBar,
        ctxPie,
        optionsLine,
        optionsBar,
        optionsPie,
        configLine,
        configBar,
        configPie,
        lineChart;
    barChart, pieChart;
    // DOM is ready
    $(function () {
        drawLineChart(); // Line Chart
        drawBarChart(); // Bar Chart
        drawPieChart(); // Pie Chart

        $(window).resize(function () {
            updateLineChart();
            updateBarChart();
        });
    })
</script>
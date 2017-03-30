<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lumino - Dashboard</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<jsp:include page="adminHead.jsp"></jsp:include>


<div style="margin-left: 220px">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">新商家统计</div>
                <div class="panel-body">
                    <div class="canvas-wrapper">
                        <canvas class="main-chart" id="line-chart" height="200" width="600"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/.row-->
</div>
<div style="margin-left: 220px;height: 50px;text-align: center">
    <form action="sellerAdmin.html">
        <input type="text" name="sellerSearch" value="${param.sellerSearch}" id="sellerSearch" style="width: 500px;height: 30px">

        <button type="submit">搜索</button>
    </form>
</div>
<div style="margin-left: 220px">
    <table class="table table-striped table-hover ">
        <thead>
        <tr>
            <th>#</th>
            <th>商家名字</th>
            <th>电话</th>
            <th>地址</th>
            <th>身份证</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${seller}" var="se">


            <tr>

                <th>${se.id}</th>
                <th>${se.name}</th>
                <th>${se.tel}</th>
                <th>${se.address}</th>
                <th>${se.card}</th>

            </tr>
        </c:forEach>

        </tbody>
    </table>
    <div style="margin-left: 850px">
        <ul class="pagination">
            <li><a href="#">&laquo;</a></li>
            <c:forEach begin="0" end="${pages-1}" var="i">
                <li><a href="#"  onclick="javascript:return jumptopage(${i})">${i+1}</a></li>
            </c:forEach>
            <li><a href="#">&raquo;</a></li>
        </ul>
    </div>
</div>


<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/chart.min.js"></script>

<script>
    $('#calendar').datepicker({});

    !function ($) {
        $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
            $(this).find('em:first').toggleClass("glyphicon-minus");
        });
        $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
    }(window.jQuery);

    $(window).on('resize', function () {
        if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
    })
    $(window).on('resize', function () {
        if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
    })
</script>
<script>
    var randomScalingFactor = function () {
        return Math.round(Math.random() * 1000)
    };

    var lineChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [
            {
                label: "My First dataset",
                fillColor: "rgba(220,220,220,0.2)",
                strokeColor: "rgba(220,220,220,1)",
                pointColor: "rgba(220,220,220,1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(220,220,220,1)",
                data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
            },
            {
                label: "My Second dataset",
                fillColor: "rgba(48, 164, 255, 0.2)",
                strokeColor: "rgba(48, 164, 255, 1)",
                pointColor: "rgba(48, 164, 255, 1)",
                pointStrokeColor: "#fff",
                pointHighlightFill: "#fff",
                pointHighlightStroke: "rgba(48, 164, 255, 1)",
                data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
            }
        ]

    }
    window.onload = function () {
        var chart1 = document.getElementById("line-chart").getContext("2d");
        window.myLine = new Chart(chart1).Line(lineChartData, {
            responsive: true
        });
    }
    function jumptopage(page) {
        var keyword = $('#sellerSearch').val();
        location.href = "sellerAdmin.html?pageno=" + page + "&sellerSearch=" +keyword;
        return false;
    }
</script>
</body>

</html>

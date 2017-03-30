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
                <div class="panel-heading">新商品统计</div>
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
    <form action="fruitAdmin.html">
    <input type="text" name="fruitSearch" value="${param.fruitSearch}" id="fruitSearch" style="width: 500px;height: 30px">
    <select name="type" style="height: 30px">
        <option value ="1">进口水果</option>
        <option value ="2">本地水果</option>
    </select>
    <button type="submit">搜索</button>
    </form>
</div>
<div style="margin-left: 220px">
    <table class="table table-striped table-hover ">
        <thead>
        <tr>
            <th>#</th>
            <th>商品名称</th>
            <th>价格</th>
            <th>图片</th>
            <th>分类</th>
            <th>特点</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${fruit}" var="fs">
            <tr>
                <th>${fs.id}</th>
                <th>${fs.name}</th>
                <th>${fs.price}</th>
                <th><img src="../${fs.image}" width="60"/></th>
                <th>${fs.type}</th>
                <th>${fs.feature}</th>
                <th>${fs.createDate}</th>

                <th>
                    <a class="btn btn-xs btn-warning" data-toggle="tooltip"
                       title="修改商品"
                       href="UpdeteFruitView.html?id=${fs.id}"
                       role="button">
                        <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                    </a>
                    <a role="button" class="btn btn-xs btn-danger"
                       data-toggle="tooltip" title="删除商品"
                       href="deleteFruit.html?id=${fs.id}"
                    >
                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                    </a>
                </th>
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
        var keyword = $('#fruitSearch').val();
        location.href = "fruitAdmin.html?pageno=" + page + "&fruitSearch=" +keyword;
        return false;
    }
</script>
</body>

</html>

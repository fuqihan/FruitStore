<%--
  Created by IntelliJ IDEA.
  User: 符启晗
  Date: 2016/12/7
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<jsp:include page="adminHead.jsp"></jsp:include>
<form action="userAdmin.html">
    <div style="margin-left: 220px">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">新用户统计</div>
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
        <input type="text" name="userSearch" value="${param.userSearch}" id="userSearch" style="width: 500px;height: 30px">
        <button type="submit">搜索</button>
    </div>
    <div style="margin-left: 220px">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-info">

                        <div class="panel-body">
                            <table class="table table-striped table-hover table-condensed">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>账号</th>
                                    <th>姓名</th>
                                    <th>创建时间</th>
                                    <td>电话</td>
                                    <td>地址</td>
                                    <td>操作</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${uss}" var="us">


                                    <tr>

                                        <th>${us.id}</th>
                                        <th>${us.userName}</th>
                                        <th>${us.name}</th>
                                        <th>${us.createDate}</th>
                                        <td>${us.telPhone}</td>
                                        <td>${us.address}</td>
                                        <td>
                                            <a class="btn btn-xs btn-warning" data-toggle="tooltip"
                                               title="修改用户"
                                               href="UpdeteUserView.html?id=${us.id}"
                                               role="button">
                                                <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                                            </a>
                                            <a role="button" class="btn btn-xs btn-danger"
                                                    data-toggle="tooltip" title="禁用用户"
                                               href="deleteUser.html?id=${us.id}"
                                                    >
                                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <nav class="pull-right">
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="0" end="${pages-1}" var="i">
                                        <li><a href="#"  onclick="javascript:return jumptopage(${i})">${i+1}</a></li>
                                    </c:forEach>
                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div><!--ending panel-->
                </div>
            </div><!--ending 2th row-->
        </div>
    </div>
</form>
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
        var keyword = $('#userSearch').val();
        location.href = "userAdmin.html?pageno=" + page + "&userSearch=" + keyword;
        return false;
    }
</script>
</body>
</html>
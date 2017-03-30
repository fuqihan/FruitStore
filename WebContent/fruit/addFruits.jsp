<%@ page pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>添加商品</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            <div class="panel panel-warning">
                <div class="panel-heading text-center">添 加 商 品
                </div>
                <form role="form" method="post" action="addGoods.html" enctype="multipart/form-data">
                    <div class="panel-body">
                        <div class="form-group">
                            <label for="name">
                                <span class="glyphicon glyphicon-user"></span> 商品名称
                            </label>
                            <input type="text" class="form-control" id="name" name="name"
                                   autofocus="autofocus" required="required"  />
                        </div>
                        <div class="form-group">
                            <label for="type">
                                <span class="glyphicon glyphicon-user"></span> 类型
                            </label>
                            <td>
                                <select class="form-control" name="type" id="type"
                                        autofocus="autofocus" required="required">
                                    <option value="1">热带水果</option>
                                    <option value="2">进口水果</option>
                                </select>
                            </td>
                        </div>
                        <div class="form-group">
                            <label for="price">
                                <span class="glyphicon glyphicon-user"></span> 价格
                            </label>
                            <input type="text" class="form-control" id="price" name="price"
                                   autofocus="autofocus" required="required"  />
                        </div>
                        <div class="form-group">
                            <label for="img">
                                <span class="glyphicon glyphicon-lock"></span> 图片
                            </label>
                            <input type="file" id="img" name="img" />
                            <p class="help-block">请选择上传的商品图片</p>
                            <img src="./Images/image03.jpg" width="80"/>
                        </div>
                        <div class="form-group">
                            <label for="feature">
                                <span class="glyphicon glyphicon-user"></span> 特点
                            </label>
                            <input type="text" class="form-control" id="feature" name="feature"
                                   autofocus="autofocus" required="required"  />
                        </div>
                    </div>
                    <div class="panel-footer text-center">
                        <button type="submit" class="btn btn-warning">确认添加</button>&nbsp;&nbsp;
                        <a role="button" class="btn btn-default" href="sellerGoodsInfo.html">放弃返回</a>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div><!--ending 1th row-->
</div><!--ending container-->

</body>
</html>
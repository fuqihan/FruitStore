<%@ page pageEncoding="UTF-8" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>edit_user</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
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
			<div class="panel-heading text-center">修 改 用 户
			</div>
			<form role="form" method="post" action="editUser.html">
			<input type="hidden" name="id" value="${users.id}">
			<div class="panel-body">
				<div class="form-group">
					<label for="username">
						<span class="glyphicon glyphicon-user"></span> 用户名
					</label>
					<input type="text" class="form-control" id="username" name="userName"
					autofocus="autofocus" required="required" value="${users.userName}" />
				</div>
				<div class="form-group">
					<label for="name">
						<span class="glyphicon glyphicon-user"></span> 用户名
					</label>
					<input type="text" class="form-control" id="name" name="name"
						   autofocus="autofocus" required="required" value="${users.name}" />
				</div>
				<div class="form-group">
					<label for="password">
						<span class="glyphicon glyphicon-lock"></span> 密码
					</label>
					<input type="password" class="form-control" id="password" name="password"
					 required="required" value="${users.password}" />
				</div>
				<div class="form-group">
					<label for="password1">
						<span class="glyphicon glyphicon-lock"></span> 确认密码
					</label>
					<input type="password" class="form-control" id="password1" required="required"  value="${users.password}"/>
				</div>
				<div class="form-group">
					<label for="telphone">
						<span class="glyphicon glyphicon-lock"></span> 电话
					</label>
					<input type="text" class="form-control" id="telphone" name="telPhone" required="required"  value="${users.telPhone}"/>
				</div>



				<div class="form-group">
					<label for="address">
						<span class="glyphicon glyphicon-globe"></span> 地址
					</label>
					<input type="text" class="form-control" id="address" name="address"
					required="required"  value="${users.address}"/>
				</div>
			</div>
			<div class="panel-footer text-center">
				<button type="submit" class="btn btn-warning">确认修改</button>&nbsp;&nbsp;
				<a role="button" class="btn btn-default" href="userAdmin.html">放弃返回</a>
			</div>
			</form>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div><!--ending 1th row-->
	</div><!--ending container-->
	
</body>
</html>
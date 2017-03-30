<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="resultHead.jsp">
		<jsp:param value="结果页面" name="title"/>
	</jsp:include>
</head>
<body>
<!--操作结果对话框-->
<div class="modal fade" id="modal-result" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" aria-hidden="true" type="button" data-dismiss="modal">
					×
				</button>
				<span class="modal-title" id="myModalLabel">
					提示信息
				</span>
			</div>
			<div class="modal-body">
					<h3 class="text-warning"><%=request.getAttribute("msg")  %></h3>
			</div>
			<div class="modal-footer">
       			<button type="button" class="btn btn-default" data-dismiss="modal"
       			 onclick="javascript:location.replace('<%=request.getAttribute("href") %>')">确定</button>
			</div>
		</div>
	</div>
</div>
<script>
	$('#modal-result').modal();
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="Bean.Reimburse" import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>表单</title>
<link rel="stylesheet" href="frame/layui/css/layui.css">
<link rel="stylesheet" href="frame/static/css/style.css">
<link rel="icon" href="frame/static/image/code.png">
<link rel="stylesheet" type="text/css" href="yk_css/formstyle.css">


<link rel="stylesheet" href="menu2/dist/css/component-chosen.min.css">
<script src="menu2/js/jquery-1.11.0.min.js"></script>
<script src="menu2/js/chosen.jquery.js"></script>


</head>
<body class="body">

<%
		Reimburse r = (Reimburse) request.getAttribute("cheackreimburse");
	%>
	<blockquote class="layui-elem-quote layui-text">
		请务必认真审批报销申请表单，该表将交由各部门审批。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>审批报销申请表单</legend>
	</fieldset>

	<form action="JudgeReimburseServlet" class="oneform" method="post">
		<div class="layui-inline">
			<label class="layui-form-label">报销表编号</label>
		</div>
		<div class="layui-inline">
			<%=r.getRno()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">员工姓名</label>
		</div>
		<div class="layui-inline">
			<%=r.getUsername()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">交通花销</label>
		</div>
		<div class="layui-inline">
			<%=r.getCarmoney()%>
		</div>
		<br> <img alt="" src="upload<%=r.getCarimg()%>"
			style="height: 200px; width: 400px;"><br>
		<div class="layui-inline">
			<label class="layui-form-label">住宿花销</label>
		</div>
		<div class="layui-inline">
			<%=r.getHotelmoney()%>
		</div>
		<br> <img alt="" src="upload<%=r.getHotelimg()%>"
			style="height: 200px; width: 400px;"><br>
		<div class="layui-inline">
			<label class="layui-form-label">餐饮花销</label>
		</div>
		<div class="layui-inline">
			<%=r.getFoodmoney()%>
		</div>
		<br> <img alt="" src="upload<%=r.getFoodimg()%>"
			style="height: 200px; width: 400px;"><br> <br>
		<div class="layui-inline">
			<label class="layui-form-label">总金额</label>

		</div>
		<%
			int money = r.getCarmoney() + r.getHotelmoney() + r.getFoodmoney();
		%>
		<div class="layui-inline"><%=money %></div>
		<br> <label class="layui-form-label">报销信息</label>
		<div><textarea name="plan" required="required" rows="10" cols="80"
			style="margin-top: 10px" readonly="readonly"><%=r.getInfo()%></textarea>
</div>
		<br>
		<div class="" style="margin-left: 35px; color: red">
			<p>
				<strong id="demo"> </strong>
			</p>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">审批理由</label>
			<textarea name="reason" rows="10" cols="80" readonly="readonly">aaaaaaa</textarea>
		</div>
		<br>
	</form>

	<script type="text/javascript">
		function myFunction() {
			var str;
			var  x =<%=r.getStatus()%>;
		if (x == 2) {
			str = "通过"
		} else if (x == 1) {
			str = "经理审核通过"
		} else if (x == -1) {
			str = "不通过"
		} else {
			str = "未查看"
		}
			document.getElementById("demo").innerHTML = str;
		}
		$(document).ready(function() {
			myFunction();
		});
	</script>

</body>
</html>
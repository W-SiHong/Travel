<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Bean.Summary" import="java.util.*"%>
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
		Summary s = (Summary) request.getAttribute("cheacksummary");
	%>
	<blockquote class="layui-elem-quote layui-text">
		请务必认真阅读出差总结表单，查看部门审批理由。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>查看出差总结表单</legend>
	</fieldset>

	<form action="TravelApplicationServlet" class="oneform" method="post">
		<div class="layui-inline">
			<label class="layui-form-label">总结表编号</label>
		</div>
		<div class="layui-inline">
			<%=s.getSno()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">申请表编号</label>
		</div>
		<div class="layui-inline">
			<%=s.getTno()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">员工姓名</label>
		</div>
		<div class="layui-inline">
			<%=s.getUsername()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label"
				style="width: 86px; padding: 9px 12px;">实际出发日期</label>
		</div>
		<div class="layui-inline">
			<%=s.getRealleavetime()%>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label"
				style="width: 86px; padding: 9px 12px;">实际返程日期</label>
		</div>
		<div class="layui-inline">
			<%=s.getRealbacktime()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label"
				style="width: 86px; padding: 9px 12px;">实际花费金额</label>

		</div>
		<div class="layui-inline">
			<%=s.getRealexpense()%>
		</div>
		<br>
		
		<div>
			<label class="layui-form-label">出差总结</label>
			<textarea name="plan" required="required" rows="10" cols="80"
				style="margin-top: 10px" readonly="readonly"><%=s.getSummary()%></textarea>

		</div>
		<br>
		
			<p>
				<strong id="demo"></strong>
			</p>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">审批理由</label>
			<textarea name="reason" rows="10" cols="80" readonly="readonly"><%=s.getReason() %></textarea>
		</div>
		<br>
	</form>
<script type="text/javascript">
		function myFunction() {
			var str;
			var x=<%=s.getStatus()%>;
			if (x == 2) {
				str = "已提交报销"
			} else if (x == 1) {
				str = "通过"
			}else if (x == 0) {
				str = "未查看"
			}else {
				str = "未通过"
			}
			document.getElementById("demo").innerHTML=str;
		}
		$(document).ready(function(){
			myFunction();
			});
	</script>


</body>
</html>
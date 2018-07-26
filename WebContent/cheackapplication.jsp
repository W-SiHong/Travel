<!DOCTYPE html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Bean.TravelList" import="java.util.*"%>
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
		TravelList l = (TravelList) request.getAttribute("cheackapplication");
	%>

	<blockquote class="layui-elem-quote layui-text">
		请务必认真阅读出差申请表单，查看部门审批理由。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>查看出差申请表单</legend>
	</fieldset>

	<form action="TravelApplicationServlet" class="oneform" method="post">

		<div class="layui-inline">
			<label class="layui-form-label">员工姓名</label>
		</div>
		<div class="layui-inline">
			<%=l.getUsername()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">员工编号</label>
		</div>
		<div class="layui-inline">
			<%=l.getNum()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">出差目的</label>
		</div>
		<div class="layui-inline">
			<%=l.getPurposes()%>
		</div>

		<br>
		<div class="layui-inline">
			<label class="layui-form-label">出发日期</label>
		</div>
		<div class="layui-inline">
			<%=l.getLeavetime()%>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">返程日期</label>
		</div>
		<div class="layui-inline">
			<%=l.getBacktime()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">预借款金额</label>
		</div>
		<div class="layui-inline">
			<%=l.getExpense()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">出差类型</label>
		</div>
		<div class="layui-inline">
			<%=l.getType()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">出差地点</label>
		</div>
		<div class="layui-inline">
			<%=l.getDestination()%>
		</div>
		<div>
			<label class="layui-form-label">出差计划</label>
			<textarea name="plan" required="required" rows="10" cols="80"
				style="margin-top: 10px" readonly="readonly"><%=l.getPlan()%></textarea>

		</div>
		<div style="margin-top: 10px">
			<label class="layui-form-label">上传照片</label> <img alt=""
				src="upload<%=l.getImg()%>" style="height: 200px; width: 400px;"><br>
		</div>
		<br>
		<div class="" style="margin-left: 35px; color: red">
			<p>
				<strong id="demo"></strong>
			</p>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">审批理由</label>
			<textarea name="reason" rows="10" cols="80" readonly="readonly"><%=l.getReason()%></textarea>
		</div>
		<br>
	</form>
	<script type="text/javascript">
		function myFunction() {
			var str;
			var x =<%=l.getStatus()%>;
			if (x == 3) {
				str = "全部通过"
			} else if (x == 2) {
				str = "部门经理和成本控制专员通过"
			}else if (x == 1) {
				str = "部门经理通过"
			} 
			else if (x == 0) {
				str = "未查看"
			} else if (x ==4) {
				str = "已提交总结"
			}  else {
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
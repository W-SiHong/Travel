<!DOCTYPE html>
<html lang="en">
<head>
<%@page import="Bean.TravelList" import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		TravelList l = (TravelList) request.getAttribute("listdetail");
	%>

	<blockquote class="layui-elem-quote layui-text">
		请务必认真审批出差申请表单，该表将交由各部门审批。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>审批出差申请表单</legend>
	</fieldset>

	<form action="Judge3Servlet" class="oneform" method="post">
		<div class="layui-inline">
			<label class="layui-form-label">出差目的</label>
		</div>
		<div class="layui-inline">
			<%=l.getPurposes()%>
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
			<label class="layui-form-label">员工姓名</label>
		</div>
		<div class="layui-inline"><%=l.getUsername()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">手机号</label>
		</div>
		<div class="layui-inline"><%=l.getTelphone()%>
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
		<div class="" style="margin-left: 35px">
			<input name="status" type="radio" value="不通过">审批不通过 <input
				name="status" type="radio" value="通过">审批通过<br>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">审批理由</label>
			<textarea name="reason" rows="10" cols="80"></textarea>
		</div>
		<br>
		<div class="layui-inline"
			style="margin-left: 38px; margin-top: 20px; margin-left: 110px">
			<input type="hidden" name="tno" value=<%=l.getTno()%>> <input
				type="submit" name="submit2" value="提交审批"
				style="background: #1E88C7; border-style: none; width: 124px; height: 35px; background-repeat: no-repeat;">
		</div>
	</form>


</body>
</html>
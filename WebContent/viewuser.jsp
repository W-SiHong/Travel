<!DOCTYPE html>
<%@page import="Bean.User" import="java.util.*"%>
<html lang="en">
<head>
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
		User u = (User) request.getAttribute("viewuser");
	%>

	<blockquote class="layui-elem-quote layui-text">
		查看个人信息，如与实际情况不符，请联系管理员</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>个人信息详情</legend>
	</fieldset>

	<table>
		<div class="layui-inline">
			<label class="layui-form-label">用户名：</label>
		</div>
		<div class="layui-inline">
			<%=u.getUsername()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">员工姓名：</label>
		</div>
		<div class="layui-inline">
			<%=u.getRealname()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">性别：</label>
		</div>
		<div class="layui-inline">
			<%=u.getSexual()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">所在部门：</label>
		</div>
		<div class="layui-inline"><%=u.getDepartment()%>
		</div>
		<br>
			<div class="layui-inline">
			<label class="layui-form-label">担任职位：</label>
		</div>
		<div class="layui-inline">
			<%=u.getPosition()%>
		</div>
		<br>
		
		<div class="layui-inline">
			<label class="layui-form-label">手机号：</label>
		</div>
		<div class="layui-inline"><%=u.getPhone()%>
		</div>
		<br>
		<div class="layui-inline" >
			<label class="layui-form-label" style="width: 86px;margin-left: -7px">工资卡余额：</label>
		</div>
		<div class="layui-inline"><%=u.getDmoney()%>
		</div>
		<br>
	</table>

</body>
</html>
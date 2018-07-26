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
		Reimburse r = (Reimburse) request.getAttribute("reimbursedetail");
	%>
	<blockquote class="layui-elem-quote layui-text">
		请务必认真审批报销申请表单，该表将交由各部门审批。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>审批报销申请表单</legend>
	</fieldset>

	<form action="JudgeReimburse2Servlet" class="oneform" method="post">
		<div class="layui-inline">
			<label class="layui-form-label">报销表编号</label>
		</div>
		<div class="layui-inline">
			<%=r.getRno()%>
		</div>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">员工用户名</label>
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
		<div class="" style="margin-left: 35px">
			<input name="status" type="radio" value="不通过">审批不通过 <input
				name="status" type="radio" value="通过">审批通过<br>
		</div>
		<input type="hidden" name="rno" value=<%=r.getRno()%>>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">审批理由</label>
			<textarea name="reason" rows="10" cols="80"></textarea>
		</div>
		<br>
		<div class="layui-inline"
			style="margin-left: 38px; margin-top: 20px; margin-left: 110px">
			<input type="submit" name="submit2" value="提交审批"
				style="background: #1E88C7; border-style: none; width: 124px; height: 35px; background-repeat: no-repeat;">
		</div>
	</form>



</body>
</html>
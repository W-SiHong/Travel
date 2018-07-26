<!DOCTYPE html>
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



<script language="javascript" type="text/javascript"
	src="My97DatePicker/WdatePicker.js"></script>

<link href="table2/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="table2/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">        
 <script src="table2/vendors/jquery-1.9.1.min.js"></script>
        <script src="table2/bootstrap/js/bootstrap.min.js"></script>
        <script src="table2/assets/scripts.js"></script>
        <script>
        $(function() {
            
        });
        </script> 

</head>
<body class="body">
<%
String sno=request.getParameter("sno");
%>

	<blockquote class="layui-elem-quote layui-text">
		请务必认真填写出差报销申请表，该表将交由各部门审批。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>填写出差报销申请表单</legend>
	</fieldset>

	<form action="ApplicationReimburseServlet" class="oneform"  enctype="multipart/form-data"  method="post">


		<div class="layui-inline">
			<label class="layui-form-label">交通花销</label> <input type="text"
				name="carmoney" placeholder="￥" autocomplete="off">
		</div>
		<div class="layui-inline" style="margin-top: 10px">
			<label class="layui-form-label">上传发票</label> <input type="file"
				name="carimg">
		</div>
		<br>
		<br>
		<div class="layui-inline">
			<label class="layui-form-label">住宿花销</label> <input type="text"
				name="hotelmoney" placeholder="￥" autocomplete="off">
		</div>
		<div class="layui-inline" style="margin-top: 10px">
			<label class="layui-form-label">上传发票</label> <input type="file"
				name="hotelimg" required="required">
		</div>
		<br> <br>
		<div class="layui-inline">
			<label class="layui-form-label">餐饮花销</label> <input type="text"
				name="foodmoney" placeholder="￥" autocomplete="off" required="required">
		</div>
		<div class="layui-inline" style="margin-top: 10px">
			<label class="layui-form-label">上传发票</label> <input type="file"
				name="foodimg" required="required">
		</div>
		<br>

		<div>
			<label class="layui-form-label">报销信息</label>
			<textarea name="info" required="required" placeholder="填写详细出差报销信息"
				rows="10" cols="80" style="margin-top: 10px"></textarea>

		</div>
		   <input type="hidden" name="sno" value="<%=sno%>">
		<div style="margin-left: 38px; margin-top: 20px">
			<button class="btn btn-info btn-large" type="submit">提交申请</button>
		</div>
	</form>



</body>
</html>
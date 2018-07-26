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
String tno=request.getParameter("tno");
%>
	<blockquote class="layui-elem-quote layui-text">
		请务必认真填写出差总结表，该表将交由各部门审批。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>填写出差总结表单</legend>
	</fieldset>

	<form action="SubmitSummaryServlet" class="twoform" method="post">

		<div class="layui-inline">
			<label class="layui-form-label" style="width:86px;padding: 9px 12px; ">实际出发日期</label>
			<div class="layui-input-inline">
				<input type="text" name="realleavetime" placeholder="yyyy-MM-dd"
					autocomplete="off" onClick="WdatePicker()">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label" style="width:86px;padding: 9px 12px; ">实际返程日期</label>
			<div class="layui-input-inline">
				<input type="text" name="realbacktime" id="date2" placeholder="yyyy-MM-dd"
					autocomplete="off" onClick="WdatePicker()">
			</div>
		</div>
		<div class ="layui-input-inline"style="margin-left:20px ">
			<p style="color:#6699ff ">Tips:返程日期不可早于出发日期</p></div>
		</div>

		<div class="layui-form-item" style="margin-top: 10px">
			<label class="layui-form-label" style="width:86px;padding: 9px 12px; ">实际花费金额</label>
			<div class="layui-input-inline" style="width: 100px;">
				<input type="text" name="realexpense" placeholder="￥" autocomplete="off">
			</div>

		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">出差总结</label>
			<div class="layui-inline">
			<textarea class="text1" name="realsummary" required="required" placeholder="填写详细出差总结" rows="10" cols="160" style="margin-top:10px"></textarea>
</div>
		</div>
 <input type="hidden" name="tno" value="<%=tno%>">
		<div style="margin-left:38px;margin-top:20px">
			<button class="btn btn-info btn-large" type="submit">提交总结</button>
			
			</div>
	</form>



</body>
</html>
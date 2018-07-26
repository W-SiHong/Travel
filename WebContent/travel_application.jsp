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



</head>
<body class="body">


	<blockquote class="layui-elem-quote layui-text">
		请务必认真填写出差申请表，该表将交由各部门审批。</blockquote>

	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>填写出差申请表单</legend>
	</fieldset>

	<form action="TravelApplicationServlet" class="oneform" enctype="multipart/form-data" method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">出差目的</label> <input type="text"
				name="purposes"  autocomplete="off"
				placeholder="请输入标题" style="width: 500px" required="required"
				autofocus="autofocus">
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">员工编号</label> <input type="text"
				name="num" autocomplete="off" placeholder="请输入编号"
				required="number">
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">员工手机</label> <input type="text"
				name="telphone" autocomplete="off" placeholder="请输入号码"
				required="telphone"><p style="color:#6699ff ">Tips:请输入11位手机号</p></div>
		</div>
		
		<div class="layui-inline">
			<label class="layui-form-label">出发日期</label>
			<div class="layui-input-inline">
				<input type="text" name="leavetime" placeholder="yyyy-MM-dd"
					autocomplete="off" onClick="WdatePicker()">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">返程日期</label>
			<div class="layui-input-inline">
				<input type="text" name="backtime" id="date2" placeholder="yyyy-MM-dd"
					autocomplete="off" onClick="WdatePicker()"> 
			</div>
			<div class ="layui-input-inline"style="margin-left:20px ">
			<p style="color:#6699ff ">Tips:返程日期不可早于出发日期</p></div>
		</div>

		<div style="margin-top: 10px">
			<label class="layui-form-label">预借款申请</label>
			<section class="model-15">
				<div class="checkbox">
					<input type="checkbox" /> <label></label>
				</div>
			</section>

		</div>
		<div class="layui-form-item" style="margin-top: 10px">
			<label class="layui-form-label">预借款金额</label>
				<input type="text" name="expense"  vplaceholder "￥" autocomplete="off" value="0"> 

		</div>
		<div class="layui-form-item">
 		<label class="layui-form-label">出差类型</label> <select id="single"
				class="form-control form-control-chosen" name="type"
				data-placeholder="Please select..." style="width:164px;height:32px">
				<option></option>
				<option value="远距离出差" name="0">远距离出差</option>
				<option value="近距离出差" name="1">近距离出差</option>
			</select>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">出差地点</label>

				<input type="text" name="destination" placeholder="填写城市名称"
					autocomplete="off" required="required" >

		</div>
		<div>
			<label class="layui-form-label">出差计划</label>
			<textarea name="plan" required="required" placeholder="填写详细出差计划"rows="10" cols="80" style="margin-top:10px"></textarea>

		</div>
		<div style="margin-top: 10px">
			<label class="layui-form-label">上传照片</label> 
    <input type="file" name="img" >

		</div>
		<div style="margin-left:38px;margin-top:20px">
			<button class="layui-btn layui-btn-normal" type="submit">提交申请</button>
			
			</div>
	</form>



</body>
</html>
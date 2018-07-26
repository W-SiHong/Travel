<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="refresh" content="5;URL=demo/welcome.jsp">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>提示页面</title>
    <link rel="stylesheet" href="frame/layui/css/layui.css">
    <link rel="stylesheet" href="frame/static/css/style.css">
    <link rel="icon" href="frame/static/image/code.png">
</head>
<body class="body">

<div class="my-page-box">
    <i class="layui-icon">&#xe60c;</i>
    <p class="msg" style="color:black">提交成功!</p>
    <p class="text">Tips:可在菜单栏选择查询表单状态</p>
     <p class="text">Tips:5秒后页面自动跳转</p>
    <div class="my-btn-box">
        <a class="layui-btn layui-btn-small" href="demo/welcome.jsp">返回首页</a>
    </div>
</div>

<script type="text/javascript" src="frame/layui/layui.js"></script>
<script language="JavaScript">
setTimeout('window.close();',6000);
</script >

</body>
</html>
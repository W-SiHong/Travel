<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="refresh" content="5;URL=demo/welcome.jsp">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>提交失败</title>
    <link rel="stylesheet" href="../frame/layui/css/layui.css">
    <link rel="stylesheet" href="../frame/static/css/style.css">
    <link rel="icon" href="../frame/static/image/code.png">
</head>
<body class="body">

<div class="my-page-box">
    <h3>提交失败</h3>
    <p class="msg">The submission failed  </p>
    <p class="text">对不起,可能是你的提交信息或操作出现错误,请重新提交。</p>
         <p class="text">Tips:6秒后页面自动关闭</p>
    <div class="my-btn-box">
        <a class="layui-btn layui-btn-small" href="demo/welcome.jsp">返回首页</a>
    </div>
</div>


<script type="text/javascript" src="../frame/layui/layui.js"></script>
<script language="JavaScript">
 setTimeout('window.close();',6000);
</script> 
</body>
</html>
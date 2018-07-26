<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>常见问题</title>

<link rel="stylesheet" href="frame/layui/css/layui.css">
<link rel="stylesheet" href="frame/static/css/style.css">
<link rel="icon" href="frame/static/image/code.png">
</head>

<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>常见问题解答</legend>
</fieldset>
<div class="layui-collapse" lay-accordion="">
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">在哪查看自己的表单状态</h2>
        <div class="layui-colla-content layui-show">
            <p>表单状态可以在左边菜单栏:表单状态查询中点击相应的表单进行状态查询。
                <br>
               Tips:因页面要求，总览表单选项可以查看三种表单的状态信息，但是不能点击查看详细信息，若需要查看，请选择各自表单选项进行查询 </p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">登陆后我该如何进入操作界面？</h2>
        <div class="layui-colla-content">
            <p>
               点击表项，会在页面左部弹出更多界面</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">我该如何进行填表申请？</h2>
        <div class="layui-colla-content">
            <p>
              点击左侧表单申请界面，选择相对应的表格，如：出差申请表，出差总结表，出差报销表。鼠标左键单次点击，即可进入该表单的填写界面</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">我该如何进行表格查询？</h2>
        <div class="layui-colla-content">
            <p>点击左侧表单状态查询界面，选择相对应的表格，如：查看出差申请状态，查看出差总结状态，查看出差报销状态，查看所有表单。鼠标左键单次点击，即可进入该表单的查询界面</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">我该如何填写出差申请表？</h2>
        <div class="layui-colla-content">
            <p>
               按照表项中的汉语提示，进行填写操作，并选择时间，是否借款，上传邀请函等操作后，鼠标左键单次点击页面下方的提交申请，即可完成表格填写并提交
</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">我该如何填写出差总结表？</h2>
        <div class="layui-colla-content">
            <p>
              按照表项中的汉语提示，进行填写操作，并选择时间，实际花费金额，上传邀请函等操作后，鼠标左键单次点击页面下方的提交申请，即可完成表格填写并提交</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">我该如何填写出差报销表？</h2>
        <div class="layui-colla-content">
            <p>
              按照表项中的汉语提示，选择出现的报销项目，鼠标左键单次点击页出差项目右侧的填写报销申请，即可进入填写界面，完成报销信息填写</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">如何查看自己的申请状态？</h2>
        <div class="layui-colla-content">
            <p>
               鼠标点击左侧表象中的表单状态查询，鼠标左键点击查看出差申请状态，就会在主界面出现</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">我该如何更换网页主题</h2>
        <div class="layui-colla-content">
            <p>
             我们在页面的右上角，提供了主题选项，点击主题，在下拉列表中选择相对应的主题风格，如：默认，蓝白，纯白</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">我该如何退出系统？</h2>
        <div class="layui-colla-content">
            <p>
               页面右上角你的用户名称，会出现下拉列表，点击退出，即可退出公司出差管理系统</p>
        </div>
    </div>
</div>
<script type="text/javascript" src="frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['element', 'layer'], function () {
        var element = layui.element
                , layer = layui.layer;

        //监听折叠
        element.on('collapse(test)', function (data) {
            layer.msg('展开状态：' + data.show);
        });

        // you code ...


    });
</script>
</body>
</html>
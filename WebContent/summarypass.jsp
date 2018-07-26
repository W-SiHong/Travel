<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="Bean.Summary" import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<title>状态表单</title>
	
	<link rel="stylesheet" href="frame/layui/css/layui.css">
	<link rel="stylesheet" href="yk_css/infoStyle.css">
	

	<link rel="stylesheet" href="yk_css/main.css">
	<link rel="stylesheet" href="yk_css/jquery.restable.min.css">
	
	<link href="table2/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="table2/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
	<script src="table2/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body>
<%
		List<Summary> list =(List<Summary>) request.getAttribute("summarypass");
	%>
<blockquote class="layui-elem-quote">Tips:请认真核对出差总结表单,并填写相关报销申请表单</blockquote>
 <fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>查看个人出差总结表单审批情况</legend>
		</fieldset>	
	<div class="layui-field-box">	
	<table id="table1">
        <thead>
        <tr>
            <th>出差总结表单号</th>
            <th>实际出发日期</th>
			<th>实际返程日期</th>
            <th>审批状态</th>
            <th>相关操作</th>
        </tr>
        </thead>
        <%
			for (Summary s : list) {
		%>
        <tbody>
        <tr>
            <td><%=s.getSno()%></td>
            <td><%=s.getRealleavetime()%></td>
            <td><%=s.getRealbacktime()%></td>
            <td><%=s.getStatus()%></td>
            <td><a href="travel_reimburse.jsp?sno=<%=s.getSno()%>"><button class="btn btn-info btn-mini">申请报销</button></a></td>
        </tr>
        </tbody><%
			}
		%>
    </table>
    </div>

        <script src="table2/bootstrap/js/bootstrap.min.js"></script>
        <script src="table2/assets/scripts.js"></script>
<script src="yk_js/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="yk_js/jquery.restable.min.js"></script>
	<script>
        $(function(){
        	$('#table1').ReStable();
            $('#table2').ReStable({rowHeaders: false});
            $('#table3').ReStable({keepHtml: true, rowHeaders: false});
        })
    </script>
</body>
</html>
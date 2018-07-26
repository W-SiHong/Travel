<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Bean.TravelList" import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<title>状态表单</title>

<link rel="stylesheet" href="frame/layui/css/layui.css">
<link rel="stylesheet" href="yk_css/infoStyle.css">


<link rel="stylesheet" href="yk_css/main.css">
<link rel="stylesheet" href="yk_css/jquery.restable.min.css">

<link href="table2/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link href="table2/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen">
<script src="table2/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body>
	<%
		List<TravelList> list1 = (List<TravelList>) request.getAttribute("cheakapplicationstatus");
	%>
	<blockquote class="layui-elem-quote">Tips:请及时查看出差申请表单审核状态</blockquote>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>查看个人出差申请表单审批情况</legend>
	</fieldset>
	<div class="layui-field-box">
		<table id="table1">
			<thead>
				<tr>
					<th>出差申请表单号</th>
					<th>离开时间</th>
					<th>返程时间</th>
					<th>出差地点</th>
					<th>审批状态</th>
					<th>查看详情</th>
					<th>删除</th>
				</tr>
			</thead>
			<%
				for (TravelList t : list1) {
			%>
			<tbody>
				<tr>
					<td><%=t.getTno()%></td>
					<td><%=t.getLeavetime()%></td>
					<td><%=t.getBacktime()%></td>
					<td><%=t.getDestination()%></td>
					<td><%=t.getStatus()%></td>
					<td><a href="CheackAppServlet?tno=<%=t.getTno()%>">
							<button class="btn btn-info btn-mini">查看</button>
					</a></td>
					<td><a href="DeleteApplicationServlet?tno=<%=t.getTno()%>">
							<button class="btn btn-info btn-mini">删除</button>
					</a></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>

	<script src="table2/bootstrap/js/bootstrap.min.js"></script>
	<script src="table2/assets/scripts.js"></script>
	<script src="yk_js/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="yk_js/jquery.restable.min.js"></script>
	<script>
		$(function() {
			$('#table1').ReStable();
			$('#table2').ReStable({
				rowHeaders : false
			});
			$('#table3').ReStable({
				keepHtml : true,
				rowHeaders : false
			});
		})
	</script>
</body>
</html>
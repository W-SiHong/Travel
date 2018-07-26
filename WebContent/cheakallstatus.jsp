<!DOCTYPE html>
<%@page import="Bean.Reimburse" import="java.util.*"%>
<%@page import="Bean.Summary" import="java.util.*"%>
<html lang="zh">
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

</head>
<body>
	<%
		List<TravelList> list1 = (List<TravelList>) request.getAttribute("cheakapplicationstatus");
	%>
	<%
		List<Summary> list2 = (List<Summary>) request.getAttribute("cheaksummarystatus");
	%>
	<%
		List<Reimburse> list3 = (List<Reimburse>) request.getAttribute("cheakreimbursestatus");
	%>
	<blockquote class="layui-elem-quote">该页面为总览信息，要查看详细信息请在左侧菜单栏选择相关选项</blockquote>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>查看个人出差申请表单审批情况</legend>
	</fieldset>
	<div class="layui-field-box">
		<table id="table2">
			<thead>
				<tr>
					<th>出差申请表单号</th>
					<th>离开时间</th>
					<th>返程时间</th>
					<th>出差地点</th>
					<th>审批状态</th>

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
				</tr>	
			</tbody>
			<%
					}
				%>
		</table>
	</div>
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
				</tr>
			</thead>
			<%
				for (Summary s : list2) {
			%>
			<tbody>
				<tr>
					<td><%=s.getSno()%></td>
					<td><%=s.getRealleavetime()%></td>
					<td><%=s.getRealbacktime()%></td>
					<td><%=s.getStatus()%></td>
				</tr>

			</tbody>
			<%
				}
			%>
		</table>
	</div>
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 20px;">
		<legend>查看个人报销申请表单审批情况</legend>
	</fieldset>
	<div class="layui-field-box">
		<table id="table1">
			<thead>
				<tr>
					<th>报销申请表单号</th>
					<th>报销金额</th>
					<th>审批状态</th>
				</tr>
			</thead>
			<%
				for (Reimburse r : list3) {
			%>
			<%
				int money = r.getCarmoney() + r.getHotelmoney() + r.getFoodmoney();
			%>
			<tbody>
				<tr>
					<td><%=r.getRno()%></td>
					<td><%=money%></td>
					<td><%=r.getStatus()%></td>
				</tr>
			</tbody>
			<%
				}
			%>
		</table>
	</div>
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
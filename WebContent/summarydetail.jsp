<!DOCTYPE HTML >
<%@page import="Bean.TravelList"%>
<%@page import="Bean.Summary"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出差申请与总结对比</title>

<link rel="stylesheet" href="frame/layui/css/layui.css">
</head>
<body>
	<%
		Summary s = (Summary) request.getAttribute("summarydetail");
	%>
	<%
		TravelList l = (TravelList) request.getAttribute("applicationdetail");
	%>
	<div>
		<blockquote class="layui-elem-quote layui-text">
			请务必认真查看出差申请与出差总结的对比,并做出相应审批及审批理由</blockquote>
	</div>

	<div
		style="position: absolute; left: 0px; width: 33.33%; height: 800px;">
		<blockquote class="layui-elem-quote layui-text">对比并审批</blockquote>
		<form action="JudgeSummaryServlet" class="oneform1" method="post">
			<div class="" style="margin-left: 35px">
				<input name="status" type="radio" value="不通过">审批不通过 <input
					name="status" type="radio" value="通过">审批通过<br>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">审批理由:</label>
				<textarea name="reason" rows="15" cols="40"
					style="margin-left: 40px"></textarea>
			</div>
			<input type="hidden" name="sno" value=<%=s.getSno()%>>
			<div style="margin-top: 10px; margin-left: 40px">
				<button type="submit" class="layui-btn layui-btn-normal layui-btn-radius">提交审批</button>
			</div>
		</form>

	</div>

	<div
		style="position: absolute; float: left; left: 33%; width: 33.33%; height: 1000px; border-left: 1px solid #494A5F; border-right: 1px solid #494A5F;">
		<blockquote class="layui-elem-quote layui-text">出差申请表</blockquote>
		<form action="" class="oneform">
			<div class="layui-inline">
				<label class="layui-form-label">出差目的:</label>
			</div>
			<div class="layui-inline"><%=l.getPurposes() %></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">员工编号:</label>
			</div>
			<div class="layui-inline"><%=l.getNum()%></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">员工用户名:</label>
			</div>
			<div class="layui-inline"><%=l.getUsername()%></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">出发日期:</label>
			</div>
			<div class="layui-inline"><%=l.getLeavetime()%></div>
			<div class="layui-inline">
				<label class="layui-form-label">返程日期:</label>
			</div>
			<div class="layui-inline"><%=l.getBacktime()%></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">预借款金额:</label>

			</div>
			<div class="layui-inline"><%=l.getExpense()%></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">出差类型:</label>
			</div>
			<div class="layui-inline"><%=l.getType()%></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">出差地点:</label>
			</div>
			<div class="layui-inline"><%=l.getDestination()%></div>
			<div>
				<label class="layui-form-label">出差计划:</label>
				<textarea name="plan" required="required" rows="20" cols="40"
					style="margin-top: 10px; margin-left: 40px" readonly="readonly"><%=l.getPlan()%></textarea>

			</div>
			<div style="margin-top: 10px">
				<label class="layui-form-label">上传照片:</label>  <img alt=""
				src="upload<%=l.getImg()%>" style="height: 200px; width:90%;margin-left: 5%">
			</div>
			<br>
			<div class="" style="margin-left: 35px; color: red">
				<p>
					<strong id="demo"></strong>
				</p>
			</div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">审批理由:</label>
				<textarea name="reason" rows="10" cols="40"
					style="margin-left: 40px"><%=l.getReason()%></textarea>
			</div>
		</form>
		<script type="text/javascript">
		function myFunction() {
			var str;
			var x =<%=l.getStatus()%>;
			if (x == 3) {
				str = "通过"
			} else if (x == -1) {
				str = "不通过"
			} else {
				str = "审核中"
			}
			document.getElementById("demo").innerHTML=str;
		}
		$(document).ready(function(){
			myFunction();
			});
	</script>
	</div>

	<div
		style="position: absolute; left: 66.66%; width: 33.33%; height: 1000px;">
		<blockquote class="layui-elem-quote layui-text"
			style="margin-left: -2.5px">出差总结表</blockquote>
		<form action="TravelApplicationServlet" class="oneform" method="post">
			<div class="layui-inline">
				<label class="layui-form-label">总结表编号:</label>
			</div>
			<div class="layui-inline"><%=s.getSno() %></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">申请表编号:</label>
			</div>
			<div class="layui-inline"><%= s.getTno() %></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label">员工姓名:</label>
			</div>
			<div class="layui-inline"><%=s.getUsername() %></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 90px; padding: 9px 12px;">实际出发日期:</label>
			</div>
			<div class="layui-inline"><%=s.getRealleavetime() %></div>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 90px; padding: 9px 12px;">实际返程日期:</label>
			</div>
			<div class="layui-inline"><%=s.getRealbacktime() %></div>
			<br>
			<div class="layui-inline">
				<label class="layui-form-label"
					style="width: 90px; padding: 9px 12px;">实际花费金额:</label>

			</div>
			<div class="layui-inline"><%=s.getRealexpense()%></div>
			<br>
				<label class="layui-form-label">出差总结:</label>
				<textarea name="plan" required="required" rows="20" cols="40"
					style="margin-top: 10px; margin-left: 40px" readonly="readonly"><%=s.getSummary()%></textarea>

			</div>
			<br>

		</form>
	</div>

</body>
</html>
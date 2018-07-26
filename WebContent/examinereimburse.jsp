<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="Bean.Reimburse" import="java.util.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>Data-Table 表格</title>
<link rel="stylesheet" href="frame/layui/css/layui.css">
<link rel="stylesheet" href="frame/static/css/style.css">
<link rel="icon" href="frame/static/image/code.png">

<link href="table2/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	media="screen">
<link href="table2/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" media="screen">

<link href="table2/assets/DT_bootstrap.css" rel="stylesheet"
	media="screen">
<script src="table2/vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>

<script src="table2/vendors/jquery-1.9.1.js"></script>
<script src="table2/bootstrap/js/bootstrap.min.js"></script>


<script src="table2/vendors/datatables/js/jquery.dataTables.min.js"></script>
<script src="table2/assets/scripts.js"></script>
<script src="table2/assets/DT_bootstrap.js"></script>
<script>
	$(function() {

	});
</script>
</head>
<body>
	<%
		List<Reimburse> list = (List<Reimburse>) request.getAttribute("examinereimburse");
	%>
	<div class="row-fluid">
		<!-- block -->
		<div class="block">
			<div class="navbar navbar-inner block-header">
				<div class="muted pull-left"
					style="color: #004080; margin-top: 10px">
					<i>员工报销申请审批</i>
				</div>
			</div>
			<div class="block-content collapse in">
				<div class="span12">
					<table cellpadding="0" cellspacing="0" border="0"
						class="table table-striped table-bordered" id="example">
						<thead>
							<tr>
								<th>申请表编号</th>
								<th>员工用户名</th>
								<th>报销金额</th>
								<th>审批阶段</th>
								<th>操作</th>

							</tr>
						</thead>
						<%
							for (Reimburse s : list) {
						%>
						<%
							int money = s.getCarmoney() + s.getHotelmoney() + s.getFoodmoney();
						%>
						<tbody>
							<tr class="odd gradeX">
								<td><%=s.getRno()%></td>
								<td><%=s.getUsername()%></td>
								<td><%=money%></td>
								<td class="center"><%=s.getStatus()%></td>
								<td class="center"><a
									href="ReimburseDetailServlet?rno=<%=s.getRno()%>">
										<button class="btn btn-info btn-mini">查看</button>
								</a></td>

							</tr>
						</tbody>
						<%
							}
						%>
					</table>
				</div>
			</div>
		</div>
		<!-- /block -->
	</div>
<script src="yk_js/xlsx.core.min.js"></script>
<script src="yk_js/blob.js"></script>
	<script src="yk_js/FileSaver.min.js"></script>
	<script src="yk_js/tableexport.js"></script>
	<script type="text/javascript">
	$("table").tableExport({
	    headings: true, 
	    footers: true, 
	    formats: ["xlsx", "txt"],
	    fileName: "id",
	    bootstrap: true,
	    position: "bottom",
	    ignoreRows: null,
	    ignoreCols: null,
	});        
	/* default charset encoding (UTF-8) */
	$.fn.tableExport.charset = "charset=utf-8";
	 
	/* default filename if "id" attribute is set and undefined */
	$.fn.tableExport.defaultFileName = "myDownload";
	 
	/* default class to style buttons when not using bootstrap  */
	$.fn.tableExport.defaultButton = "button-default";
	 
	/* bootstrap classes used to style and position the export buttons */
	$.fn.tableExport.bootstrap = ["btn", "btn-default", "btn-toolbar"];
	 
	/* row delimeter used in all filetypes */
	$.fn.tableExport.rowDel = "\r\n";
	/* default class, content, and separator for each export type */
	 
	/* Excel Open XML spreadsheet (.xlsx) */
	$.fn.tableExport.xlsx = {
    defaultClass: "xlsx",
    buttonContent: "导出为xlsx",
    mimeType: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
    fileExtension: ".xlsx"
};

	 
	/* Plain Text (.txt) */
	$.fn.tableExport.txt = {
	    defaultClass: "txt",
	    buttonContent: "Export to txt",
	    separator: "  ",
	    mimeType: "text/plain",
	    fileExtension: ".txt",
	};     
	</script>
</body>
</html>
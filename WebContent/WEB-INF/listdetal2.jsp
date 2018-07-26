<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Bean.TravelList" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	TravelList l = (TravelList) request.getAttribute("listdetail");
%>
	<table border="1">
		
		<tr align="center">
			<td><%=l.getPurposes()%> <br> <%=l.getExpense()%><br>
				<%=l.getDestination()%> <br> <%=l.getLeavetime()%> <br>
				<%=l.getBacktime()%> <br> <%=l.getType()%> <br> <%=l.getPlan()%>
</td>
		</tr>
		
	</table>
	<form  action="oncejudgeServlet2" method="post">
	<input type="hidden" name="tno" value=<%=l.getTno()%>> 
	<input name="status" type="radio" value="不通过">不通过
	<input name="status" type="radio" value="通过">通过<br><br>
	<input type="submit" value="提交">
	</form>
	
</body>
</body>
</html>
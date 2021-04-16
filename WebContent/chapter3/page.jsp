<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header1.jsp" %>
	<% 
	
		Date date=new Date();
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(date);
	%>
	<p>현재시간: <%=calendar.getTime() %></p>

</body>
</html>
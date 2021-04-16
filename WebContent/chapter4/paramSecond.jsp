<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String name=request.getParameter("name");
	name=URLDecoder.decode(name,"UTF-8");

%>>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아이디: <%=request.getParameter("id") %></p>
	<p>이름: <%=name%></p>
	
	<%
		String name_2=request.getParameter("name");
	%>
	paramfirst.jsp에서 전달받은 name=<%=name_2 %>
</body>
</html>
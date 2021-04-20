<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>현재시간은 <%=LocalDateTime.now() %></p>
	<p>이 페이지는 3초마다 새로고침됩니다.</p>
	<%
		response.setIntHeader("Refresh", 3);
		//헤더의 값을 정수로 설정, 3초에 한번씩 refresh 새로고침을 한다.
	%>
</body>
</html>
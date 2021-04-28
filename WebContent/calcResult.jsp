<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>결과페이지입니다</h3>

	<p>'-'연산 결과:<%=request.getAttribute("minus") %></p>
	<p>'+'연산 결과:<%=request.getAttribute("plus") %></p>
	<p>'*'연산 결과:<%=request.getAttribute("mul") %></p>
	
</body>
</html>
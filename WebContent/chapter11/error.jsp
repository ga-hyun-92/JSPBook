<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<strong>심각한 오류가 발생했습니다!</strong>
	<!-- <%@ page isErrorPage="true" %> true일떄만  exception라는 내장객체를 쓸 수 있다-->
	<p>예외 유형 : <%=exception %></p>
</body>
</html>
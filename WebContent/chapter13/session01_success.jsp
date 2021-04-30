<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>session01에서 세션에 저장한 아이디와 비밀번호</h1>
	<p>아이디 : <%=(String)session.getAttribute("id") %></p>
	<!-- 포워딩으로 전달해주는 서블릿에서 session 내장객체를 자동제공해줌-->
	<!-- Object 타입으로 반환하니까 String  으로 형변환해야함 -->
	<p>비밀번호 : <%=(String)session.getAttribute("pw") %></p>
</body>
</html>
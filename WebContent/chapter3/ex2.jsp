<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--@ page contentType="text/plain" 컨텐트 타입이 여러개이면 오류뜸!!!--%>
<%@ page info="이 페이지는 실습을 하고 있는 페이지입니다." %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Today is <%=new Date() %>
	<%-- ctrl+space키 누르면 import할 수 있는게 뜬다. --%>>
	
	<%
		Set<Integer> lotto=new HashSet<>();
	
	%>
	
	<h1>import 3번 사용</h1>
</body>
</html>
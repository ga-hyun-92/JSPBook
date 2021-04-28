<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--검색창에 언어코드 검색해보기 -->
	<%=response.getLocale() %>
	
	<!-- 이순간 로케일을 새롭게 설정해서 한국어로 인식 -->
	<fmt:setLocale value="ko"/>
	<!-- getLocale()우리가 보내는 컨텐츠의 로케일이 뭔지 알려줌 -->
	<%=response.getLocale() %>
	
	<!-- 이순간 로케일을 새롭게 설정해서 일본어로 인식 -->
	<fmt:setLocale value="ja"/>
	<%=response.getLocale() %>
	
	<!-- 이순간 로케일을 새롭게 설정해서 영어로 인식 -->
	<fmt:setLocale value="en"/>
	<%=response.getLocale() %>
	
	
</body>
</html>
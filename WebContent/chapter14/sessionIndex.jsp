<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//로그인된 사용자의 닉네임
	//세션에서 로그인된 사용자의 닉네임을 가져와 저장하세요
	//형변환해서 꺼내와야함!!
	String nickname=(String)session.getAttribute("nickname");
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<strong>로그인 된 사용자만 볼 수 있는 페이지입니다.</strong>
	<p><strong><%=nickname %></strong>님 환영합니다</p>
	
	<!-- 
	아래 경로에 있는 서블릿을 사용해서 로그아웃 처리를 하세요
	1. 세션에 들어있는 isLogin을 false로 만든다.
	2. 세션에 들어있는 nickname을 삭제한다.
	3. 로그인 페이지로 이동한다.
	 -->
	<a href="/JSPBook/session/logout">로그아웃</a>

	
</body>
</html>
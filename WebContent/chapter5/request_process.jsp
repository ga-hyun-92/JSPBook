<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String Query=request.getQueryString();
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>아이디: <%=id %></p>
	<p>비밀번호: <%=pw %></p>
	<p>전송된 요청 파라미터: <%=Query %></p>
</body>
</html>
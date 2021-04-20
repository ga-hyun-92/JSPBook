<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("Cache-control", "use_cache");
		//Cache-control을 use_cache로 설정한다.
		//캐싱: 클라이언트가 최초로 필요한 데이터를 서버로 요청
		//최초로 요청하고 서버가 전달한 데이터를 [캐시]에 저장
		response.setHeader("contentType", "text/html; charset=utf-8");
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		response.setDateHeader("date", System.currentTimeMillis());
		//setDateHeader :헤더가 만들어진 날짜값을 설정
		
	%>
	
	Cache-control:<%=response.getHeader("Cache-control") %>
	contentType: <%=response.getHeader("contentType") %>
	date:<%=response.getHeader("date") %>
</body>
</html>
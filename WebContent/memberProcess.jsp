<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="chapter4.MemberBean"/>
<jsp:setProperty property="*" name="member"/>
<!-- jsp:setProperty property="name" name="member" param="name"/-->
<!-- jsp:setProperty property="id" name="member" param="id"/-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>ex3.jsp페이지에서 전달받은 name요청 프로퍼티의 값=<jsp:getProperty property="name" name="member"/></p>
	<p>ex10.jsp페이지에서 전달받은 id요청 프로퍼티의 값=<jsp:getProperty property="id" name="member"/></p>
</body>
</html>
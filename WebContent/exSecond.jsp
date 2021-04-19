<%@page import="chapter4.Person"%>
<%--@page import="java.net.URLDecoder"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="person" class="chapter4.Person"/>
<jsp:setProperty property="id" name="person" param="id"/>
<!-- setProperty 가 setter메서드를 호출한 것! -->
<!--jsp:setProperty property="id" name="person" value="20210419"/-->
<jsp:setProperty property="name" name="person" param="name"/>
<!--jsp:setProperty property="name" name="person" value="이가현"/-->

<%
//스크립틀릿을 사용한 경우
// 	String id=request.getParameter("id");
// 	String name=request.getParameter("name");
// 	//name=URLDecoder.decode(name,"UTF-8");
	
// 	//Person person=new Person();
// 	person.setId(Integer.parseInt(id));//Integer.parseInt : 문자열로 된 정수를 정수타입으로 바꿔줌
// 	person.setName(name);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>아이디:<%=person.getId() %></p>
	<p>이 름:<%=person.getName() %></p>
</body>
</html>
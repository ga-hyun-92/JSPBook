<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	Set<Integer> lotto=new HashSet<>();
	Random random=new Random();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>expression03</title>
</head>
<body>
	<!-- HTML주석: 웹페이지 상에 노출됨(페이지 소스보기 했을때 보임) -->
	<%--JSP주석: 웹페이지 상에 노출이 안됨 --%>

	<h1>!로또 번호 생성 프로그램!</h1>
	
	<p>이번주  1등 예상 번호</p>
	
	<%
	//자바 주석
		while(true){
			lotto.add(random.nextInt(45)+1);
			
			if(lotto.size()==6){
				break;
			}
		}
	%>
	
	<h3><%=lotto %></h3> 

</body>
</html>
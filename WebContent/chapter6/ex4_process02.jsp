<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//요청 파라미터의 이름을 전부 가져옴
	Enumeration<String> names= request.getParameterNames();
	//names=["파라미터 이름1","파라미터 이름2"]
			//체크박스, radio 빼고 input태그들은 요청 파라미터를 다 보낸다!!
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>요청 파라미터의 이름</th>
		<th>요청 파라미터의 이름</th>
	</tr>
	<%
		while(names.hasMoreElements()){
			out.println("<tr>");

			String name=names.nextElement();
			
			out.println("<td>"+name+"</td>");
			//요청 파라미터의 이름을 사용해서
			//요청 파라미터의 값을 출력하세요.
			String value=request.getParameter(name);//getParameter:이름을 가지고 값을 꺼내올수 있다.
			out.println("<td>"+value+"</td>");
			out.println("</tr>");
		}
	
	%>
</table>
</body>
</html>
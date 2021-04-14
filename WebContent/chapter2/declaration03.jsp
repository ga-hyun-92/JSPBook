<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!
	
		//소문자로 만들기
		String makeItLower(String str){
			return str.toLowerCase();
		}
	%>

	<% 
		out.println(makeItLower("Hello World"));
	
	%>

</body>
</html>
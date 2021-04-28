<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- servlet02.jsp에서 두 수를 입력하고 [확인]버튼을 누르면 두 수의 사칙연산의 결과를 보여주는 페이지로 이동하세요 -->
<!-- 두 수를 입력하는 페이지/사칙연산하는 서블릿/결과 보여주는 페이지 -->
	<h3>두 수를 입력하세요</h3>
	<form action="/JSPBook/calculation" method="post">
		<label>첫번째 수: <input type="text" name="su1"></label><br>	
		<label>두번째 수: <input type="text" name="su2"></label><br>	
		<input type="submit" value="확인">
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ex2.jsp에서 두 숫자를 입력해서 ex3.jsp로 전달한다  ex3.jsp에서는 전달받은 두 숫자를 나눠 결과를 보여준다.-->
	<form action="/JSPBook/chapter11/ex3.jsp">
		<label>첫번째 수<input type="text" name="su1"></label>
		<label>두번째 수<input type="text" name="su2"></label>
		<input type="submit" value="전송">
	</form>
</body>
</html>
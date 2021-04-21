<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="#" method="post">
	<!--  #은 현재 페이지를 의미함 -->
		<textarea name="comment" rows="3" cols="30"></textarea><br>
		<!-- 입력한 값은  comment 라는 이름에 담겨서 전달된다. -->
		<input type="submit" value="전송">
		<input type="reset" value="취소"> 
	
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- servlet01.jsp에서 국가를 선택하고 전송버튼을 누르면 국가에 맞는 인사말을 출력하는 페이지로 이동하세요. -->
	<h1>사용자의 국가에 따라서 인사말을 하려고 합니다. </h1>
	<p>
		국가를 선택하세요<br>
		<form action="/JSPBook/nation" method="get">
			<select name="nation">
				<option>선택</option>
				<option value="ko">한국</option>
				<option value="cn">중국</option>
				<option value="ja">일본</option>
				<option value="am">미국</option>
			</select>
			<input type="submit" value="전송">
		</form>
	
	</p>

</body>
</html>
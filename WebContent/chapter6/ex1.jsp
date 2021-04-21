<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	
	<form action="process.jsp" method="get">
		<!-- 입력 양식을 묶어서 보내는 form태그 -->
		<!-- 폼 태그 안에는 입력 가능한 태그들을 작성 -->
		<!-- 폼 태그가 입력한 데이터를 서버로 보내줌 -->
		<!-- CRUD서비스 1.Create 생성(POST), 2.Read 읽기(GET), 3.Update 수정(POST), 4.Delete 삭제(POST) -->
		<p>아이디: <input type="text" name="id"><input type="button" value="아이디 중복 검사"></p>
		<p>비밀번호: <input type="password" name="password"></p>
		<p>비밀번호 확인: <input type="password" name="password2"></p>
		<p>이름 : <input type="text" name="name"></p>
		<p>연락처 :<input type="number" name="phone1">-
			<input type="number" name="phone2">-
			<input type="number" name="phone3">
		 </p>
		<p>성별 : <input type="radio" name="gender" value="male">남성
		<!-- 실제로 보내지는 값은 '남성'이 아닌, value="male -->
		<!-- radio는 둘 중에 하나만 반드시 선택해야할 때 사용, 체크 해제 불가능 -->
			<input type="radio" name="gender" value="female">여성
		
		</p>
		<p>취미 : 독서<input type="checkbox" name="hobby1">
		<!-- 체크하면 hobby1이라는 이름에 on이라는 값이 담김, 체크 안하면? 아예 전달 안됨 -->
			운동<input type="checkbox" name="hobby2">
			영화<input type="checkbox" name="hobby3">
		
		
		</p>
		<p><input type="submit" value="전송"><input type="reset" value="다시쓰기"></p>
	</form>
</body>
</html>
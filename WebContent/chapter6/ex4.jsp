<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	
	<form action="ex4_process02.jsp" method="POST">
		<p>아이디: <input type="text" name="id"><input type="button" value="아이디 중복 검사"></p>
		<p>비밀번호: <input type="password" name="password"></p>
		<p>비밀번호 확인: <input type="password" name="password2"></p>
		<p>이름 : <input type="text" name="name"></p>
		<p>연락처 :<input type="number" name="phone1">-
			<input type="number" name="phone2">-
			<input type="number" name="phone3">
		 </p>
		 
		<p>성별 : 
		<label for="gender1">남성</label>
		<input type="radio" id="gender1" name="gender" value="male">
		<!-- 남성이라는 글씨를 클릭해도 체크됨 -->
		<!-- 실제로 보내지는 값은 '남성'이 아닌, value="male -->
		<!-- radio는 둘 중에 하나만 반드시 선택해야할 때 사용, 체크 해제 불가능 -->
		
		<label for="gender2">여성</label>
		<input type="radio" id="gender2" name="gender" value="female">
		
		</p>
		<p>취미 : 독서<input type="checkbox" value="독서" name="hobby">
		<!-- 체크하면 hobby1이라는 이름에 on이라는 값이 담김, 체크 안하면? 아예 전달 안됨 -->
			운동<input type="checkbox" value="운동" name="hobby">
			영화<input type="checkbox" value="영화" name="hobby">
		
		
		</p>
		
		<p>
			<textarea name="comment" rows="3" cols="30" placeholder="가입인사를 입력해주세요"></textarea>
			<!-- placeholder는 힌트와 같다  -->
		</p>
		<p><input type="submit" value="전송"><input type="reset" value="다시쓰기"></p>
	</form>
</body>
</html>
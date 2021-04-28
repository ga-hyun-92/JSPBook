<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action="validation_process.jsp" name="member" method="post">
		<p>아이디:<input type="text" name="id"></p>
		<p>비밀번호:<input type="password" name="pw"></p>
		<p>이름:<input type="text" name="name"></p>
		<p>연락처:
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select>
			-<input type="text" maxlength="4" size="4" name="phone2">
			-<input type="text" maxlength="4" size="4" name="phone3">
		</p>
		<p>이메일:<input type="email" name="email"></p>
		<p><input type="button" value="가입하기" onclick="checkMember()"></p>
	</form>
	
	<script type="text/javascript">
		function checkMember(){
			var regExpId=/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			//* 0개이상 반복되는지? $ 해당 표현으로 끝나는지
			var regExpName=/^[가-힣]*$/;
			var regExpPassword=/^[0-9]*$/;
			//  \d{3}->숫자 인데,3자리 숫자인지?
			var regExpPhone=/^\d{3}-\d{4}-\d{4}$/;
			var regExpEmail=/^[0-9a-zA-Z]/;
			
			var form=document.member;
			
			var id=form.id.value;
			var pw=form.pw.value;
			var name=form.name.value;
			var phone=form.phone1.value+"-"+form.phone2.value+"-"+form.phone3.value;
			
			if(!regExpId.test(id)){
				alert("아이디는 문자로 시작해주세요");
				form.id.select();
				return false;
			}
			
			if(!regExpName.test(name)){
				alert("이름은 한글만 입력해주세요");
				form.name.select();
				return false;
			}
			
			if(!regExpPassword.test(pw)){
				alert("비밀번호는 숫자만 가능합니다");
				form.pw.select();
				return false;
			}
			
			if(!regExpPhone.test(phone)){
				alert("연락처를 확인해주세요");
				form.phone1.select();
				return false;
				
			}
			
			form.submit();
		}
	
	</script>
</body>
</html>
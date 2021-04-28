<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name='frm'>
		<p>
			이름:<input type="text" name="name">
			<input type="submit" value="전송" onclick="checkForm()">
		</p>
	</form>
	
	<script>
		function checkForm(){
			var form=document.frm;
			var name=form.name.value;
			
			//       //는 이 안에 들어오는 값이 정규 표현식임을 알려주는 것!
			//		문자 클래스[]로 묶음
			// a-z사이 문자가, A-Z사이 문자가 들어있나요?
			// 즉 영문 또는 한글로 시작하나요?
// 			var regExp=/^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			//!regExp.test(name) ->이름이 숫자로 시작한다면! 이라는 의미
			var regExp=/^[0-9]/;
			//test->매개변수 안에 지정한 패턴이 들어있으면 true, 들어있지 않으면 false를 반환한다.
			if(regExp.test(name)){
				alert("이름은 숫자로 시작할 수 있습니다.");
				return false;
			}
			
			//주민번호 점검하는 표현식 6자리-7자리
			//이패턴 정보를 가지고 있는 객체가 생성됨
			var regExp=/[0-9][0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]/;
			
			//전화번호 점검
			var regExp=/^[010|011|019|017]-([0-9][0-9][0-9][0-9])-([0-9][0-9][0-9][0-9])/;
		}
	
	</script>

</body>
</html>
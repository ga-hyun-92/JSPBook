<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form name="frm">
		<p>
		이름: <input type="text" name="name"><br>
		<label>아이디:<input type="text" name="id"></label><br>
		<label>비밀번호:<input type="password" name="pw"></label><br>
		<input type="submit" value="전송" onclick="checkForm()">
		</p>
	</form>
	
	<script>
		//사용자가 전송버튼을 클릭했을때 사용자가 입력한 이름, 아이디, 비밀번호를 alert을 사용해서 출력하세요.
		function checkForm(){
			var userName=document.frm.name.value;
			var userId=document.frm.id.value;
			var userPW=document.frm.pw.value;
			
			alert("이름 :"+userName+"\n"+"아이디 :"+userId);
			alert("아이디 :"+userId);
			alert("비밀번호 :"+userPW);
// 			if(userName==null){
// 				alert("이름을 입력해주세요");
// 			} else if(userName>10){
// 				alert("이름은 10자를 초과할 수 없습니다.")
// 			} else{
// 			alert("사용자가 입력한 이름은"+userName+"입니다.");
// 			}
				
		}
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex3</title>
</head>
<body>
	<form name="loginForm">
		<p>이름: <input type="text" name="name"></p>
		<p>아이디: <input type="text" name="u_id"></p>
		<p>비밀번호: <input type="password" name="u_pw1"></p>
		<p>비밀번호 확인: <input type="password" name="u_pw2"></p>
		<input type="submit" value="전송" onclick="checkForm()">
	</form>

	<script>
	//전송버튼을 눌렀을 때, 이름 아이디 비밀번호 비밀번호 확인 모두 입력되었는지 확인하세요
	//이름, 아이디, 비밀번호,비밀번호 확인이 입력되지 않았을 때는
	//(해당 항목)을 입력해주세요 라고 출력하고
	//해당 항목으로 포커스를 이동시키세요.
	
	//아이디는 4자이상 12자 이하여야합니다.
	// 비밀번호는 8자 이상 16자 미만이여야 합니다.
	// 비밀번호는 비밀번호 확인과 일치해야합니다.
	
		function checkForm(){
			var form=document.loginForm;
			var uname=form.name.value;
			var u_id=form.u_id.value;
			var u_pw1=form.u_pw1.value;
			var u_pw2=form.u_pw2.value;
			
			if(uname=="") {
				alert("이름을 입력하세요.");
				form.name.focus();
				return false;
			} else if(uname.length<6||uname.length>14){
				alert("이름을 6~14자 이내로 입력해주세요.");
				form.name.select();
				return false;
			}
			
			
			
			if(u_id=="") {
				alert("아이디를 입력하세요.");
				form.u_id.focus();
				return false;
			}  else if(u_id.length<4||u_id.length>=12){
				alert("아이디는 4자이상 12자 이하여야합니다");
				form.u_id.select();
				return false;
			}
			
			if(u_pw1=="")  {
				alert("비밀번호를 입력하세요.");
				form.u_pw1.focus();
				return false;
			} else if(u_pw1.length<8||u_pw1.length>=18){
				alert("비밀번호는 8자 이상 16자 미만이여야 합니다.");
				form.u_pw1.select();
				return false;
			}  else if(u_pw1 != u_pw2){
				alert("비밀번호는 비밀번호 확인과 일치해야합니다.");
				form.u_pw2.select();
				return false;
			} 
			
			
			if(u_pw2=="") {
				alert("비밀번호 확인을 입력하세요.");
				form.u_pw2.focus();
				return false;
			} else {
				alert("이름 :"+uname+"\n"+"아이디 :"+u_id+"\n"+"비밀번호 :"+u_pw1);
			}
			
// 			if(uname==""){
// 				alert("이름을 입력하세요.");
// 				document.loginForm.name.focus();//커서가 이동
// 				return false;//submit을 하고 싶지 않다면,
// 			} else{
// 				alert("이름 ="+uname);
// 				alert("제대로 입력했으므로 입력한 값을 서버로 보냅니다.")
// 			}
		}
	
	</script>
</body>
</html>
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
			이름:<input type="text" name="name">
			<label>아 이 디 : <input type="text" name="id"></label>
			<label>비밀번호 : <input type="password" name="pw"></label>
			<input type="submit" value="전송" onclick="checkForm()">
		</p>		
	
	</form>
	
	<script>
	function checkForm(){
		var form=document.frm;
		//아이디는 영문 소문자만 입력 가능합니다.
		var id=form.id.value;
		for(var i=0; i<id.length; i++){
			var ch=id.charAt(i);
			//n번째 문자가 영문 소문자가 아닐 때,
			//alert을 사용해서 "아이디는 영문 소문자가 입력가능합니다"를 출력하세요
			var isAlpha=(ch>='A' && ch<='Z')||(ch>='0' && ch<='9');
			if(isAlpha){
				alert("아이디는 영문 소문자만 입력가능합니다");
				form.id.select();
				return false;
			}
			
// 			if(ch>='A' && ch<='Z'){
// 				alert("아이디는 영문 소문자 입력가능합니다");
// 			} else if(ch>='0' && ch<='9'){
// 				alert("아이디는 영문 소문자 입력가능합니다");
// 			}
		}
		
		//비밀번호는 숫자만 입력가능합니다.
		var pw=form.pw.value;
		var isnotNumber=isNaN(pw);
		
		if(isnotNumber){
			alert("비밀번호는 숫자만 가능합니다");
			form.id.select();
			return false;
		}
		
		var name=form.name.value;
		var firstName=name.substr(0,1);
		//이름은 숫자로 시작할 수 없음
		//isNaN->매개변수로 전달된 값이 숫자인지 아닌지 판별하는 함수
		//isNotaNumber->매개변수로 전달된 값이 숫자이면 false/숫자가 아니라면 true
		var isNumber=isNaN(firstName);
		if(!isNumber){
			alert("이름은 숫자로 시작할 수 없습니다");
			form.name.select();//커서를 이름으로 옮기고
			return false;//submit을 하지 않음
		}
		
		
		
	}
	
		
	</script>

</body>
</html>
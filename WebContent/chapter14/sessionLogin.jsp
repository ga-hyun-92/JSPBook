<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 로그인 여부를 판단해서
	로그인이 되어있을 경우
	
	SessionIndex.jsp로 이동하도록 하세요.

 -->
 <%
 	
 	try{
 		
		boolean isLogin=(boolean)session.getAttribute("isLogin");
 
		if(isLogin){
			response.sendRedirect("/JSPBook/chapter14/sessionIndex.jsp");
		}
 	} catch(NullPointerException e){
 		//NullPoninterException이 발생하는 이유(조건)?
 		//이유를 파악하고 그에 맞는 적절한 행동을 하세요.
 		//이유는 로그인을 하지 않아서! 
 	}
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- 아이디, 비밀번호를 입력할 수 있도록 input태그를 만들고 로그인 버튼을 추가하세요
	
	로그인 버튼을 누르면 ajax를 사용해서 /session/login 경로에 있는 로그인 기능을 실행하세요.
	이때 로그인 기능을 실행할 때 사용자가 입력한 아이디와 비밀번호를 전달해야합니다.
	
	로그인 기능이 요청 성공에 의미를 담고 있는 응답코드를 반환 했을 경우 SessionIndex.jsp 페이지로 이동하세요. 
	로그인 기능이 요청 실패의 의미를 담고 있는 응답코드를 반환 했을 경우 alert 함수를 사용해서 
	"아이디 또는 비밀번호를 확인해주세요"를 출력하세요.
 -->
 	<div>
		<label>아이디 : <input type="text" name="id"></label><br>
		<label>비밀번호 : <input type="password" name="pw"></label><br>
		<button type="button" onclick="login()">로그인</button>
	</div>
	
 	<script>
		function login() {
			
			// 사용자가 input 태그에 입력한 id
			var id = $("[name=id]").val();
			// 사용자가 input 태그에 입력한 pw
			var pw = $("[name=pw]").val();
			
			$.ajax({
				url: "/JSPBook/session/login",
				data: "id="+id+"&pw="+pw,
				success: function() {
					// 요청이 성공했을 때의 동작 (200번대, 300번대 응답코드가 돌아왔을 때)
					location.href = "/JSPBook/chapter14/sessionIndex.jsp";
				},
				error: function() {
					// 요청이 실패했을 때의 동작 (400번대, 500번대 응답코드가 돌아왔을 때)
					alert("아이디 또는 비밀번호를 확인해주세요");
				}
			})
			
			return false;
			
			// ajax -> jQuery 라이브러리 안에 들어있음
			// jQuery -> 자바스크립트를 조금 더 편하게 사용해주는 툴
			
			// 브라우저는 HTML, CSS, JavaScript 를 갖고 있고
			// jQuery는 갖고 있지 않음
		}
	</script>
</body>
</html>
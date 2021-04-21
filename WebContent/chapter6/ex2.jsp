<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String tel1=request.getParameter("tel1");
	String tel2=request.getParameter("tel2");
	String tel3=request.getParameter("tel3");
	
	String tel=tel1+tel2+tel3;
	//연락처의 첫 번째 자리 수는 3자리여야 합니다.
	
	//연락처의 두,세번째 자리 수는 4자리여야 합니다.
	//요청 파라미터로 전달받은 
	//연락처의 각 자리수를 초과하였을 때는 
	//연락처를 확인해주세요 라고 출력되도록.  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
	if(tel1 !=null &&tel2 !=null &&tel3 !=null){
	%>
		<h1>연락처:<%=tel %></h1>
	<%
		if(tel1.length()!=3 || tel2.length()!=4 || tel3.length()!=4){
			out.println("<strong>연락처를 확인해주세요</strong>");
			if(tel.length()!=11){
				out.println("<strong>연락처를 확인해주세요</strong>");
		
				}
			
			} 
		}
	%>
	
	
	<form action="./ex2.jsp" method="GET">
		<p>
			연락처 :
				<select name="tel1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="019">019</option>
				</select>
				
					-
					<input type="text" name="tel2" maxlength="4" size="4">
					<!-- maxlength=최대 입력할수 있는 문자갯수, size= 화면에 보여지는 문자갯수 -->
					-
					<input type="text" name="tel3" maxlength="4" size="4">
		</p>
		
		<p><input type="submit" value="전송"></p>
		
		<select name="city">
			<option>도시를 선택하세요</option>
			<option value="서울">서울특별시</option>
			<!-- 서버로 보내지는 값은 "서울" -->
			<option value="2">부산광역시</option>
			<!-- 서버로 보내지는 값은 "2" -->
			<option value="인천">인천광역시</option>
			<option value="경기">경기도</option>
			<option value="충청">충청도</option>
		</select>
	</form>
</body>
</html>
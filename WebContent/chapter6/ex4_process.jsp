<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
//회원가입 데이터를 처리할 수 있는 jsp를 만들어서
//회원가입 페이지(ex4.jsp)에서 전달하는 요청 파라미터를 받아와서 
//출력하는 코드를 작성하세요.
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");					//아이디
	String password=request.getParameter("password");		//비밀번호
	String password2=request.getParameter("password2");		//비밀번호 확인
	String name=request.getParameter("name");
	String phone1=request.getParameter("phone1");
	String phone2=request.getParameter("phone2");
	String phone3=request.getParameter("phone3");
	String phone=phone1+phone2+phone3;
	
	String gender=request.getParameter("gender");
	//getParameterValues: 하나의 이름에 여러개의 값이 담겨 전달될 때	//취미(독서,운동,영화)
	String[] hobby=request.getParameterValues("hobby");
	String hobbys="";
	for(String h:hobby){
		hobbys+=(h+", ");
	}
		
	String comment=request.getParameter("comment");			//가입인사
	comment=comment.replace("\n", "<br>");
	System.out.println(comment);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(password.equals(password2)){
%>
 
		<p><strong>아이디 : </strong><%=id %></p>
		<p><strong>비밀번호 : </strong><%=password %></p>
		<p><strong>비밀번호 확인 : </strong><%=password2 %></p>
		<p><strong>취미 : <%=hobbys %></strong>
		<%
// 			for(String hobby_1 :hobby){
// 				out.println(hobby_1);
// 			}
		%>
		</p>
		<p><strong>가입인사 : </strong><%=comment %></p>
		<!-- html에서 다음줄로 넘어가는건 br 태그이므로 맨 위에 설정필요 -->
<%
	} 
	else {
		response.sendRedirect("process_pwFail.jsp");	

	}
%>	
	
	<p></p>
	<p></p>
</body>
</html>
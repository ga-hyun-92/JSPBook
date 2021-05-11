<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//DB에 들어있는 현재 사용자의 정보를 꺼내오기\
	Connection conn=null;
	
	String id=null;
	String name=null;
	
	try{
		
	Class.forName("org.mariadb.jdbc.Driver");
	
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
	
	PreparedStatement pstmt=conn.prepareStatement("SELECT * FROM memeber WHERE idx=?");
	
	int idx=(int)session.getAttribute("idx");
	pstmt.setInt(1, idx);
	

	//Statement stmt=conn.createStatement();
	
	//String name=(String) session.getAttribute("name"); //name으로 하면 중복될수 있기 때문에 고유식별값인 idx로 할 것
	
	ResultSet rs= pstmt.executeQuery();

	rs.next();
		
	id=rs.getString("id");
	name=rs.getString("name");
	
	
	
	} catch(SQLException | ClassNotFoundException e){
		response.setStatus(500);
	} finally {
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				
			}
		}
	}
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<p>회원 정보를 수정하는 페이지입니다.</p>
	<p>아이디는 수정하실 수 없습니다.</p>
	<hr>
	
	<!-- disabled : 볼수는 있지만 입력은 할 수 없는 태그  -->
	<p>
		<label>아이디: <input type="text" disabled="disabled" value="<%=id%>"></label>
	</p>
	
	<p>
		<label>비밀번호: <input type="password" name="pw"></label>
	</p>
	
	<p>
		<label>이름: <input type="text" name="name" value="<%=name%>"></label>
	</p>
	
	<input type="submit" value="수정" onclick="return update()">
<script>
	function update(){
		var pw = $("[name=pw]").val();
		var name = $("[name=name]").val();
		
		$.ajax({
			url: "/JSPBook/member/update",
			data: "pw="+pw+"&name="+name,
			type="post",
			success: function(){
				alert("회원 정보를 수정하였습니다.");
				location.reload();
			},
			error: function(){
				alert("회원 정보를 수정하지 못했습니다.\n잠시후 다시 시도해주세요.");
			}
		});
	}


</script>
</body>
</html>
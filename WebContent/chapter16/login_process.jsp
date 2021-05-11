<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//로그인 -> 사용자가 입력한 아이디, 비밀번호가 회원 정보에 있는지 확인
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	Connection conn =null;
	
	try{
		
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		Statement stmt=conn.createStatement();
		
		ResultSet rs=stmt.executeQuery("SELECT * FROM memeber WHERE id='" + id + "' AND pw = '" + pw + "'");
		
		boolean isExist=rs.next();
		if(isExist){
			//로그인 시, 입력한 아이디, 비밀번호로 회원 정보를 찾았다면은
			//로그인처리
			// -사용자의 닉네임 세션에 저장
			String name=rs.getString("name"); //db에 저장된 name칼럼에 있는 값을 꺼내옴
			session.setAttribute("name", name);
			// -응답코드200
			response.setStatus(200);//기본 응답처리가 200이므로 굳이 쓰지 않아도 됨
		}else{
			//로그인 시 입력한 아이디, 비밀번호로 회원 정보를 찾지못했다면은
			//로그인 실패 처리
			//응답코드 401 : 미승인
			response.setStatus(401);
		}
		
	} catch(Exception e){
		//예외처리
		// 응답코드 500(우리 서버의 문제가 있다)
		response.setStatus(500);
	} finally{
		if(conn!=null){
			try{
				conn.close();
				
			} catch(SQLException e){
				
			}
		}
	}	

%>

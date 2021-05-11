<%@page import="java.sql.SQLException"%>
<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	String name=request.getParameter("name");
	
	Connection conn =null;
	
	try{
		
		Class.forName("org.mariadb.jdbc.Driver");
		
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3307/JSPBookDB?user=root&password=koreait");
		
		Statement stmt=conn.createStatement();
		
		int row=stmt.executeUpdate("INSERT INTO memeber(id,pw,name) VALUES('"+id+"','"+pw+"','"+name+"')");
		if(row==1){
			// 회원 가입 성공
			// 201 응답코드
			response.setStatus(Response.SC_CREATED);
		} else {
			// 회원 가입 실패
			// 400 응답코드(사용자의 잘못으로 인한.. )
			response.setStatus(400);
		}
		
	} catch(Exception e){
		//예외처리
		// 응답코드 500(우리 서버의 문제가 있다)
		response.setStatus(500);
		e.printStackTrace();
	} finally {
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				
			}
		}
	}
	
%>


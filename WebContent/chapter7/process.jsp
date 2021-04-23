<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	MultipartRequest multi=new MultipartRequest(request,"C:\\upload",5*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
	// MultipartRequest(request ->request내장 객체를 MultipartRequest로 변환
	//"C:\\upload" 사용자가 보낼 파일을 어디에 저장할건지
	//5*1024*1024 최대 파일 크기 제한 5MB
	//보낸 파일을 어떤 인코딩 사용해서 저장할건지
	//DefaultFileRenamePolicy() : 서버안에 동일한 이름이 존재하면 전송된 파일 이름 옆에 숫자를 제공(ex. 파일명_1)
	String title=multi.getParameter("title");
	
	Enumeration files=multi.getFileNames();
	String fileName=(String)files.nextElement();
	
	fileName=multi.getFilesystemName(fileName);
	String original=multi.getFilesystemName(fileName);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h3><%=title %></h3>
	<p>실제 파일 이름: <%=original %></p>
	<p>저장 파일 이름: <%=fileName %></p>
</body>
</html>
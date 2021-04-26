<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String fileUploadPath="c:\\upload";//업로드할 경로 지정
	
	DiskFileUpload upload=new DiskFileUpload();//업로드 처리할 객체 만듬
	
	List items=upload.parseRequest(request);//파일 또는 일반 데이터들을 분석(parseRequest)해서 변환
	
	Iterator params=items.iterator();
	
	while(params.hasNext()){
		FileItem item=(FileItem) params.next();//사용자가 보낸 파일과 일반 파라미터들을 하나씩 꺼내옴
		
		if(item.isFormField()){
			String title=item.getString("UTF-8");//n번째 파라미터의 데이터를 꺼내서 
			out.println ("<h3>"+title+"</h3>");//출력
		} else{
			String fileName=item.getName();
			
			System.out.println("원본 파일의 이름="+fileName);
			fileName=fileName.substring(fileName.lastIndexOf("\\")+1);
			System.out.println("수정된 파일의 이름="+fileName);
			
			File file=new File(fileUploadPath+"/"+fileName);
			item.write(file);
			out.print("파일이름:"+fileName+"<br>");
		}
	}
%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
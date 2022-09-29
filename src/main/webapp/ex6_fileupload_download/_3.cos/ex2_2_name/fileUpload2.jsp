<%-- WebContent 폴더 아래 upload 폴더 생성 후 실행하세요~ --%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%-- 업로드하기 위해 MultipartRequest 객체를 import합니다. --%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	String uploadPath= application.getRealPath("upload");
	out.print("upload 경로 : " + uploadPath);
	
	
	int size = 10*1024*1024; //파일최대 크기를 10MB로 지정하빈다.
	String name=""; String subject=""; String systemName1="";
	String systemName2="";  String origfileName1="";	String origfileName2="";

	try{
		//업로드 당당하는 부분입니다.
		//첫 번째 인자 request : 품에서 가져온 값을 얻기 위해 request객체를 전달해 줍니다.
		//두 번째 인자 uploadtPath : 업로드될 파일의 위치 입니다.
		//세 번째 인자 size : 업로드 할 크기이며 지정 크기보다 크면 Exception발생합니다.
		//네 번째 인자 "euc-kr" : 파일 이름이 한글인 경우 처리하는 부분입니다.
		//다섯 번째 인자 : "euc-kr" : 파일 이름이 한글인 경우  처리하는 부분입니다.
		//파일이름을 변환해준느 기능을 합니다.
		MultipartRequest multi=new MultipartRequest(request,
							uploadPath,
							size,
							"euc-kr",
				new DefaultFileRenamePolicy());			
				
		name=multi.getParameter("name");
		subject=multi.getParameter("subject");
		
		//name=fileName1의 input에서 올린 파일의 시스팀상의 파일명을 얻어옵니다.
		//중복된 파일명의 경우 파일명 맨뒤에 숫자를 붙여 처리합니다.
		systemName1=multi.getFilesystemName("fileName1");
		
		//name=file1의 input에서 업로드한 원본 파일명을 얻어 옵니다.
		origfileName1= multi.getOriginalFileName("fileName1");
		
		systemName2=multi.getFilesystemName("fileName2");
		origfileName2= multi.getOriginalFileName("fileName2");
		
	}catch(Exception e){
		e.printStackTrace();
		out.print("에러 입니다.");
	}
%>
<html>
<head>
<title> 파일 업로드</title>
</head>
<body>
<form name="filecheck" action="fileCheck2.jsp" method="post">
	<input type="hidden" name="name" value="<%=name%>">
	<input type="hidden" name="subject" value="<%=subject%>">
	
	<input type="hidden" name="systemName1" value="<%=systemName1%>">
	<input type="hidden" name="systemName2" value="<%=systemName2%>">
	
	<input type="hidden" name="origfileName1" value="<%=origfileName1%>">
	<input type="hidden" name="origfileName2" value="<%=origfileName2%>">
	<input type="hidden" name="uploadPath" value="<%=uploadPath%>">
	<input type="submit" value="업로드 확인 및 다운로드 페이지 이동">
</form>
</body>
</html>
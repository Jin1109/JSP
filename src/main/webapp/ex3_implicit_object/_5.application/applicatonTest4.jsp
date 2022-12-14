<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Test - 초기화 파라미터 읽어오기</title>
</head>
<%--
	- 초기화 파리미터는 web.xml에 작성합니다.
	1. getInitParameternames() : 웹 어플리케이션 초기화 파라미터의 이름 목록을 리턴합니다.
	2. getInitParameter(Name) : 
				이름이 Name인 웹 어플리케이션 초기화 파라미터의 값을 읽어옵니다.
				존재하지 않을 경우 null을 리턴합니다.
	 --%>
<body>
	<h2>web.xml에서 설정한 색상으로 지정</h2>
	 <% String color = application.getInitParameter("color");
	 
	 %>
	 <div style="background:<%=color%>"> 나는 무슨색인가요?
	 </div>
</body>
</html>
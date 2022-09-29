<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%--에러가 발생할 경우 errorPage 속성에 지정한 페이지를 보여줍니다. --%>
<%@ page errorPage = "../error/viewErrorMessage.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파리미터 출력</title>
</head>
<body>
name 파리미터 값: 
<%-- name 파라미터의 값을 대문자로 변환하여 출력합니다. --%>
	<%= request.getParameter("name").toUpperCase() %>
</body>
</html>
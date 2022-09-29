<!-- 1. 현재 페이지를 실행하면 errorNullPointer.jsp가 실행됩니다. -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파리미터 출력</title>
</head>
<body>
name 파리미터 값: <%= request.getParameter("name").toUpperCase() %>
<%-- name 파라미터의 값을 대문자로 변환하여 출력합니다. --%>

에러 타입: <%= exception.getClass().getName() %> <br>
에러 메시지: <b><%= exception.getMessage() %></b>
</body>
</html>
<%-- error404.jsp이 실행되는 경우로 요청 URL에 존재하지 않는 경우 실행됩니다. --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파리미터 출력</title>
</head>
<body>
<%
  response.sendRedirect("hoho.jsp");
%>
</body>
</html>
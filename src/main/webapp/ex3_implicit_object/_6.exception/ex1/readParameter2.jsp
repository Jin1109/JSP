<!-- 현재 페이지르 실행하면 error500.jsp가 실행됩니다. 
	 8번 라인 오류를 발생시켜 500번 에러 확인합니다.-->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파리미터 출력</title>
</head>
<body>
name 파리미터 값: <%= request.getParameter("name").toUpperCase(); %>
<%-- ;을 추가했습니다. --%>
</body>
</html>
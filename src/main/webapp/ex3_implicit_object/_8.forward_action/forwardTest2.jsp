<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%-- 
	액션 태그 : 태그를 이용해서 다른 페이지의 서블릿에 접근할 수 있도록 구현된 기능
	forward 액션은 현재 페이지르 다른 페이지로 전환할 때 사용합니다.
 --%>
<title>after</title>
</head>
<body>
	<div> forward 후입니다.</div>
	<%=request.getAttribute("food") %>
</body>
</html>
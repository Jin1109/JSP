<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<title>logout.jsp</title>
</head>
<body>
	<script>
		alert("로그아웃 되셨습니다.");
		location.href="template.jsp";
	</script>
	
	<%
		//session.removeAttribute("id");// "id"의 속성을 제거합니다.
		session.invalidate(); //세션의 모든 속성을 삭제
		
	%>
	
	
</body>
</html>
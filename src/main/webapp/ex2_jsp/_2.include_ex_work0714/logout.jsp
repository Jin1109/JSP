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
		alert("�α׾ƿ� �Ǽ̽��ϴ�.");
		location.href="template.jsp";
	</script>
	
	<%
		//session.removeAttribute("id");// "id"�� �Ӽ��� �����մϴ�.
		session.invalidate(); //������ ��� �Ӽ��� ����
		
	%>
	
	
</body>
</html>
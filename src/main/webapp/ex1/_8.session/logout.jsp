<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<title>logout.jsp</title>
</head>
<body>
<%=session.getAttribute("id") %>�� �α׾ƿ� �Ǽ̽��ϴ�.
<% 	
	//session.removeAtrribute("id");// "id"�� �Ӽ��� �����մϴ�.
	session.invalidate(); //������ ��� �Ӽ��� ����
%>
	<br>
	<a href="login.jsp">�α���</a>
</body>
</html>
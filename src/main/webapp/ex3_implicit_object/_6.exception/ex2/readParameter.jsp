<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%--������ �߻��� ��� errorPage �Ӽ��� ������ �������� �����ݴϴ�. --%>
<%@ page errorPage = "../error/viewErrorMessage.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ĸ����� ���</title>
</head>
<body>
name �ĸ����� ��: 
<%-- name �Ķ������ ���� �빮�ڷ� ��ȯ�Ͽ� ����մϴ�. --%>
	<%= request.getParameter("name").toUpperCase() %>
</body>
</html>
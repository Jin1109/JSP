<!-- 1. ���� �������� �����ϸ� errorNullPointer.jsp�� ����˴ϴ�. -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ĸ����� ���</title>
</head>
<body>
name �ĸ����� ��: <%= request.getParameter("name").toUpperCase() %>
<%-- name �Ķ������ ���� �빮�ڷ� ��ȯ�Ͽ� ����մϴ�. --%>

���� Ÿ��: <%= exception.getClass().getName() %> <br>
���� �޽���: <b><%= exception.getMessage() %></b>
</body>
</html>
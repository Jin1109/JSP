<!-- ���� �������� �����ϸ� error500.jsp�� ����˴ϴ�. 
	 8�� ���� ������ �߻����� 500�� ���� Ȯ���մϴ�.-->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ĸ����� ���</title>
</head>
<body>
name �ĸ����� ��: <%= request.getParameter("name").toUpperCase(); %>
<%-- ;�� �߰��߽��ϴ�. --%>
</body>
</html>
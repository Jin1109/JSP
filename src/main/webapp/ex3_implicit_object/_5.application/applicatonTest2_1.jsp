<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Test - �ʱ�ȭ �Ķ���� �о����</title>
</head>
<%--
	- �ʱ�ȭ �ĸ����ʹ� web.xml�� �ۼ��մϴ�.
	1. getInitParameternames() : �� ���ø����̼� �ʱ�ȭ �Ķ������ �̸� ����� �����մϴ�.
	2. getInitParameter(Name) : 
				�̸��� Name�� �� ���ø����̼� �ʱ�ȭ �Ķ������ ���� �о�ɴϴ�.
				�������� ���� ��� null�� �����մϴ�.
	 --%>
<body>
	<h2>�ʱ�ȭ �Ķ���� ���</h2>
	<ul>
	 <%
	 	Enumeration<String> initpEnumeration = application.getInitParameterNames();
	 
	 	while (initpEnumeration.hasMoreElements()){
		 	String initParamName = initpEnumeration.nextElement();
	 %>
	 	<li>
	 		<%=initParamName %> =
	 		<%= application.getInitParameter(initParamName) %>
	 		</li>
	 <%
	 }
	 %>
	</ul>
</body>
</html>
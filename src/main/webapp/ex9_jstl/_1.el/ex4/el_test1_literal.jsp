<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- ���ͷ� ǥ���� : EL ���(${})���� ����� �� �ִ� ����
	 ���ڿ�, ����, �ε��Ҽ���, boolean, null �����մϴ�. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ͷ� ǥ����</title>
</head>
<body>
	���ڿ� : $("text")<br>
	���ڿ� : $('text')<br>
	
	<%-- �ڹ��� +�� ����� �� �����. �Ʒ� ó�� ${}�� �ٿ��� ����մϴ�. --%>
	  ���ڿ� ���� : ${'test'}${'test2'}<br>
	  
	<%-- "\"�� ����ҷ��� �� �� ����մϴ�. --%>
		���ڿ� : ${'\\test'}<br>
		����   	: ${20}<br>
		�ε��Ҽ��� : ${3.14}<br>
		boolean : ${true}<br>
		null : ${null}<br>  
</body>
</html>
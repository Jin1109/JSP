<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import="java.text.SimpleDateFormat,java.util.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>import �Ӽ� �׽�Ʈ</title>
<style>
	body{background:yellow}
</style>
</head>
<body>
	<h1> ���� �ð���
	<%=new SimpleDateFormat().format(new Date()) %>�Դϴ�.</h1>
</body>
</html>
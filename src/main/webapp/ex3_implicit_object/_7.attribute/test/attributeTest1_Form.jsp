<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Attribute Test Form</title>
<link rel="stylesheet" href="../../../css/ch5-2.css" type="text/css">
</head>
<body>
<h2>������ �Ӽ� �׽�Ʈ</h2>
<form action="attributeTest1.jsp" method="post">
<table>
	<tr><td colspan="2">Application ������ ������ �����</td></tr>
	<tr>
		<td>�̸�</td>
		<td><input type="text" name="name" id="name" required></td>
	</tr>
	<tr>
		<td>���̵�</td>
		<td><input type="text" name="id" id="id" required></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="����"></td>
	</tr>	
</table>
</form>
</body>
</html>
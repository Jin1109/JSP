<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Attribute Test Form</title>
<link rel="stylesheet" href="../../../css/ch5-12.css" type="text/css">
</head>
<body>
	<h2>������ �Ӽ� �׽�Ʈ</h2>
	<table>
		<tr>
			<td colspan="2">Application ������ ����� �����</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><%=application.getAttribute("name")%></td>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><%=application.getAttribute("id")%></td>
		</tr>		
	</table>
	<br>
	<table>
		<tr>
			<td colspan="2">application ������ ����� �����</td>
		</tr>
		<tr>
			<td>address</td>
			<td><%=session.getAttribute("address")%></td>
		</tr>
		<tr>
			<td>tel</td>
			<td><%=session.getAttribute("tel")%></td>
		</tr>
		<tr>
			<td>email</td>
			<td><%=session.getAttribute("email")%></td>
		</tr>
	</table>
</body>
</html>
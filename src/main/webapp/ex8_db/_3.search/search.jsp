<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Search.jsp</title>
<link href="css/ch03-5.css" type="text/css" rel="stylesheet">
</head>
<body>
<!-- http://loacalhost:8088/JSP/search -->
	<form action='search'>
	 <b>검색할 부서 번호를 입력하세요</b><br>
	  <input type='text' name='deptno' required>
	  <input type='submit' value='전송'>
	</form>
</body>
</html>
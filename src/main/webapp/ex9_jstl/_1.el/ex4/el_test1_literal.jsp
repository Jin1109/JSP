<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 리터럴 표현식 : EL 블록(${})에서 사용할 수 있는 값은
	 문자열, 정스, 부동소수점, boolean, null 가능합니다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>리터럴 표현식</title>
</head>
<body>
	문자열 : $("text")<br>
	문자열 : $('text')<br>
	
	<%-- 자바의 +는 사용할 수 없어요. 아래 처럼 ${}를 붙여서 사용합니다. --%>
	  문자열 연결 : ${'test'}${'test2'}<br>
	  
	<%-- "\"를 출력할려면 두 게 사용합니다. --%>
		문자열 : ${'\\test'}<br>
		정수   	: ${20}<br>
		부동소수점 : ${3.14}<br>
		boolean : ${true}<br>
		null : ${null}<br>  
</body>
</html>
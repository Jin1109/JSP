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
	<h2>영역과 속성 테스트</h2>
	<%
	  request.setCharacterEncoding("euc-kr");
	
	  String email=request.getParameter("email");
	  String address=request.getParameter("address");
	  String tel=request.getParameter("tel");
	  
	  session.setAttribute("email", email);
	  session.setAttribute("address", address);
	  session.setAttribute("tel", tel);
	  
	  String name = (String) application.getAttribute("name");
	%>
	<h3><%=name%>님의 정보가 모두 저장되었습니다.
	</h3>
	<a href="attributeTest3.jsp">확인하러 가기</a>
</body>
</html>
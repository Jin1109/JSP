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

  String name=request.getParameter("name");
  String id=request.getParameter("id");
  
  application.setAttribute("name", name);
  application.setAttribute("id", id);
  
%>
<h3><%=application.getAttribute("name") %>님 반갑습니다.<br>
<%=application.getAttribute("name") %>님의 아이디는 <%=application.getAttribute("id") %>입니다.</h3>
<form action="attributeTest2.jsp" method="post">
<table>
   <tr><td colspan="2">Session 영역에 저장할 내용들</td></tr>
   <tr>
      <td>e-mail 주소</td>
      <td><input type="text" name="email" id="email" required></td>
   </tr>
   <tr>
      <td>집 주소</td>
      <td><input type="text" name="address" id="address" required></td>
   </tr>
   <tr>
      <td>전화번호</td>
      <td><input type="text" name="tel" id="tel" required></td>
   </tr>
   <tr>
      <td colspan="2"><input type="submit" value="전송"></td>
   </tr>
</table>
</form>

</body>
</html>
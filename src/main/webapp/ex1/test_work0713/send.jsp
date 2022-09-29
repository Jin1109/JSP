<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>send.jsp</title>
<style>
table{border-collapse:collapse;width:50%;margin:0 auto} 
tr{height:3em; border-bottom:1px solid black}"
td{width:60%}
</style>
</head>
<body>
<table>
 <tbody>
  <tr><th>ID</th><td><%=request.getParameter("id")%></td></tr>
  <tr><th>Password</th><td><%=request.getParameter("pass")%></td></tr>
  <tr><th>주민번호</th><td><%=request.getAttribute("jumin")%></td></tr>
  <tr><th>E-Mail</th><td><%=request.getAttribute("email")%></td></tr>
  <tr><th>성별</th><td><%=request.getAttribute("gender")%></td></tr>
  <tr><th>취미</th><td><%=request.getAttribute("habbys")%></td></tr>
  <tr><th>우변번호</th><td><%=request.getAttribute("post1")%></td></tr>
  <tr><th>주소</th><td><%=request.getAttribute("address") %></td></tr>
  <tr><th>자기소개</th><td><%=request.getAttribute("intro") %></td></tr>  
 </tbody>
</table>
</body>
</html>

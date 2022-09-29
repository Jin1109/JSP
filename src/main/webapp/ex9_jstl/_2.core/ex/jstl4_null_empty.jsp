<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>empty 연산자</title>
</head>
<body>
<%-- empty 연산자
      형식) empty 값
     : 값이 비어 있어나 null인지를 조사할 때 사용하는 연산자 입니다.
       값이 null이면 true를 반환합니다.
       문자열과 배열의 크기가 0인 경우에도 true를 반환합니다.
--%>
<%
   session.setAttribute("id", "hong");
   //session.invalidate();
%>
<c:if test='${empty id}'>
   <strong style="color:red">아이디가 존재하지 않습니다.</strong>
</c:if>

<c:if test='${!empty id }'>
   <strong style="color:green">아이디가 존재합니다.</strong>
</c:if>

<c:if test='${!empty id }'>   <%-- } 뒤에 공백 넣지 않도록 조심합니다. --%>
   <strong style="color:orange">아이디가 존재합니다.</strong>
</c:if>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>empty ������</title>
</head>
<body>
<%-- empty ������
      ����) empty ��
     : ���� ��� �־ null������ ������ �� ����ϴ� ������ �Դϴ�.
       ���� null�̸� true�� ��ȯ�մϴ�.
       ���ڿ��� �迭�� ũ�Ⱑ 0�� ��쿡�� true�� ��ȯ�մϴ�.
--%>
<%
   session.setAttribute("id", "hong");
   //session.invalidate();
%>
<c:if test='${empty id}'>
   <strong style="color:red">���̵� �������� �ʽ��ϴ�.</strong>
</c:if>

<c:if test='${!empty id }'>
   <strong style="color:green">���̵� �����մϴ�.</strong>
</c:if>

<c:if test='${!empty id }'>   <%-- } �ڿ� ���� ���� �ʵ��� �����մϴ�. --%>
   <strong style="color:orange">���̵� �����մϴ�.</strong>
</c:if>
</body>
</html>
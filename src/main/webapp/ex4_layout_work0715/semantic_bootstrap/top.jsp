<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div>
<% String id = (String)session.getAttribute("id"); 
	if(id != null && !id.equals("") ){
%>
	<%=id%>���� �α��� �Ǿ����ϴ�.
	<a href = 'logout.jsp'>(�α׾ƿ�)</a>
<%	
	}else{
%>
	<a href = 'login.jsp'>�α���</a>
<%
	} 
%>
	<a href = 'join.jsp'>ȸ������</a>
</div>
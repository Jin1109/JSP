<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
	a{color : white; text-decoration: none; padding:0 10px; }
</style>
<div>
	<% if (session.getAttribute("id")!= null){ %>
	<%=session.getAttribute("id") %>�� ȯ���մϴ�.
	<b><a href = 'logout.jsp'>�α׾ƿ�</a></b>
	<%		
	}else{
	%><a href = 'login.jsp'>�α���</a>
	<%} %>
</div>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
	a{color : white; text-decoration: none; padding:0 10px; }
</style>
<div>
	<% if (session.getAttribute("id")!= null){ %>
	<%=session.getAttribute("id") %>님 환영합니다.
	<b><a href = 'logout.jsp'>로그아웃</a></b>
	<%		
	}else{
	%><a href = 'login.jsp'>로그인</a>
	<%} %>
</div>

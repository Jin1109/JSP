<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div>
<% String id = (String)session.getAttribute("id"); 
	if(id != null && !id.equals("") ){
%>
	<%=id%>님이 로그인 되었습니다.
	<a href = 'logout.jsp'>(로그아웃)</a>
<%	
	}else{
%>
	<a href = 'login.jsp'>로그인</a>
<%
	} 
%>
	<a href = 'join.jsp'>회원가입</a>
</div>

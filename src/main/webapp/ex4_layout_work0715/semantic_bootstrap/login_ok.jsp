<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Longin Ok</title>
</head>
<body>
<% 
  String id = application.getInitParameter("id");
  String password = application.getInitParameter("password");
  String inputid = request.getParameter("id");
  String inputpwd = request.getParameter("passwd");
  if(id.equals(inputid) && password.equals(inputpwd)){
	  session.setAttribute("id", id);
	  %>
	  <script>
	  alert('<%=id %>�� ȯ���մϴ�.');
	  location.href="template.jsp";
	  </script>
	  <%
  }else{
	  if(id.equals(inputid)==false){
	  %>
	  <script>
	  	alert('id�� ����� �Է����ּ���');
	  	history.back();
	  </script>	  
	 <%}else if(password.equals(inputpwd)==false){
	 %>
	 <script>
	  	alert('password�� ����� �Է����ּ���');
	  	history.back();
	  </script>
  <%}%>
<%}%>
</body>
</html>
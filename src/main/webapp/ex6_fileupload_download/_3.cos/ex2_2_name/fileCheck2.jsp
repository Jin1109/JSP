<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
   <script src="../js/jquery-3.6.0.js"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
td:first-child{width:30%}
td:last-child{width:70%}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String systemName1=request.getParameter("systemName1");
	String systemName2=request.getParameter("systemName2");
	String origfileName1=request.getParameter("origfileName1");
	String origfileName2=request.getParameter("origfileName2");
	String uploadPath=request.getParameter("uploadPath");
%>  
<div class="container">
<h4>파일 다운로드 폼</h4>
  <table class="table table-bordered table-striped">
      <tr>
      		<td>작성자</td><td><%=name %></td>
      </tr>
      <tr>
         	<td>제목</td><td><%=subject %></td>
      </tr>
      <tr>
          <td>파일명1 </td>
          <td>
          <a href="file_down2.jsp?file_name=<%=systemName1 %>"><%=origfileName1 %></a>
          </td>
      </tr>
      <tr>
          <td>파일명2 </td>
          <td>
          <a href="file_down2.jsp?file_name=<%=systemName2 %>"><%=origfileName2 %></a>
          </td>
      </tr>
      <tr>
          <td>uploadPath </td><td><%=uploadPath %></td>
      </tr>
  </table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test(requestTest1.jsp)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  .container{width:70%; margin-top:30px; vertical-align: middle}
  h3{text-align:center}
</style>
</head>
<body>
	<div class="container">
		<h3>Request �����Դϴ�.</h3>
			<table class="table">
				<tr>
					<td>�̸�</td>
					<td>
					<% out.print(request.getParameter("name")); %>
					</td>
				</tr>
				<tr>
					<td>����</td>
					<td>
						<%
						  if(request.getParameter("gender").equals("male"))
							  out.print("����"); 
						  else 
							  out.print("����");
					    %>
					</td>
				</tr>
				<tr>
					<td>���</td>
					<td>
						<%-- hobby�� �̸��� ���� �Ķ���ʹ� ���� ���� �������� �� �����Ƿ�
						     getParamterVlaues()�޼��带 ����ϼ� String �迭�� ���������ɴϴ�.
						 --%>
						 <%
						   String[] hobbys=request.getParameterValues("hobby");
						   for(String hobby : hobbys)
							   out.print(hobby+" ");
						 %>	   
					</td>
			</table>
	</div>
</body>
</html>
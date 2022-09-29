<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test(requestTest1.jsp)</title>
<meta name="viewport" content="width-device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  .container{width:70%; margin-top:30px; vertical-align: middle}
  h3{text-align:center}
</style>

</head>
<body>
	<div class="container">
		<h1>Request �����Դϴ�.</h1>
			<table class="table">
				<tr>
					<td>�̸�</td>
					<%--name�Ķ���� ���� ���ͼ� ǥ�������� ����մϴ�. --%>
					<td><%=request.getParameter("name") %></td>
				</tr>
				<tr>
					<td>����</td>
					<td><%
					if(request.getParameter("gender").equals("male"))
						{
						 %>
						 ����
						 <%
						} else {
								%>
								����
								<%
								}
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
						 for(String hobby : hobbys){
						 %>
						 	<%=hobby%>&nbsp;&nbsp;
						 <%
						   }
						 %>
					</td>
				</tr>
			</table>
	</div>
</body>
</html>
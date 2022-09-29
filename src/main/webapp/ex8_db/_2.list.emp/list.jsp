
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*, ex8_emp.Emp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ArrayList�̿��մϴ�.</title>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script 
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.container {
	/*width: 500px; */
	margin-top: 3em
}

table, h4 {
	text-align: center
}
</style>
</head>
<body>
  <div class="container">
	<p>�˻�� �Է��ϼ���</p>
	<input class="form-control" id="myInput" type="text" placeholder="Search..">
	<%
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");
		if(list != null){
	%>
		<table class="table table-striped">
		 <thead>
		  <tr>
		  	   <td>�����ȣ</td>
		  	   <td>����̸�</td>
		  	   <td>����</td>
		  	   <td>�Ŵ���</td>
		  	   <td>�Ի�����</td>
		  	   <td>�޿�</td>
		  	   <td>Ŀ�̼�</td>
		  	   <td>�μ���ȣ</td>
		  </tr>
		  </thead>
		  <tbody id="myTable">
		  	  <%
		  	  for (Emp e : list) {
		  	  %>
		  	  <tr>
		  	       <td><%=e.getEmpno()%></td>
					<td><%=e.getEname()%></td>
					<td><%=e.getJob()%></td>
					<td><%=e.getMgr()%></td>
					<td><%=e.getHiredate()%></td>
					<td><%=e.getSal()%></td>
					<td><%=e.getComm()%></td>
					<td><%=e.getDeptno()%></td>
		  	  </tr>
		  	  
		  	  <%   			
		  	  		}
		  	  %>
		  </tbody>	   
		</table>		
		<% 
			} else {
				out.print("<h4>��ȸ�� �����Ͱ� �����ϴ�.</h4>");
			}
		%>
	</div>
 <script>
	$("#myInput").on("keyup", function(){
		var value = $(this).val().toLowerCase();
		$("#myTable tr").filter(function(){
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
 </script>	
</body>
</html>
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
	  location.href="templatetest.jsp";
	  </script>
	  <%
 			String check_value = request.getParameter("remember");
	  		Cookie cookie = new Cookie("id", request.getParameter("id"));
	  		//ID ����ϱ⸦ üũ�� ���
	  		if (check_value != null && check_value.equals("store")) {
	  			//cookie.setMaxAge(60 * 60 * 24);//����� ��ȿ�ð��� 24�ð����� �����մϴ�.
	  			cookie.setMaxAge(2 * 60);//��ȿ�ð��� 2������ �����մϴ�.
	  			response.addCookie(cookie);//Ŭ���̾�Ʈ�� ��Ű���� �����մϴ�.
	  		} else {
	  			cookie.setMaxAge(0);
	  			response.addCookie(cookie);
	  		}
 		 } else if (id.equals(inputid)) {
	%> 
	<script>
		alert("��й�ȣ�� Ȯ���ϼ���.");
		history.back();
	</script>
	<%  
  		} else {
  	%>
  	<script>
	  	alert('���̵� Ȯ���ϼ���');
	  	history.back();
	</script>
	<%
		}
	%>
</body>
</html>
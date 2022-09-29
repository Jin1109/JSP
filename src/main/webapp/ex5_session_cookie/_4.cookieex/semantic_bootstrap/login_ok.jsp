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
	  alert('<%=id %>님 환영합니다.');
	  location.href="templatetest.jsp";
	  </script>
	  <%
 			String check_value = request.getParameter("remember");
	  		Cookie cookie = new Cookie("id", request.getParameter("id"));
	  		//ID 기억하기를 체크한 경우
	  		if (check_value != null && check_value.equals("store")) {
	  			//cookie.setMaxAge(60 * 60 * 24);//쿠기의 유효시간을 24시간으로 설정합니다.
	  			cookie.setMaxAge(2 * 60);//유효시간은 2분으로 설정합니다.
	  			response.addCookie(cookie);//클라이언트로 쿠키값을 전송합니다.
	  		} else {
	  			cookie.setMaxAge(0);
	  			response.addCookie(cookie);
	  		}
 		 } else if (id.equals(inputid)) {
	%> 
	<script>
		alert("비밀번호를 확인하세요.");
		history.back();
	</script>
	<%  
  		} else {
  	%>
  	<script>
	  	alert('아이디를 확인하세요');
	  	history.back();
	</script>
	<%
		}
	%>
</body>
</html>
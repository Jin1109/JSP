<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>redirect.jsp</title>
<style>
body{background:#c7c7ef;}
div{color:white; font-size:30px; font-weight:bold}
</style>
</head>
<body>
<!-- request��ü�� getParamter()�޼��带 �̿��ؼ� �ĸ����� "food"�� ���� �����ɴϴ�. -->
<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %>�� '�� �Ǵ� ���� �Ǵ� ����'�� ����϶�� �ǹ��Դϴ�. --%>
 <div>
 request �Ӽ� food �� : <%=request.getAttribute("food") %><br>
 </div>
 <p>
    ��û�ּ� <%=request.getRequestURL() %>
 </p>
</body>
</html>
<%-- 
 �̵��� �� �������� ���� ǥ������ URL�� ����ǹǷ� ��û�� �ٲ�� �˴ϴ�.
 ����, dlehdehls �ó�vpdlwldptjsms
 �������� request ������ �Ӽ� ���� ������ �� �����ϴ�.
--%>
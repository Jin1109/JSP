<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
<style>
body{background:pink;}
div{color:red}
p{color:green}
</style>
</head>
<body>
<!-- request��ü�� getParamter()�޼��带 �̿��ؼ� �ĸ����� "food"�� ���� �����ɴϴ�. -->
<%-- jsp���� <%=�� �Ǵ� ���� �Ǵ� ���� %>�� '�� �Ǵ� ���� �Ǵ� ����'�� ����϶�� �ǹ��Դϴ�. --%>
 <div>
 request �Ķ���� �� : <%=request.getParameter("food") %>
 </div>
 <p>
    �����ִ� ������ �ּ� �Դϴ�. : <%=request.getRequestURL() %>
 </p>
</body>
</html>
<%-- ���� �� �ּҶ��� �� Ȯ���� ������.
 �������� �ּ� ǥ������ URL������ ������ ������ jsp�� ����
 request ������ �����ϱ� ������ �̵��� jsp����������
 request ������ �����Ǿ� �ִ� ���� ������ �����մϴ�. --%>
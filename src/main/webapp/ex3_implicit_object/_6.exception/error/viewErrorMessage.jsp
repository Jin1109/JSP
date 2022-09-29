<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<%-- (1) page ��Ƽ���� errorPage �Ӽ��� ����ؼ� ���� �������� �����ϸ�
		 ������ ���� �������� isErrorPage �Ӽ��� ���� "true"�̿��� �մϴ�.
	 (2) isErrorPage = "true" :���� �������� �������� �ǹ��մϴ�.
	 	 ������ �߻��� �� ������ ���� �������� ����ϰ� �˴ϴ�.
	 (3) exception�� page ���ù����� ��� ������( isErrorPage = "true")��
	 	 ������ JSP���������� ���ܰ� �߻��� �� ���ɵǴ� java.;amg.Throwable�� �ν��Ͻ��� ���� ���� ���� �Դϴ�. 
 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �߻�:viewErrorMessage.jsp</title>
</head>
<body>
	��û ó�� �������� ������ �߻��Ͽ����ϴ�.<br>
	���� �ð� ���� ������ �ذ��ϵ��� �ϰڽ��ϴ�.
	<p>
	  ���� Ÿ��: <%= exception.getClass().getName() %> <br>
	  ���� �޽���: <b><%= exception.getMessage() %></b>
	</p>  
</body>
</html>
<%--
   2. ��ũ��Ʈ��(Scriptlet)
    (1) HTML �ڵ�� �� �κ��� �Ϲ� HTML ����ó�� �״�� ����ϸ�
        �ڹ� �ڵ�� �̷���� ���� �κ��� <%...%>�� ǥ���Ǵ� ��ũ��Ʈ�� �±׸�
        ����Ͽ� �����մϴ�.
        
    (2) JSP ������ ����� �� �� �����̳ʿ� ���� JSP �ڵ尡 ���� Ŭ������ ��ȯ�˴ϴ�.
        �̶� �Ϲ� ���� Ŭ������ service()�޼��忡 �ش��ϴ�
        _jspService()�޼��尡 �� �����̳ʿ� ���� �ڵ����� �����ǵǸ�
        �� �޼����� ���ο� JSP�ڵ尡 ���� �˴ϴ�.
        �̷��� �� �����̳ʿ� ���� ���� Ŭ������ �����Ǹ� �ν��Ͻ��� �����尡
        �����ǰ� _jspService()�޼��忡 ���� ���� �������� �������
        Ŭ���̾�Ʈ�� ���۵Ǿ� ��� �������� ǥ�õ˴ϴ�.
   
   E:\Workspace\.metadata\.plugins\org.eclipse.wst.server.core
   \tmp0\work\Catalina\localhost\JSP\org\apache\jsp\ex2_005fjsp\_005f4_scriptlet
      ������ scriptletTest_jsp.java�� scriptletTest_jsp.class ������ �ֽ��ϴ�.
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Calendar"%>
<%
   Calendar c = Calendar.getInstance();
   int hour = c.get(Calendar.HOUR_OF_DAY);
   int minute = c.get(Calendar.MINUTE);
   int second = c.get(Calendar.SECOND);
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scriptlet Test</title>
</head>
<body>
   <h1>���� �ð��� 
   	   <%=hour %>��
   	   <%=minute %>��<%=second %>�� 
   </h1>
   <%
   		if(hour >= 12) {
   %>
   <h2>���� �Դϴ�.</h2>
   <%
   		} else {
   %>
   <h2>���� �Դϴ�.</h2>
   <%
   		}
   %>
</body>
</html>
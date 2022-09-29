<%--
   ������ �⺻������ �����̳� ���ο� ������ ���� �� �����ϰ� ����� ������ �����ϱ� ���ؼ� ����ID��� ���� ����մϴ�.
   ���� ID�� ��Ű�� ����ؼ� �����Ǹ� �� ���� ��Ű �̸��� JSESSIONID �Դϴ�.
 --%>
 <%--
    (1) ���� �������� ������ �ּ���
    (2) ���� �ϼ���
    (3) ���ΰ�ħ �غ�����~
       JSESSIONID�� �߰��� ���̴��� Ȯ���� �ּ���
  --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test2(requestTest2.jsp)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
   <h1>���� ���� �� �޼��� ��� ��</h1>
   <table class="table table-striped">
      <tr>
         <td>�������</td>
         <%
         	Cookie[] cookie = request.getCookies();
            if (cookie == null) { //ó�� ��û�� ��
         %>
         <td>��Ⱑ �������� �ʽ��ϴ�.</td>
         <%
            } else { //�� ��°���� ���� ��û�� ��
            	for (int i = 0; i < cookie.length; i++) {
         %>
         <td><%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)
         		&nbsp;&nbsp;</td>
         <%
            	}//for end
            }//else end	
         %>   		
      </tr>
      <tr>
      		<td>���� ID</td>
      		<td><%=session.getId()%></td>
      </tr>
      
      <%-- 
      1. ��Ĺ�� web.xml�� �⺻ ���ǽð��� �Ʒ��� ���� 30��(1800��)���� �����Ǿ� �ս����.
         <session-config>
         	<session-timeout>30</session-timeout>
         </session-config>
      2. getMatInactiveInterval() : ���� ��ȿ �ð����� �� ������ �����ɴϴ�.
       	 --%>
       	   
      <tr>
      		<td>���� ��ȿ �ð�</td>
      		<td><%=session.getMaxInactiveInterval()/60 + "��"%></td>
      </tr>
      <tr>
      		<td>���� ����</td>
      		<td>�Ӽ� "id"�� "hong" ����<%session.setAttribute("id", "hong");%></td>
      </tr>
      <tr>
      		<td>���� ������ ��������</td>
      		<td><%=session.getAttribute("id")%></td>
      </tr>
    
   </table>
</div>
</body>
</html>
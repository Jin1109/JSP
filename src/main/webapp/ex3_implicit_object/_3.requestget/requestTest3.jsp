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
   <h1>���, URL/URI, ��û�ڽĿ� ���õ� ���� ����</h1>
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
      		<td>���� �����θ�</td>
      		<td><%=request.getServerName()%></td>
      </tr>
      <tr>
      		<td>���� ��Ʈ��ȣ</td>
      		<td><%=request.getServerPort()%></td>
      </tr>
      <tr>
      		<td>��û URL</td>
      		<td><%=request.getRequestURL()%></td>
      </tr>
      <tr>
      		<td>��û URI(Uniform Resource Identifier)</td>
      		<td><%=request.getRequestURI()%></td>
      </tr>
      <tr>
      		<td>��û ����</td>
      		<td><%=request.getQueryString()%></td>
      </tr>
      <tr>
      		<td>��û ����</td>
      		<td><%=request.getQueryString()%></td>
      </tr>
      <tr>
      		<td>Ŭ���̾�Ʈ ȣ��Ʈ��</td>
      		<td><%=request.getRemoteHost()%></td>
      </tr>
      <tr>
      		<td>Ŭ���̾�Ʈ IP �ּ�</td>
      		<td><%=request.getRemoteAddr()%></td>
      </tr>
      <tr>
      		<td>��������</td>
      		<td><%=request.getProtocol()%></td>
      </tr>
      <tr>
      		<td>��û���</td>
      		<td><%=request.getMethod()%></td>
      </tr>
      <tr>
      		<td>���ؽ�Ʈ ���
      		<%-- ���ؽ�Ʈ ���(�谹���� Context�� �� ���ø����̼��� �ǹ��մϴ�.) --%>
      		</td>
      		<td><%=request.getContextPath()%></td>
      </tr>
   </table>
</div>
</body>
</html>
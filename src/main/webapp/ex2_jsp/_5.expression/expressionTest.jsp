<%-- 
	3. ǥ����(Expression)
	   (1) ���� �Ǵ� ��ũ��Ʈ�� ��׿��� ����� ������ �޼����� ���ϰ��� ����ϱ� ���� ���Ǵ� ����Դϴ�.
	   (2) �� �����̳ʿ� ���� _jspService()�޼ҵ� ���ο� ��� ��ü�� print()�޼��� ��ȣ�ȿ�
	   	   ��°�� ���Ƿ� scriptlet���� �޸� �����ݷ��� ����ؼ��� �ȵ˴ϴ�.
	   (3) ����
	       <%=���� %>	 
	       <%=���ϰ��� �ִ� �޼ҵ� %>
	       <%= tntlr %>
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
//1���� 100������ ���� ���ϴ� sum()�޼��带 ����
  public int sum() {
		int total = 0;
		for (int i = 1; i <= 100; i++) {
			total += i;
		}
		return total;
}
%>
<%
	//������ �Ҵ��մϴ�.
	String str = "1���� 100������ ��";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Expression Test</title>
<style>
	span{color:red;}
</style>
</head>
<body>
	<h2><%=str %>�� <span><%=sum()%></span> �Դϴ�.</h2>
	<br>
	<h2><%=str %>�� 3�� ���ϸ� <span><%=sum()%></span>�Դϴ�.</h2>
	<br>
	<h2><%=str %>�� 1000���� ������ <span><%=sum() / 1000.0%></span>�� �˴ϴ�..</h2>
	<br>
</body>
</html>
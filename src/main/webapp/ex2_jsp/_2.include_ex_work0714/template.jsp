<%-- �����ϴ� ������ �Դϴ�.

*include ���þ�(��Ƽ��)
Ư���� JSP ���� �Ǵ� HTML ������ �ش� JSP�������� ������ �� �ֵ��� ����� �����ϴ� ���þ� �Դϴ�.
include ������� �����Ǵ� ���� �������� ���ԵǴ� JSP���ϵ��� �� �����̳ʿ� ����
���ε��� ������ �Ǵ� ���� �ƴ϶� �� �ҽ��� include ����� ����� �ش� ��������
����Ǿ� �������� ������ �� �����̳ʴ� ��ü JSP���ϵ��� �ҽ��� ������ �ϳ��� ����������
�������մϴ�.

���� JSP ���������� ����Ǵ� �κ��� ���� �� �̷��� ����Ǵ� �κ��� ���Ϸ� �����
include ���þ�� �����մϴ�.
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
   <head>
   <meta charset="EUC-KR">
   <title>include �׽�Ʈ</title>
   <style>
	header{background-color: #018002; text-align:right; color: white; height: 50px; line-height: 50px; font-size: 30px}
	footer{position: fixed; bottom: 10px; width: 100%; text-align: center}
</style>
   </head>
<body>
     <header>
      <%@ include file="header.jsp" %>
    </header>   
   <h1> template.jsp �����Դϴ�.</h1>
   <footer>
      <%@ include file="footer.jsp" %>
   </footer>
</body>
</html>
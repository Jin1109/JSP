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
   
   </head>
<body>
     <header>
      <%@ include file="top.jsp" %>
    </header>   
   <h1> template.jsp �����Դϴ�.</h1>
   <footer>
      <%@ include file="bottom.jsp" %>
   </footer>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%-- JSP������ core ���̺귯���� ����մϴ�. --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="EUC-KR">
<title>JSTL core ���̺귯�� ��� ���� 1</title>
</head>
<body>
	<%-- 
	
	* Cross-Site Scripting(XSS)
			���������� ����ڰ� �����Ϸ��� ����Ʈ�� ��ũ��Ʈ�� �ִ� ����̸�
			���ݿ� �����ϸ� ����Ʈ�� ������ ����ڴ� ���Ե� �ڵ带 �����ϰ� �Ǹ鼭
			�ǵ�ġ ���� �ൿ�� �����ŵ�ϴ�. 
	
	 --%>
	 
	 <c:set var="test" value="<script>alert('ȯ���մϴ�.-escapeXml=false')</script>" />
	 <c:out value="${test }" escapeXml="false"/>
	 <%-- 
	  escapeXml=false�� html�ױ׸� �ν��մϴ�.
	   ������ �ҽ� ���� : <script>alert('ȯ���մϴ�.-excapeXml=false')</script>
	   ���� ��� : ��ũ��Ʈ ����
	  --%>

</body>
</html>
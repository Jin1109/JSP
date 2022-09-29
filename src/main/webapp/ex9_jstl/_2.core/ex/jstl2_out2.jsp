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
	 
	 <c:set var="test" value="<script>alert('ȯ���մϴ�1.')</script>" />
	 <c:out value="${test }" escapeXml="true"/> <%-- value="${test }" �Ǵ� value='${test }' �ۼ��� �� �ֽ��ϴ�. --%>
	 <%-- 
	   <c:out>�� escapXml �Ӽ��� �⺻���� true�̰� html�� Ư�����ڸ� �ش� �ڵ�� ��ȯ�մϴ�.
	   Ư������			�ڵ�
	   <			��	&lt;
	   >			��	&gt;
	   '			��	&#039;
	   "			��	&#034;
	   ������ �ҽ� ���� : &lt;script&gt;alert(&#039;ȯ���մϴ�.&#034;)&lt/script&gt;
	   ���� ��� : <script>alert('ȯ���մϴ�.')</script>
	  --%>
	  
	  <c:set var="test" value='<script>alert("ȯ���մϴ�.2")</script>' />
	  <c:out value="${test }"/>
	  
	  <%-- &lt;script&gt;alert(&#039;ȯ���մϴ�2.&#034;)&lt/script&gt; --%>
	  

</body>
</html>
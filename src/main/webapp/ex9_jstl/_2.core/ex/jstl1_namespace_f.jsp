<%--
   JSTL(JSP Standard Tag Library) 
   - ���� ���Ǵ� ����� ��Ƶ� Ŀ���� �±�(�����ڰ� ���� ������ �� �ִ� �±�)�Դϴ�.
   
   JSTL �ٿ�ε�
   1) �� https://mvnrepository.com/ ����
        �˻��� "jstl" �Է�
 
      �� https://mvnrepository.com/artifact/javax.servlet/jstl/1.2
        jstl-1.2.jar �ٿ�ε��մϴ�.
   
   2) ��Ŭ������ ���� �ֱ�
      webapp - WEB-INF - lib - (jstl-1.2.jar) 
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%-- * taglib ���þ� : JSTL�̳� Ŀ���� �±� �� �±� ���̺귯���� JSP���� ����� �� ���λ縦 �����ϱ� ���� ����մϴ�
	
	�� prefix �Ӽ��� ����� Ŀ���� �±��� ���ӽ����̽��� �����ϰ�
			 ��õ� ���� �±� ���̺귯���� ȣ���� �� ����� ���λ縦 �ǹ��մϴ�.
	�� uri �Ӽ��� �±� ���̺귯���� ������ �±׿� �Ӽ� ������ ������ ������ �����ϴ� ��ġ�� �����մϴ�.
	
	* taglib ���� : ����ϸ� �ڵ��� ���̰� �پ��� �νļ��� �������ϴ�.		 	
 --%>    
<%-- JSP �������� core ���̺귯���� ����մϴ�. --%>
<%@ taglib prefix="f" 
		   uri="http://java.sun.com/jsp/jstl/core"%>

<%--
	preifx="f' : ����� �±��� ���ӽ����̽��� �̸��Դϴ�.
	 ��) <���ӽ����̽�: �±��̸�/>
	   <f:set/>
	   
	uri="http://java.sun.com/jsp/jstl.cor"
		�� �ھ� ���̺귯���� ����ϰڴٴ� �ǹ��Դϴ�.
		   ������ �ִ� �ּ��̸� �ݵ�� ����� �մϴ�.   
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL core ���̺귯�� ��� ���� 1</title>
</head>
<body>
	<%--<f:set> ������ ���� �����ϴ� �±��Դϴ�. 
		var : ���� ������ ���� �̸� 
		value : ������ ��
	--%>
	<f:set var="test" value="Hello JSTL!" />
	
	<h3>
		&lt;f:set&gt; ��� ��;
		<f:out value='${test}' /><!-- ������ ���� ����ϴ� �±��Դϴ�. -->
	</h3>
	
	<f:remove var="test" /><!-- ������ �Ӽ��� �����ϴ� �±��Դϴ�. -->
	<h3>
		&lt;f:set&gt; ��� ��;
		<f:out value='${test}' />
	</h3>
	
	<f:catch var="err"><!-- ���� ó���� ���� �±��Դϴ�.
							  ���ܰ� �߻��ϸ� var�� ������ ���� ��ü�� �Ҵ�˴ϴ�. -->
		<%=10 / 0%>
	</f:catch>								  
	<h3>
		&lt;f:catch&gt; ��� ��;
		<f:out value="${err}" />
	</h3>
	
	<!-- ���� ó���� ���� �±��Դϴ�. 
		 if �� ���������� else�� �������� �ʽ��ϴ�.-->
	<f:if test="true">
			���ǽ��� ���̾ ������ �����մϴ�.<br>
	</f:if>
	
	<f:if test="${5<10}">
		<h3>5�� 10���� �۴�.</h3>
	</f:if>
	
	<f:if test="${6+3==8}">
		<h3>6 + 3 �� 9�̴�.</h3>
	</f:if>
	
<%--
	1. <f:choose>, <f:otherwise> �±�
	   - �������� �������� ��� ���
	   
	   - �����߿� �����ϴ� ���� ������ �����ϰ� ����ϴ�.
	     (�� �Ѱ��� ����-if~else if ~ else ���� ����)
	     	�ϳ��� choose �±׿��� ���� ���� when �±װ� ����
	     	
	2. ����
	   <f:choose>
	     body content (<when> and <otherwise> subtags)
	     //������ �����ϸ� ���� - ���� �� �ۼ��� �� �ֽ��ϴ�.
	     <f:when test="testCondition">
	     	body content
	     </f:when>	
	     </f:otherwise> //������ �������� ������ ����
	     	conditional block
	     </f:otherwise>
	   </f:choose>  		
 --%>
 	<f:choose>
 		<f:when test="${5+10==50}">
			<h3>5+10�� 50�� �ƴϴ�.</h3>
		</f:when>
 		
		<f:otherwise>
			<h3>5+10�� 50�� �ƴϴ�.</h3>
		</f:otherwise>
	</f:choose>
	
<%--
   1. ���� a�� 3�� �����մϴ�.
   
   2. ���� a�� ���� 1�̸� "1�Դϴ�."
      2�̸� "2�Դϴ�."
      1�Ǵ� 2�� �ƴϸ� "1�Ǵ� 2�� �ƴմϴ�."
      ��� ����մϴ�.
      
   3. ���� a�� ���� 1���� �մϴ�.
   
   4. ���� a�� ���� ����մϴ�.
 --%>
 	<f:set var="a" value="3"/>
	<f:choose>
	   <f:when test="${a==1 }">
	      <h3>1�Դϴ�.</h3>
	   </f:when>
	   <f:when test="${a==2 }">
	      <h3>2�Դϴ�.</h3>
	   </f:when>
	   <f:otherwise>
	      <h3>1�Ǵ� 2�� �ƴմϴ�.</h3>
	   </f:otherwise>
	</f:choose>
	<f:set var="a" value="${a+1}"/>
	
	<h3>
	   <f:out value="${a}"/>
	</h3> 				 	
</body>
</html>
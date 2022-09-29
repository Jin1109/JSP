<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL core ���̺귯�� ��� ���� 2</title>
</head>
<body>

	<%-- �ں��� for���� �����մϴ�.
	 items �Ӽ��� �÷����̳� �迭 ������ ��ü�� �����Ͽ� ��ü�� ���ؽ���ŭ �ݺ� �� �� �ֽ��ϴ�.
	 begin : ���� ���ؽ�
	 end : �� �ε���
	 step : ������
	 var : �ݺ� ���� ��� ���� �ݺ��ϰ� �ִ� ���� ����ϴ� �����Դϴ�.
	 --%>
	 	<c:forEach var="test" begin="1" end="10" step="2">
	 		<b>${test}</b>&nbsp;
	 	</c:forEach>
	 	<hr>
	 	
	 	<%
	 		pageContext.setAttribute("nameList", 
	 					new String[] {"ȫ�浿", "�Ӳ���", "������", "�Ż��Ӵ�" });
	 	%>
	 	<%-- �迭�� ��� ������ ����մϴ�.
	 	 items���� $(nameScope.nameList} �Ǵ� ${nameList} ��� ���� --%>
		<ol>
			<c:forEach var="name" items="${pageScope.nameList}">
				<li>${name}</li>
			</c:forEach>
		</ol>
		<hr>
		
		<%-- �迭�� ���ؽ� 2���� 3������ ������ �߷��մϴ�. 
			 ������ ������ ������ �����մϴ�. --%>
		<ul>
			<c:forEach var="name" items="${nameList}" begin="2" end="3">
				<li>${name}</li>
			</c:forEach>
		</ul>
		<hr>
		
		<%-- varStatus �Ӽ��� �ݺ� ������ ��� �ִ� ��ü(LoopTagStatus)��
					������ �������� ������ �����ϴ�.
			varStatus="status"�� ���
			status.index : �ݺ����࿡�� ������ ���ؽ����� �ǹ��մϴ�.
			status.count : �ݺ� ������ Ƚ���� �ǹ��մϴ�.		
			--%>
		<ul>
		<c:forEach var="name" items="${nameList}"  begin="2" end="3"
					 varStatus="status">
			<li>${status.count}��° �ݺ�-index	[${status.index}]:${name}</li>		 
		</c:forEach>
		</ul>	
		
		
		<%
			java.util.ArrayList<java.util.Map<String, Object>> array =
							new java.util.ArrayList<java.util.Map<String, Object>>();
			java.util.HashMap<String, Object> m = new java.util.HashMap<String, Object>();
			m.put("name", "ȫ�浿");
			m.put("age", 21);
			array.add(m);
			
			java.util.HashMap<String, Object> m2 = new java.util.HashMap<String, Object>();
			m2.put("name", "�̼���");
			m2.put("age", 22);
			array.add(m2);
		%>	 	 	 
		*** map�� forEach�� ����մϴ�. ***
		<ul>
			<c:forEach var="data" items="<%=m%>">
				<li>${data.key}- ${data.value}</li> 
			</c:forEach>
		</ul>
		<hr>
		
		
		
		
		
		
		
		*** Ű�� �ƴ� ��� ����մϴ�. ***
		<c:set var="map" value="<%=m%>" />
			<ol>
				<li>${map["name"]}</li>
				<li>${map["age"]}</li>
			</ol>
		<hr>
		
		
		
		
		
		
		*** array���� ������ ������ ***
		<c:forEach var="map" items="<%=array%>" >
			<ol>
				<c:forEach var="data" items="${map}">
					 <li>${data.key}- ${data.value}</li> 
				</c:forEach>
			</ol>
		</c:forEach>	
		<hr>
		
		
		
		
		
		<!-- �ڹ��� for���� stringTokenizer ��ü�� �����Ͽ��ٰ� �� �� �ֽ��ϴ�.
		items�� ������ ���� delims �Ӽ��� �����ڷ� ���� �� ������ ��ŭ �ݺ��� �����մϴ�. -->
		<c:forTokens var="alphabet" items="a,b,c,d,e,f,g,h,i,j,k,l,m,n"
			delims=",">
			<b>${alphabet}</b>&nbsp;
		</c:forTokens>
</body>
</html>
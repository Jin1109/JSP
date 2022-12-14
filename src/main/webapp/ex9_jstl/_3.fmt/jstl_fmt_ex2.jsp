<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%-- fmt : 국제화/형식화의 기능을 제공해 주는 JSTL 라이브러리 입니다. --%>
<!-- fmt 라이브러리를 등록하느 코드 입니다. -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	Date date = new Date();
	pageContext.setAttribute("date", date);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL fmt 라이브러리 사용 예제</title>
</head>
<body>
<p>
	<%-- <fmt:formatNumber : 숫자 형식을 패턴을 설정 할 때 사용합니다. 
		 type : 숫자의 타입으로 숫자, 통화, 퍼센트 중 서렁할 수 있습니다.
		 pattern : 지정한 값을 어떤 패턴으로 변화시킬지 정할 수 있습니다. --%>
		 
	<!--값을 통화 형식으로 변환합니다. -->
	<fmt:formatNumber value="50000" type="currency"/><br>
	
	<fmt:formatNumber value="50000" type="currency" currencySymbol="\\"/><br>
	
	<!-- 값을 퍼센트 형식으로 변환합니다. -->
	<fmt:formatNumber value="0.15" type="percent"/><br>
	
	<!-- 숫자를 ###,###,### 형식으로 출력합니다.
   # : 채워야 할 자리에 비해서 데이터가 모자라면 공백으로 표시합니다.
      자리수 보다 수치 데이터가 길 경우 자리수 만큼만 출력합니다.
   0 : 빈 자리 만큼 0으로 채워요.
    -->
    <fmt:formatNumber type="number" value="500567300" pattern="###,###,###"/><br>
    <fmt:formatNumber value="1234" pattern="###,###,###"/><br>
    <fmt:formatNumber value="1234" pattern="000,000,000"/>
</p>
<P>
	<!-- 날짜만 출력합니다. -->
	<fmt:formatDate value="${date}" type="date"/><br>
	
	<!-- 시간만 출력합니다. -->
	<fmt:formatDate value="${date}" type="time"/><br>
	
	<!-- 날짜와 시간 출력합니다. -->
	<fmt:formatDate value="${date}" type="both"/>
</P>
<p>
	<!-- 날짜와 시간을 짧게 출력합니다. -->
	<fmt:formatDate value="${date}" 	type="both"
					timeStyle="short"	dateStyle="short"/><br>
					
	<!-- 날짜와 시간을 길게 출력합니다. -->
	<fmt:formatDate value="${date}" 	type="both"
					timeStyle="long"	dateStyle="long"/><br>					   
</body>
</html>
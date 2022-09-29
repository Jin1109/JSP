<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>redirect.jsp</title>
<style>
body{background:#c7c7ef;}
div{color:white; font-size:30px; font-weight:bold}
</style>
</head>
<body>
<!-- request객체의 getParamter()메서드를 이용해서 파리미터 "food"의 값을 가져옵니다. -->
<%-- jsp에서 <%=값 또는 수식 또는 변수 %>는 '값 또는 수식 또는 변수'를 출력하라는 의미입니다. --%>
 <div>
 request 속성 food 값 : <%=request.getAttribute("food") %><br>
 </div>
 <p>
    요청주소 <%=request.getRequestURL() %>
 </p>
</body>
</html>
<%-- 
 이동될 때 브라우저의 조소 표시줄의 URL이 변경되므로 요청이 바뀌게 됩니다.
 따라서, dlehdehls ㅓ네vpdlwldptjsms
 서블릿에서 request 영역의 속성 값에 접근할 수 없습니다.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
<style>
body{background:pink;}
div{color:red}
p{color:green}
</style>
</head>
<body>
<!-- request객체의 getParamter()메서드를 이용해서 파리미터 "food"의 값을 가져옵니다. -->
<%-- jsp에서 <%=값 또는 수식 또는 변수 %>는 '값 또는 수식 또는 변수'를 출력하라는 의미입니다. --%>
 <div>
 request 파라미터 값 : <%=request.getParameter("food") %>
 </div>
 <p>
    보여주는 페이지 주소 입니다. : <%=request.getRequestURL() %>
 </p>
</body>
</html>
<%-- 실행 후 주소란을 꼭 확인해 보세요.
 브라우저의 주소 표지술의 URL변경이 없으면 서블릿과 jsp가 같은
 request 영역을 공유하기 때문에 이동된 jsp페이지에서
 request 영역에 공유되어 있는 값에 접근이 가능합니다. --%>
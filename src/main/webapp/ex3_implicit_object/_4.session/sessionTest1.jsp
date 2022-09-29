<%--
   세션은 기본적으로 컨테이너 내부에 정보를 저장 및 관리하고 저장된 정보에 접근하기 위해서 세션ID라는 것을 사용합니다.
   세션 ID는 쿠키를 사용해서 유지되며 이 때의 쿠키 이름은 JSESSIONID 입니다.
 --%>
 <%--
    (1) 기존 브라우저를 종료해 주세요
    (2) 실행 하세요
    (3) 새로고침 해보세요~
       JSESSIONID가 추가로 보이는지 확인해 주세요
  --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test2(requestTest2.jsp)</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
   <h1>세션 설정 및 메서드 사용 법</h1>
   <table class="table table-striped">
      <tr>
         <td>쿠기정보</td>
         <%
         	Cookie[] cookie = request.getCookies();
            if (cookie == null) { //처음 요청할 때
         %>
         <td>쿠기가 존재하지 않습니다.</td>
         <%
            } else { //두 번째부터 같은 요청일 때
            	for (int i = 0; i < cookie.length; i++) {
         %>
         <td><%=cookie[i].getName()%>(<%=cookie[i].getValue()%>)
         		&nbsp;&nbsp;</td>
         <%
            	}//for end
            }//else end	
         %>   		
      </tr>
      <tr>
      		<td>세션 ID</td>
      		<td><%=session.getId()%></td>
      </tr>
      
      <%-- 
      1. 톰캣을 web.xml에 기본 세션시간을 아래와 같이 30분(1800초)으로 설정되어 잇스빈다.
         <session-config>
         	<session-timeout>30</session-timeout>
         </session-config>
      2. getMatInactiveInterval() : 세션 유효 시가능을 초 단위로 가져옵니다.
       	 --%>
       	   
      <tr>
      		<td>세션 유효 시간</td>
      		<td><%=session.getMaxInactiveInterval()/60 + "분"%></td>
      </tr>
      <tr>
      		<td>세션 설정</td>
      		<td>속성 "id"에 "hong" 설정<%session.setAttribute("id", "hong");%></td>
      </tr>
      <tr>
      		<td>세션 설정값 가져오기</td>
      		<td><%=session.getAttribute("id")%></td>
      </tr>
    
   </table>
</div>
</body>
</html>
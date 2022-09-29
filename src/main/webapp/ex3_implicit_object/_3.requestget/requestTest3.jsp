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
   <h1>쿠기, URL/URI, 요청박식에 관련된 정보 예제</h1>
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
      		<td>서버 도메인명</td>
      		<td><%=request.getServerName()%></td>
      </tr>
      <tr>
      		<td>서버 포트번호</td>
      		<td><%=request.getServerPort()%></td>
      </tr>
      <tr>
      		<td>요청 URL</td>
      		<td><%=request.getRequestURL()%></td>
      </tr>
      <tr>
      		<td>요청 URI(Uniform Resource Identifier)</td>
      		<td><%=request.getRequestURI()%></td>
      </tr>
      <tr>
      		<td>요청 쿼리</td>
      		<td><%=request.getQueryString()%></td>
      </tr>
      <tr>
      		<td>요청 쿼리</td>
      		<td><%=request.getQueryString()%></td>
      </tr>
      <tr>
      		<td>클라이언트 호스트명</td>
      		<td><%=request.getRemoteHost()%></td>
      </tr>
      <tr>
      		<td>클라이언트 IP 주소</td>
      		<td><%=request.getRemoteAddr()%></td>
      </tr>
      <tr>
      		<td>프로토콜</td>
      		<td><%=request.getProtocol()%></td>
      </tr>
      <tr>
      		<td>요청방식</td>
      		<td><%=request.getMethod()%></td>
      </tr>
      <tr>
      		<td>컨텍스트 경로
      		<%-- 컨텍스트 경로(톰갯에서 Context는 웹 애플리케이션을 의미합니다.) --%>
      		</td>
      		<td><%=request.getContextPath()%></td>
      </tr>
   </table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test(requestTest1.jsp)</title>
<meta name="viewport" content="width-device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  .container{width:70%; margin-top:30px; vertical-align: middle}
  h3{text-align:center}
</style>

</head>
<body>
	<div class="container">
		<h1>Request 예제입니다.</h1>
			<table class="table">
				<tr>
					<td>이름</td>
					<%--name파라미터 값을 얻어와서 표현식으로 출력합니다. --%>
					<td><%=request.getParameter("name") %></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><%
					if(request.getParameter("gender").equals("male"))
						{
						 %>
						 남자
						 <%
						} else {
								%>
								여자
								<%
								}
								%>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<%-- hobby란 이름을 가진 파라미터는 여러 개의 값을가질 수 있으므로
						     getParamterVlaues()메서드를 사용하셔 String 배열로 값을가져옵니다.
						 --%>
						 <%
						   String[] hobbys=request.getParameterValues("hobby");
						 for(String hobby : hobbys){
						 %>
						 	<%=hobby%>&nbsp;&nbsp;
						 <%
						   }
						 %>
					</td>
				</tr>
			</table>
	</div>
</body>
</html>
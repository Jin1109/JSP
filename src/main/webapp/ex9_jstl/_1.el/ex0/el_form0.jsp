<%--
  * 표현언어(Expression Language:EL)
  	   톰켓에서 제공하기 때문에 따로 설정할 필요 없습니다.
  	JSP 스크립트 대신하여 속성 값들을 좀 더 편리하게 출력하기 위해 제공되는 언어입니다.
  		형식) ${ }
  		
  		표현식 태그
  1.article이 자바빈인 경우
    <%=article.getId()%>
    => ${article.id} 또는 	${article["id"]} 	또는 		$(article['id']}
    
  2. <%=request.getParameter("name")%>
  	 =>	 ${param.name}
  	 
  3. <%=request.getParameterValues("hobby")%>
     =>	  ${paramValues.hobby} 결과는 스트링 배열(String[])
     	  차례대로 출력할 경우
      - ${paramVlaues.hobby[0] }	  
      - ${paramVlaues.hobby[1] }	  
      - ${paramVlaues.hobby[2] }
      
   4. <%=request.getAttribute("hoho")%>
   	  => $(requesetScope.hoho}
   
   5. <%=sesssion.getAttribute("id")%>
   	  =>  %(sessionScope.id}
   	  
   6. ${hoho}
   			 이 경우에는 pageContext -> request - > session -> applicaton 영역 객체 순으로
   	  'hoho'이름의 attribute를 찾습니다.		 	   	  
     	  	
 --%>
 
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	session.setAttribute("id","honggildong2");
%>
<html>
<head>
 <title>EL 내장객체 사용 예제</title>
 <link rel="stylesheet" 
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    .container{width:500px}
    table{margin:auto;}
    td:nth-child(1),h3{text-align:center}
  </style>       
</head>
<body>
<div class="container">
  <form action="el_result0.jsp" method="post">
    <h3>EL 예제</h3>
    <table class="table">
	  <tr>
	   <td>이름 </td>
	   <td><input type="text" name="name" value="홍길동" class="form-control"></td>
	  </tr> 
	  <tr>
	   <td>취미</td>
	   <td> 
	    <input type="checkbox" name="hobby" id="hobby1" value="독서">독서
	    <input type="checkbox" name="hobby" id="hobby2" value="놀기">놀기 
	   </td>
	 </tr>
	 <tr>
	   <td colspan="2">
	    <input type="submit" value="입력" class="btn btn-info btn-block"></td>
	 </tr>
   </table>
  </form>
  </div>
</body>
</html>

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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL 내장객체 사용 예제</title>
</head>
<body>
 <h3> 넘어온 이름 :		${param.name}</h3>
 <h3> 넘어온 취미 : 
 ${paramvales.hobby[0]}
 ${paramvales.hobby[1]}</h3>
 <h3>session영역의 속성 id의 값 : ${sessionScope.id}</h3>
 <h3>${id}</h3>
</body>
</html>
<%--
  * ǥ�����(Expression Language:EL)
  	   ���Ͽ��� �����ϱ� ������ ���� ������ �ʿ� �����ϴ�.
  	JSP ��ũ��Ʈ ����Ͽ� �Ӽ� ������ �� �� ���ϰ� ����ϱ� ���� �����Ǵ� ����Դϴ�.
  		����) ${ }
  		
  		ǥ���� �±�
  1.article�� �ڹٺ��� ���
    <%=article.getId()%>
    => ${article.id} �Ǵ� 	${article["id"]} 	�Ǵ� 		$(article['id']}
    
  2. <%=request.getParameter("name")%>
  	 =>	 ${param.name}
  	 
  3. <%=request.getParameterValues("hobby")%>
     =>	  ${paramValues.hobby} ����� ��Ʈ�� �迭(String[])
     	  ���ʴ�� ����� ���
      - ${paramVlaues.hobby[0] }	  
      - ${paramVlaues.hobby[1] }	  
      - ${paramVlaues.hobby[2] }
      
   4. <%=request.getAttribute("hoho")%>
   	  => $(requesetScope.hoho}
   
   5. <%=sesssion.getAttribute("id")%>
   	  =>  %(sessionScope.id}
   	  
   6. ${hoho}
   			 �� ��쿡�� pageContext -> request - > session -> applicaton ���� ��ü ������
   	  'hoho'�̸��� attribute�� ã���ϴ�.		 	   	  
     	  	
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
<title>EL ���尴ü ��� ����</title>
</head>
<body>
 <h3> �Ѿ�� �̸� :		${param.name}</h3>
 <h3> �Ѿ�� ��� : 
 ${paramvales.hobby[0]}
 ${paramvales.hobby[1]}</h3>
 <h3>session������ �Ӽ� id�� �� : ${sessionScope.id}</h3>
 <h3>${id}</h3>
</body>
</html>
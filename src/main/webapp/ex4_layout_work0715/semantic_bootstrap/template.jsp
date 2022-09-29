<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>temlplatetest.jsp</title>
<link rel="stylesheet" href="../../css/style.css" type="text/css">
</head>
<%
	String pagefile=request.getParameter("page");
	//처음 보여주는 페이지는 newitem입니다.
	if(pagefile==null){
		pagefile="newitem";
	}
%>
<body>
    <header>
      <h1>상품 목록입니다.</h1><br>
    </header>
    <nav id="top">
    	<jsp:include page = "top.jsp"/><br><br>
    </nav>
    <div id="wrap">
    	<aside>
    		<jsp:include page = "left.jsp"/>
    	</aside>
    	<section>
    		<jsp:include page = '<%=pagefile+".jsp" %>'/>
    	</section>
    </div> 
   <footer>
      <jsp:include page = "bottom.jsp"/>
   </footer>
</body>
</html>
<%@page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies !=null  ){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("id")){
				id=cookies[i].getValue();
			}
		}
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키를 이용한 화면 설정 예제</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<style>
.container{margain:3em auto; border:1px solid lightgray;width:500px}
</style>
<script>
$(function(){
   var id_val = '<%=id%>';
   if(id_val){
      $("#id").val(id_val).css('font-weigth', "bold");
      $("#remember").prop('checked', true);
   }
   
   $("form").submit(function(){
      var inputid=$.trim($("#id").val());
      if(!inputid){
         alert("아이디를 입력하세요");
         $("#id").focus();
         return false;
      }
      
      var inputpass=$.trim($("#pass").val());
      if(!inputpass){
         alert("비밀번호를 입력하세요");
         $("#pass").focus();
         return false;
      }
   })
})
</script>
</head>
<body>
<div class="container"></div>
	<form action="login_ok.jsp" method="post" class="border-light p-5" >
	 <p class="h4 mb-4 text-center">login</p>
	 <div class="form-group">
		<label for="id">id</label>
		<input type = "text" class="form-control" id = "id" placeholder="Enter id" name="id">	 
	 </div>
	 <div class="form-group">
	 	<label for="pass">Password</label>
		<input type = "password" class="form-control" id = "pass" 
			   placeholder="Enter password" name="passwd">
	 </div>
	 
	 <div class="form-group custom-control custom-checkbox">
	 	<input type="checkbox" class="custom-control-input"
	 		   id="remember" name="remember" value="store">
	 	<label class="custom-control-label" for="remember">아이디 기억하기</label>	   
	 </div>
	 
	 <button type="submit" class="btn btn-info my-4 btn block">Submit</button>
	 
	</form>
</body>
</html>
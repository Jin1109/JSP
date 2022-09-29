<%@page import="ex8_template.Template_join"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>update_form.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link href="<%=request.getContextPath()%>/ex8_db/_4.join/css/join.css" 
   rel="stylesheet" type="text/css">
<script 
   src ="<%=request.getContextPath()%>/ex8_db/_4.join/js/jquery-3.6.0.js"></script>
<script 
   src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<script 
   src="<%=request.getContextPath()%>/ex8_db/_4.join/js/validate2.js" 
   charset="euc-kr"></script>
</head>
<body>
<%@ include file="top.jsp"%>
<%
   Template_join temp = (Template_join) request.getAttribute("temp");
   if (temp  != null) {
      
%> 
   <form name="myform" method="post" action="update"
         class="modal-content" id="myform"> 
       <div class="container">
          <fieldset>
              <legend>��������</legend> 
               <label for="id">ID</label>
              <div>
               <input type="text" 
                       placeholder="Enter id" name="id" id="id" readOnly
                       value="<%=temp.getId()%>" style="background: #ccc; width: 100%"> 
              </div>
     
      <label for="pass">Password</label> 
      <input type="password" placeholder="Enter Password" name="pass" id="pass"
              value='<%=temp.getPassword()%>'>
    
      <label for="jumin1">�ֹι�ȣ</label> 
      <input type="text" placeholder="�ֹι�ȣ ���ڸ�" maxLength="6" 
            name="jumin1" id="jumin1"  value="<%=temp.getJumin().substring(0,6)%>">
      <b> - </b>       
      <input type="text" placeholder="�ֹι�ȣ ���ڸ�" maxLength="7" 
             name="jumin2" id="jumin2" value="<%=temp.getJumin().substring(7)%>">
             
      <label for="email">E-Mail</label>
      <input type="text" name="email" id="email" value='<%=temp.getEmail().split("@")[0]%>'> @       
      <input type="text" name="domain" id="domain" value='<%=temp.getEmail().split("@")[1]%>'>
      <select name="sel" id="sel">
         <option value="">�����Է�</option>
         <option value="naver.com">naver.com</option>
         <option value="daum.com">daum.com</option>
         <option value="nate.com">nate.com</option>
         <option value="gmail.com">gmail.com</option>
      </select>
      
      <label>����</label>
      <div class="container2">
       <input type="radio" name="gender" value="m" id="gender1"  >����
       <input type="radio" name="gender" value="f" id="gender2"  >����
      </div>
      
      <label>���</label>
      <div class="container2">
         <input type="checkbox" name="hobby" id="hobby1" value="����">���� 
         <input type="checkbox" name="hobby" id="hobby2" value="����">���� 
         <input type="checkbox" name="hobby" id="hobby3" value="�">� 
         <input type="checkbox" name="hobby" id="hobby4" value="���">��� 
         <input type="checkbox" name="hobby" id="hobby5" value="����">���� 
      </div>
      
      <label for="post1">����ȣ</label>
      <input type="text" size="5" maxlength="5" name="post1" id="post1" value='<%=temp.getPost()%>' readOnly>
      <input type="button" value="����˻�"  id="postcode">
      
      <label for="address">�ּ�</label>
      <input type="text" size="50" name="address" id="address" value='<%=temp.getAddress()%>'>
      
      <label for="intro">�ڱ�Ұ�</label>
      <textarea rows="10" name="intro" id="intro" maxLength="100"><%=temp.getIntro()%></textarea>
      
      <div class="clearfix">
       <button type="submit" class="signupbtn">Update</button>
       <button type="reset" class="cancelbtn">Cancel</button>
      </div> 
    </fieldset>
    <a href="templatetest">templatetest.jsp �̵��ϱ�</a> <a
       href="javascript:history.back();">������������ �̵��ϱ�</a>
   </div>      
  </form>
  <script>
     var gender = '<%=temp.getGender()%>';
     $("input[value=" +gender + "]").prop("checked",true);   //���� üũ
     
     //üũ���� ���� ������ ��Ȱ�� ���� ���Ƿ� ������ �� ������ �մϴ�.
       $("input:radio").not(":checked").prop("disabled",true);
     
     var hobbys = '<%=temp.getHobby()%>'.split(',');
        for (var i = 0; i < hobbys.length; i++)
           $("input[value=" + hobbys[i] + "]").prop("checked", true);
  </script>
 <% 
    } else {
%>
<h3 style="text-align:center;position:relative;top:3em;">�ش� ������ �������� �ʽ��ϴ�.</h3>
<%
    }
%>
</body>
</html>
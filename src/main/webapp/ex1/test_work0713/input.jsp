<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ServeltContext</title>
<link href="input.css" type="text/css" rel="stylesheet">
<script>

</script>
</head>
<body>
<form name="myform" method="post" action="send" 
         id="myform" > 
    <div class="container">
    <fieldset>
     <legend>��ȿ�� �˻�</legend> 
      <label for="id">ID</label>
      <div>
       <input type="text" placeholder="Enter id" name="id" id="id"> 
       <input type="button" value="ID�ߺ��˻�" id="idcheck"> 
      </div>
     
      <label for="pass">Password</label> 
      <input type="password" placeholder="Enter Password" name="pass" id="pass">
    
      <label for="jumin1">�ֹι�ȣ</label> 
      <input type="text" placeholder="�ֹι�ȣ ���ڸ�" maxLength="6" 
            name="jumin1" id="jumin1" >
      <b> - </b>       
      <input type="text" placeholder="�ֹι�ȣ ���ڸ�" maxLength="7" 
             name="jumin2" id="jumin2" >
             
      <label for="email">E-Mail</label>
      <input type="text" name="email" id="email"> @       
      <input type="text" name="domain" id="domain">
      <select name="sel" id="sel">
      	<option value="">�����Է�</option>
      	<option value="naver.com">naver.com</option>
      	<option value="daum.com">daum.com</option>
      	<option value="nate.com">nate.com</option>
      	<option value="gmail.com">gmail.com</option>
      </select>
      
      <label>����</label>
      <div class="container2">
       <input type="radio" name="gender" value="����" id="gender1"  >����
       <input type="radio" name="gender" value="����" id="gender2"  >����
      </div>
      
      <label>���</label>
      <div class="container2">
      	<input type="checkbox" name="hobby" id="hobby1" value="����">���� 
      	<input type="checkbox" name="hobby" id="hobby2" value="����">���� 
      	<input type="checkbox" name="hobby" id="hobby3" value="�">� 
      	<input type="checkbox" name="hobby" id="hobby4" value="���">��� 
      	<input type="checkbox" name="hobby" id="hobby5" value="����">���� 
      </div>
      
      <label for="post1">������ȣ</label>
      <input type="text" size="5" maxlength="5" name="post1" id="post1">
      <input type="button" value="�����˻�"  >
      
      <label for="address">�ּ�</label>
      <input type="text" size="50" name="address" id="address">
      
      <label for="intro">�ڱ�Ұ�</label>
      <textarea rows="10" name="intro" id="intro"></textarea>
      
      <div class="clearfix">
       <button type="submit" class="signupbtn">ȸ������</button>
       <button type="reset" class="cancelbtn">���</button>
      </div>
    </fieldset>
   </div>      
  </form>
</body>
</html>
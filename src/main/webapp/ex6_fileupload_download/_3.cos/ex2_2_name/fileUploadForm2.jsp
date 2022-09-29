<%-- webapp ���� �Ʒ� "upload" ���� ���� �� �����ϼ���~ --%>
<%--
   �Ϲ� �Ķ���͸� ������ �� ����ϴ� ���ڵ��� ������ ���ε� �� �� ����ϴ� ���ڵ��� �ٸ��ϴ�.
   ��Ʈ�� ����� ���� ����� POST����� ������ �� ���� ���ڵ� ��Ŀ� ���� �����ϴ� ������ ������ �޶����ϴ�.
  1. application/x-www-form-urlencoded
  2. multipart/form-data
  
     ���ݱ����� �������� 1�� ���ڵ��� ����ؼ� �����͸� �����߽��ϴ�.
     ������ ���ε� �ϱ� ���ؼ��� 2�� ���ڵ��� ����ؾ� �մϴ�.
     form �±��� enctype �Ӽ� ���� "multipart/form-data"�� �������ָ�˴ϴ�.
     method�� post��� �Դϴ�.
 --%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>FileUpload Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
   .container{width:500px; margin-top:3em}
   .input-group-text{width:74px;}
</style>
</head>
<body>
<div class="container">
   <%-- ������ ���ε��ϱ� ���ؼ� enctype �Ӽ��� "multipart/form-data"�� �����մϴ�. --%>
   <form action="fileUpload2.jsp" method="post" enctype="multipart/form-data" name="fileCheck">
      <p class="h4 mb-4 text-center">���� ���ε� ��</p>
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="input-group-text mb-1">�ۼ���</span>
         </div>
         <input type="text" class="form-control" name="name">
      </div>
      
      <div class="input-group mb-3">
         <div class="input-group-prepend">
            <span class="input-group-text">�� ��</span>
         </div>
         <input type="text" class="form-control" name="subject">
      </div>
      
      <div class="form-group">
         <input type="file" class="form-control-file border" name="fileName1">
         <!-- ������ �����Ͽ� ������ �� �ֵ��� type�Ӽ��� file�� �����մϴ�. -->
      </div>
      
      <div class="form-group">
         <input type="file" class="form-control-file border" name="fileName2">
      </div>
      
      <button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
   </form>
</div>
</body>
</html>
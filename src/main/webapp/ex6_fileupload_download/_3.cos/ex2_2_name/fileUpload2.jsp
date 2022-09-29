<%-- WebContent ���� �Ʒ� upload ���� ���� �� �����ϼ���~ --%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<%-- ���ε��ϱ� ���� MultipartRequest ��ü�� import�մϴ�. --%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	String uploadPath= application.getRealPath("upload");
	out.print("upload ��� : " + uploadPath);
	
	
	int size = 10*1024*1024; //�����ִ� ũ�⸦ 10MB�� �����Ϻ��.
	String name=""; String subject=""; String systemName1="";
	String systemName2="";  String origfileName1="";	String origfileName2="";

	try{
		//���ε� ����ϴ� �κ��Դϴ�.
		//ù ��° ���� request : ǰ���� ������ ���� ��� ���� request��ü�� ������ �ݴϴ�.
		//�� ��° ���� uploadtPath : ���ε�� ������ ��ġ �Դϴ�.
		//�� ��° ���� size : ���ε� �� ũ���̸� ���� ũ�⺸�� ũ�� Exception�߻��մϴ�.
		//�� ��° ���� "euc-kr" : ���� �̸��� �ѱ��� ��� ó���ϴ� �κ��Դϴ�.
		//�ټ� ��° ���� : "euc-kr" : ���� �̸��� �ѱ��� ���  ó���ϴ� �κ��Դϴ�.
		//�����̸��� ��ȯ���ش� ����� �մϴ�.
		MultipartRequest multi=new MultipartRequest(request,
							uploadPath,
							size,
							"euc-kr",
				new DefaultFileRenamePolicy());			
				
		name=multi.getParameter("name");
		subject=multi.getParameter("subject");
		
		//name=fileName1�� input���� �ø� ������ �ý������� ���ϸ��� ���ɴϴ�.
		//�ߺ��� ���ϸ��� ��� ���ϸ� �ǵڿ� ���ڸ� �ٿ� ó���մϴ�.
		systemName1=multi.getFilesystemName("fileName1");
		
		//name=file1�� input���� ���ε��� ���� ���ϸ��� ��� �ɴϴ�.
		origfileName1= multi.getOriginalFileName("fileName1");
		
		systemName2=multi.getFilesystemName("fileName2");
		origfileName2= multi.getOriginalFileName("fileName2");
		
	}catch(Exception e){
		e.printStackTrace();
		out.print("���� �Դϴ�.");
	}
%>
<html>
<head>
<title> ���� ���ε�</title>
</head>
<body>
<form name="filecheck" action="fileCheck2.jsp" method="post">
	<input type="hidden" name="name" value="<%=name%>">
	<input type="hidden" name="subject" value="<%=subject%>">
	
	<input type="hidden" name="systemName1" value="<%=systemName1%>">
	<input type="hidden" name="systemName2" value="<%=systemName2%>">
	
	<input type="hidden" name="origfileName1" value="<%=origfileName1%>">
	<input type="hidden" name="origfileName2" value="<%=origfileName2%>">
	<input type="hidden" name="uploadPath" value="<%=uploadPath%>">
	<input type="submit" value="���ε� Ȯ�� �� �ٿ�ε� ������ �̵�">
</form>
</body>
</html>
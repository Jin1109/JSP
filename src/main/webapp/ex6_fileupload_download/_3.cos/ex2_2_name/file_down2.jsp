<%--ServletContext�� �̿��� ���� --%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.io.*"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String fileName = request.getParameter("file_name");
	System.out.println("fileName = " + fileName);
	
	String savePath = "upload";
	
	//�������� ���� ȯ�� ������ ��� �ִ� ��ü�� �����մϴ�.
	//(application ���� ��ü�� �����մϴ�.)
	ServletContext context = pageContext.getServletContext();
	String sDownloadPath = context.getRealPath(savePath);
	//�� �� ������ �� �������� ��Ÿ���� ������ �����ϴ�.
	//String sDownloadPath = application.getRealPath(savePath);
	
	// "\" �߰��ϱ� ���� "\\" ����մϴ�.
	String sFilePath = sDownloadPath + "\\" + fileName;
	System.out.println(sFilePath);
	
	byte b[] = new byte[4096];
	
	//sFilePath�� �ִ� ������ MinType�� ���ؿɴϴ�.
	String sMimeType = context.getMimeType(sFilePath);
	System.out.println("sMimetype>>>" + sMimeType);
	
	/*
		1. Content-Type: ���۵Ǵ� Content�� � �������� �˷��ִ� ������ ������ �ֽ��ϴ�.
		 - text/html, image.png, application/octet-stream ���� ���� �����ϴ�.
		2. Content-Type�� ���ؼ� �������� �ش� �����͸� ��� ó���ؾ� �� �� �Ǵ��� ��
			�ְ� �˴ϴ�.
			(��)
				1) image/png: �������� �ش� ����Ʈ�� �̹����ν� �����ϰ� �˴ϴ�.
				2) application/octet-stream: ��Ȯ�� Binary ������ �ǹ��ϸ�,
								�� ��� �������� ������ �ٿ�ε��ϴ� ���·� �����մϴ�.
				3) text/javascript:����� Content�� javascript������ ����ϰ� �˴ϴ�.				
	*/
	
	/*
		octet-stream�� 8��Ʈ�� �� �����͸� �ǹ��Ͽ� �������� ���� ���� ������ �ǹ��մϴ�.
	*/
	if (sMimeType == null)
		sMimeType = "application/octet-stream";
				
	response.setContentType(sMimeType);	
	
	/*
		- �� �κ��� �ѱ� ���ϸ��� ������ ���� ������ �ݴϴ�.
		- getByte(ĳ���ͼ�) : �ڹ� ���ο� �����Ǵ� �����ڵ� ���ڿ������ڷ� ������
							 ĳ���ͼ��� ����Ʈ �迭�� ��ȯ�ϴ� �޼����Դϴ�.
		- String(byte[] bytes, Charset charset)
		  String(����Ʈ�迭, ĳ���ͼ�) ������ : �ش� ����Ʈ �迭�� �־��� ĳ���� ������
		  										�����ϸ� ��Ʈ���� ����� �������Դϴ�.
	*/
	String sEncoding = new String(fileName.getBytes("euc-kr"), "ISO-8859-1");
		System.out.println(sEncoding);
		
	/*
		- Content-Disposition: Content�� ��� ó���Ǿ�� �ϴ��� ��Ÿ���ϴ�.
		  1) Content-Disposition:
			 inline: �������� Content�� ��� ó���Ǿ�� �ϴ��� ��Ÿ���ϴ�.
			 		 �̹����� ��� ������ ������ ��� ����ϸ�, ������ ��� �ؽ�Ʈ�� ����մϴ�.
		  2) Content-Disposition:
			 attachment: �������� �ش� Content�� ó������ �ʰ� �ٿ�ε��ϰ� �˴ϴ�.
	*/
	response.setHeader("Content-Disposition","attachment; filename=" + sEncoding);
	/* response.setHeader("Content-Disposition", "inline; filename=" + sEncoding); */
	
	/*
	1. try-with-resource������ try()��ȣ �ȿ� ����� �ڿ���
	   try���� ���� �� �ڵ����� close()�޼��带 ȣ���մϴ�.
	2. try-with-resource���� ���� �ڵ����� ��ü�� clise()�� ȣ��� �� �������� Ŭ������
	   AutoCloseable�̶�� �������̽��� ������ ���̾�� �մϴ�.
	����) try(){
		 .....
		}catch(){
		
		}finally{}	
	*/
	
	try (
			//�� ���������� ��� ��Ʈ�� �����մϴ�.
			BufferedOutputStream out2 =
					new BufferedOutputStream(response.getOutputStream());
			
			//sFilePath�� ������ ���Ͽ� ���� �Է� ��Ʈ���� �����մϴ�.
			BufferedInputStream in =
					new BufferedInputStream(new FileInputStream(sFilePath));
			)
			{
				int numRead;
				
				//read(b, 0, b.leangth) : ����Ʈ �迭 b�� 0�� ���� b.leangth ũ�� ��ŭ �о�ɴϴ�.
				while ((numRead = in.read(b, 0, b.length)) != -1) {//���� �����Ͱ� �����ϴ� ���
					out2.write(b, 0, numRead);// ����Ʈ �迭 b�� 0�� ���� numReadũ�� ��ŭ �������� ���
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
%>    
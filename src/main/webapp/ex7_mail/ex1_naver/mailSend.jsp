<%-- ������ ����� smtp ���� �ּҸ� ������ ���̹��� "���̵�@naver.com"���� �մϴ�. --%>
<%@ page import="ex7_java_mail.MyInfo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" %>
<%@ page import="java.util.Properties"%>

<%-- �ڹ� ���� API�� ����ϱ� ���� ���� ��Ű���� import�մϴ�. --%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%
	request.setCharacterEncoding("euc-kr");
	String sender=request.getParameter("sender");
	String receiver=request.getParameter("receiver");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	/*
	JaveMail�� ����Ͽ� �̸����� �����ϱ� ���� 3���� ������ ������ �����ϴ�.
	1. ȣ��Ʈ�̸�, ����ڸ�, ��й�ȣ ��� ���� ȣ��Ʈ�� ��� ������ �����ϴ� Session ��ü�� ����ϴ�.
	2. �޽����� �����մϴ�.
	3. �޽����� �����ϴ�.
	*/
	//SMTP ���� �ּҸ� �����մϴ�.
	String server = "smtp.naver.com";
	int port=587;
	try{
		//���� ������ Properties ��ü�� �����մϴ�.
		Properties properties = new Properties();
		
		// SMTP ���� ���� ����
		// ���̹��� ��� smtp.naver.com
		properties.put("mail.smtp.host", server);
		properties.put("mail.smtp.port", port);
		
		//SSL(Secure Sockets Layer)�� ���� TLS(���� ���� ����-Transport Layer Security)��
		//��Ʈ��ũ�� ���� ���۵� �� �������� ������ �����ϱ� ���� ��ȣȭ ���������Դϴ�.
		//���� ���ۿ� ���Ǵ� ���������� TLSv1.2 �� �����մϴ�.
		properties.put("mail.smtp.ssl.protocols","TLSv1.2");
		
		//������ Properties��ü�� ���� ������ �ν��Ͻ��� �����մϴ�.
		//public static Session getInstance(properties props)
		//Session Ŭ������ ������� �̸�, ��ȣ, ���� ������ ����
		//���� ������ �̿��ϴµ� �ʿ��� �̸��� ���� ������ �����մϴ�.
		Session s = Session.getInstance(properties);
		
		//������ ���ϰ� ���� �ּҸ� �����մϴ�.
		Address sender_address=new InternetAddress(sender);
		Address receiver_address=new InternetAddress(receiver);
		
		//������ ������ ���� ������ �Է��ϱ� ���� Message��ü�� �����մϴ�.
		Message message = new MimeMessage(s);
		
		//������ ������ ������ �ѱ��� ��� ������ �ʵ��� content-type�� �����մϴ�.
		message.setHeader("content-type","text/html;charset=euc-kr");
		
		//������ ���� �ּ� ������ �����մϴ�.
		message.setFrom(sender_address);
		
		//�޴� ���� �ּ� ������ �����մϴ�.
		//Message.RecipientType�� Message Ŭ�������� ����ϴ� ������ ������ �����մϴ�.
		//Message.RecipientType.TO : �޴� ����� �ǹ��մϴ�.
		message.addRecipient(Message.RecipientType.TO, receiver_address);
		
		//���� ������ �����մϴ�.
		message.setSubject(subject);
		
		//������ ������ �����մϴ�.
		message.setContent(content,"text/html;charset=euc-kr");
		
		//������ ��¥�� �����մϴ�.
		message.setSentDate(new java.util.Date());
		
		//public Transport getTransport(String protocal)
		//				   throws NoSuchProviderException
		//������ ��������(smtp)�� �����ϴ� Transport ��ü�� �����ɴϴ�.
		//������ �����ϴ� Ŭ���� �Դϴ�.
		Transport transport= s.getTransport("smtp");
		
		//ù��¥ ���ڴ� ������ ȣ��Ʈ �Դϴ�.
		//�ι�° ���ڴ� ���̵�, ����° ���ڴ� ��й�ȣ�� �ǹ��մϴ�.
		transport.connect(server, MyInfo.naverid, MyInfo.naverpass);
		
		//getAllRecipients() : �޼����� ��� ������ �ּҸ� �����ɴϴ�.
		//������ �ּ� ������� �޽����� �����ϴ�.
		transport.sendMessage(message,message.getAllRecipients());
		
		//������ ���� �ճ���.
		transport.close();
		
		out.println("<h3>������ ���������� ���۵Ǿ����ϴ�.</h3>");
	}catch(Exception e){
		out.println("SMTP ������ �߸� �����Ǿ��ų�, ���񽺿� ������ �ֽ��ϴ�.");
		e.printStackTrace();
	}		
%>		
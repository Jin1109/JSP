<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��⸦ �̿��� ȭ�� ���� ����</title>
<style>
	body{margin:100px auto; text-align:center; width:500px;}
	fieldset{width:100%;}
	form{height:3em;line-height:3em}
</style>
<%-- src="/JSP/js/jquery-3.6.0.js" --%>
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<%
	String language = "korean";

	//header�� �̸� �߿��� Cookie�� ���� �����ɴϴ�.
	String cookie = request.getHeader("cookie");
	
	//��Ű�� �����ϴ��� Ȯ���մϴ�.
	if (cookie != null) {
		//�����ϴ� ������ �迭�� �����ɴϴ�.
		Cookie cookies[] = request.getCookies();
		
		//����� �̸��� : 'language1"�� ���� ���� ���� ��Ű �迭���� ��� Ȯ���մϴ�.
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("language1")) {
				language = cookies[i].getValue();
			}
		}
	}
%>
<script>
$(function(){
	var id = "#<%=language%>";
	console.lod(id);
	<%-- var id = "input[value='<%language%>']" --%>
	$(id).prop('checked', true);
})
</script>
</head>
<body>
	<%
		if (language.equals("korea")) {
	%>
	<h3>�ȳ��ϼ���. �̰��� ��� �����Դϴ�.</h3>
	<%
		} else {
	%>		
	<h3>Hello. This is Cookie example.</h3>
	<%
		}
	%>
	<form action="cookieExample2.jsp" method="post">
		<fieldset>
			<input type="radio" name="language" value="korea" id="korea">�ѱ��� ������ ����
			<input type="radio" name="language" value="english" id="english">���� ������ ����
			<input type="submit" value="����">
		</fieldset>
	</form>	
</body>
</html>
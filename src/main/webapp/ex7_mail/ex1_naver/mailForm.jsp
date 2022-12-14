<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script> src="http://code.jquery.com/jquery-lastest.js"</script>
<style>
	.container{width:50%}
	label{font-weight:bold}
	fieldset{border:1px solid #9e9e9e; padding:50px}
	legend{text-align:center; width:auto; padding:10px;}
</style>
<meta charset="EUC-KR">
<title>메일 보내기 폼 작성</title>
</head>
<body>
	<div class="container mt -5">
		<form class="form-horizeontal" method="post" action="mailSend.jsp">
			<fieldset>
				<legend>
					<strong>메일작성</strong>
				</legend>
				
				<div class="form-group">
					<label class="control-label" for="sender">보내는주소<font color='red'>*</font></label>
						<input type="text" name="sender" id="sender" class="form-control"
						placeholder="보내는 분의 이메일 주소를 입력하세요" value="<%=ex7_java_mail.MyInfo.naverid%>@naver.com" required>
				</div>
				
				<div class="form-grup">
					<label class="control-label" for="receiver">받는주소<font color='red'>*</font></label>
						<input type="email" name="receiver" id="receiver" class="form-control"
						placeholder="받는 분의 이메일 주소를 입력하세요" required>
				</div>
				
				<div class="form-grup">
					<label class="control-label" for="subject">메일 제목<font color='red'>*</font></label>
						<input type="text" name="subject" id="subject" class="form-control"
						placeholder="이메일의 제목를 입력하세요" required>
				</div>
				
				<div class="form-grup">
					<label class="control-label" for="content">내용 입력<font color='red'>*</font></label>
						<textarea name="content" id="content" class="form-control" rows="5" required></textarea>
				</div>
				
				<!--  버튼 영역 -->
				<div class="form-acrions text-left">
					<input type="submit" class="btn btn-primary" value="메일보내기">
					<input type="submit" class="btn btn-danger" value="다시작성">
				</div>
				
			</fieldset>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Request Test(requestTest1_Form)</title>
<meta name="viewport" content="width-device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
  .container{width:70%; margin-top:30px; vertical-align: middle}
  h3{text-align:center}
</style>

<script>

</script>
</head>
<body>
	<div class="container">
		<h3>Request �����Դϴ�.</h3>
		<form action="requestTest3.jsp" method="get">
			<table class="table">
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				<tr>
					<td>����</td>
					<td>
					<label>
						<input type="radio"	name="gender" value="male">����
					</label>
					<label>
						<input type="radio"	name="gender" value="female">����
					</label>
					</td>
				</tr>
				<tr>
					<td>���</td>
					<td>
					<label>
					<input type="checkbox" value="����" name="hobby">����
					</label>
					<label>
					<input type="checkbox" value="����" name="hobby">����
					</label>
					<label>
					<input type="checkbox" value="TV ��û" name="hobby">TV ��û
					</label>
					<label>
					<input type="checkbox" value="�౸" name="hobby">�౸
					</label>
					<label>
					<input type="checkbox" value="��Ÿ" name="hobby">��Ÿ
					</label>
					</td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">����</button>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
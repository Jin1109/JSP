<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!Doctype html>    
<html>
<head><title>NULL 에러 발생</title>
 <style> 
 body { background:#f3f1a3}
 
 @keyframes textColorAnimation {
	0% { color : red; }
	20% { color:orange; } 
	40% { color:yellow; }
	60% { color:green; }
	80% { color:blue; } 
	100% { color:magenta; }
}
span {
    font-weight:bold;
    font-size : 40px;
	animation-name : textColorAnimation; 
	animation-duration : 5s;
	animation-iteration-count : infinite; 
	display:block;
	text-align:center;
}
h3 {text-align:center;}
p {text-align:center;}
</style>
 </head>
<body>
<span>404 error</span>
<h3>요청한 페이지는 존재하지 않습니다.</h3>
<p>주소를 올바르게 입력했는지 확인해보시기 바랍니다.</p>

</body>
</html>

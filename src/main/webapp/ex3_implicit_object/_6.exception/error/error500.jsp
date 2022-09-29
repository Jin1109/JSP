<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!Doctype html>    
<html>
<head><title>NULL 에러 발생</title>
 <style> 
 body { background:#f4c09d}
 
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
<span>500 error</span>
<h3>요청한 페이지에 서버 내부 에러 발생</h3>
<p>소스 코드의 오타를 확인해 주세요</p>

</body>
</html>

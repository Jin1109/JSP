<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!Doctype html>    
<html>
<head><title>NULL 에러 발생</title>
 <style> 
 body { background:#e6c6cc}
 
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
</style>
 </head>
<body>
<span>서비스 처리 과정에서 널(NULL) 에러가 발생하였습니다.</span>

</body>
</html>

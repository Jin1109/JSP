$(document).ready(function() {
	var is_idcheck_click=false; //id 중복검사 했는지 여부
    var idcheck_value='';      //id 중복검사시 값
   
   // ID중복검사 부분
    $("#idcheck").click(function() {
    var input_id=$.trim($("#id").val())
    if ($.trim($("#id").val())=="") {
       alert("ID를 입력하세요");
       $("#id").focus();
       return false;
    } else {
        // 처글자는 대문자이고 두번째부터는 대소문자, 숫자, _로 총 4개 이상
        pattern = /^[A-Z][a-zA-Z0-9_]{3,}$/;
        if(pattern.test(input_id)){
         idcheck_value=input_id;
         is_idcheck_click=true;   
           var ref = "idcheck.html?id="+$("#id").val();
           window.open(ref, "idcheck", "width=350,height=200");
        }else{
            alert("첫글자는 대문자이고 두번째부터는 대소문자, 숫자, _로 총 4개 이상이어야 헙나다.");
            $("#id").val('').focus();
        }
   }   
});//$("#idcheck").click
		
	//회원가입 버튼 클릭할때 이벤트 처리 부분
	$("form").submit(function() {
		// $.trim(문자열)는 문자열의 앞, 뒤 공백을 제거합니다.
		if ($.trim($("#id").val()) == ""){
			alert("ID를 입력하세요");
			$("#id").focus();
			return false;
		}
		
		var submit_id_value=$.trim($("#id").val())
		if(!is_idcheck_click || submit_id_value !=idcheck_value){
			alert("ID 중복검사를 하세요");
			return false;
		}
		
		if ($.trim($("#pass").val()) == ""){
			alert("비밀번호를 입력하세요");
			$("#pass").focus();
			return false;
		}
		
		if ($.trim($("#jumin1").val()) == ""){
			alert("주민번호 앞자리를 입력하세요");
			$("#jumin1").focus();
			return false;
		}
		
		if ($.trim($("#jumin1").val()).length != 6){
			alert("주민번호 앞자리 6자리를 입력 하세요");
			$("#jumin1").val("").focus();
			return false;
		}
		
		if ($.trim($("#jumin2").val()) == ""){
			alert("주민번호 뒷자리를 입력하세요");
			$("#jumin2").focus();
			return false;
		}
		
		if ($.trim($("#jumin2").val()).length != 7){
			alert("주민번호 뒷자리 7자리를 입력하세요");
			$("#jumin2").val("").focus();
			return false;
		}
		
		if ($.trim($("#email").val()) == ""){
			alert("E-Mail주소를 입력 하세요");
			$("#email").focus();
			return false;
		}
		
		if ($.trim($("#domain").val()) == ""){
			alert("도메인 주소를 입력 하세요");
			$("#domain").focus();
			return false;
		}

		
		/*
		 var cnt =$('input:radio:checked').length;
		 if(cnt==0){
			alert("성별을 선택하세요")
			return false;
		}
		*/
		
		var cnt =$('input:checkbox:checked').length;
		
		if (cnt < 2) {
			alert("취미는 2개이상 선택하세요");
			return false;
		}
		
		if ($.trim($("#post1").val()) == ""){
			alert("우편번호를 입력 하세요");
			$("#post1").focus();
			return false;
		}
		
		
		if (!$.isNumeric($("#post1").val())){
			alert("우편번호는 숫자만 입력 가능 합니다.");
			$("#post1").val("").focus();
			return false;
		}
		
		if ($.trim($("#post1").val()).length != 5){
			alert("우편번호 5자리입니다.");
			$("#post1").val("").focus();
			return false;
		}
		
		
		if ($.trim($("#address").val()) == ""){
			alert("주소를 입력 하세요");
			$("#address").focus();
			return false;
		}
		
		if ($.trim($("#intro").val()) == ""){
			alert("자기소개를 입력 하세요");
			$("#intro").focus();
			return false;
		}
		
	}); // submit() end 
	
	// 우편검색 버튼 클릭
	$('#postcode').click(function() {
		//window.open("post.html", "post", "width=400,height=500,scrollbars=yes");				
		Postcode();
	});// $("#postcode").click
	
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
 function Postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	console.log(data.zonecode)
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("post1").value=data.zonecode;
                document.getElementById("address").value=fullRoadAddr;
            }
        }).open();
    }//function Postcode()
	
	// 도메인 선택 부분
	$("#sel").change(function() {
		if($("#sel").val() == ""){ // 직접입력 선택한 경우
		   $("#domain").val("").focus();
		   $("#domain").prop("readOnly",true);
		}else{ // 도메인 선택한 경우
			$("#domain").val($("#sel").val());
			$("#domain").prop("readOnly",true);
		}
	});
	
	$("#jumin1").keyup(function(){
		if($.trim($("#jumin1").val()).length == 6){
			pattern=/^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/;
			if(pattern.test($("#jumin1").val())){
				$("#jumin2").focus();// 주민번호 뒤자리로 포커스 이동
			}else{alert("숫자 또는 형식에 맞게 입력하세요[yymmdd]");
				  $("#jumin1").val('').focus();
			}
		}
	});
	
	$("#jumin2").keyup(function(){
		if($.trim($("#jumin2").val()).length == 7){
			pattern=/^[1234][0-9]{6}$/;
			if(pattern.test($("#jumin2").val())){
				var c = $("#jumin2").val().substring(0,1);
				var index = (c-1)%2; // c=1,3이면 index=0
				 					 // c=2,4이면 index=1
				$("input[type=radio]").eq(index)
									  .prop("checked",true);	
			}else{
				alert("형식에 맞게 입력하세요[1234][0-9]{6}");
				$("#jumin2").val('').focus();
			}
		}

   	});	
});
/*메일인증버튼
function emailBtn_check(){	
	f.submit();
}*/
//메일인증
$('#emailBtn').click(function(){
	var injeung = document.getElementById("injeung_div")
	injeung.style.display = "block";
	$.ajax({
		url:"auth.do",
		type:"get",
		data:{"email": email},
		dataType:"json",
		success:function(data){
			$('#email').text(data);
			console.log(data);
		}
	})
});
//인증번호
$('#emailAuthBtn').click(function(){
	$.ajax({
		url:"join_injeung.do{email}",
		type:"post",
		data:{"email_injeung": email},
		dataType:"json",
		success:function(data){
			$('#email_injeung').text(data);
			console.log(data);
		}
	})
});

//가입하기
function signup(){	
	f.submit();
}


//모든 공백 체크 정규식
var empJ = /\s/g;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

//var address = $('#mem_detailaddress');
$(document).ready(function() {

//var address = $('#mem_detailaddress');
/*이메일 중복확인
$("#email").blur(function() {
	if($('#email').val()==''){
	$('#email_check').text('아이디를 입력하세요.');
	$('#email_check').css('color', 'red');
	} else if(mailJ.test($('#email').val())!=true){
	$('#email_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
	$('#email_check').css('color', 'red');
	} else if($('#email').val()!=''){
	var email=$('#email').val();
	$.ajax({
	async : true,
	type : 'POST',
	data : email,//mem_id라는 이름으로 mem_id라는 데이터를 @WebServlet("/idsearch.do")에 보내겠다
	url : 'auth.do',
	dateType: 'json',
	contentType: "application/json; charset=UTF-8",
	success : function(data) {
	if(data.cnt > 0){
	$('#email_check').text('중복된 아이디 입니다.');
	$('#email_check').css('color', 'red');
	$("#usercheck").attr("disabled", true);
	}else{
	if(mailJ.test(email)){
	$('#email_check').text('사용가능한 아이디 입니다.');
	$('#email_check').css('color', 'blue');
	$("#usercheck").attr("disabled", false);
	}
	else if(email==''){
	$('#email_check').text('아이디를 입력해주세요.');
	$('#email_check').css('color', 'red');
	$("#usercheck").attr("disabled", true);
	}
	else{
	$('#email_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
	$('#email_check').css('color', 'red');
	$("#usercheck").attr("disabled", true);
	}
	}
	}
	});//ajax///
	}//else if
});//blur
*/



$('form').on('submit',function(){
var inval_Arr = new Array(2).fill(false);
// 이메일 정규식
if (mailJ.test($('#email').val())){
console.log(phoneJ.test($('#email').val()));
inval_Arr[0] = true;
} else {
inval_Arr[0] = false;
alert('이메일을 확인하세요.');
return false;
} 

// 비밀번호가 같은 경우 && 비밀번호 정규식
if (($('#mem_pw').val() == ($('#mem_pw2').val()))
&& pwJ.test($('#mem_pw').val())) {
inval_Arr[1] = true;
} else {
inval_Arr[1] = false;
alert('비밀번호를 확인하세요.');
return false;
}
//else inval_Arr[7] = true;

//전체 유효성 검사
var validAll = true;
for(var i = 0; i < inval_Arr.length; i++){
	if(inval_Arr[i] == false){
	validAll = false;
	}
}
if(validAll == true){ // 유효성 모두 통과
alert('NANALAND 가족이 되어주셔 감사합니다.');
} else{
alert('정보를 다시 확인하세요.')
}
}); //form 끝


//이메일양식검사
$("#email").blur(function() {
if (mailJ.test($(this).val())) {
$("#check").text('');
} else {
$('#email_check').text('이메일 양식을 확인해주세요.');
$('#email_check').css('color', 'red');
}
});

//비번검사
$('#mem_pw').blur(function() {
		if (pwJ.test($('#mem_pw').val())) {
		console.log('true');
		$('#pw_check').text('');
		} else {
		console.log('false');
		$('#pw_check').text('4~12자의 숫자 , 문자로만 사용 가능합니다.');
		$('#pw_check').css('color', 'red');
		}
});
//1~2 패스워드 일치 확인
$('#mem_pw2').blur(function() {
	if ($('#mem_pw').val() != $(this).val()) {
		$('#pw2_check').text('비밀번호가 일치하지 않습니다.');
		$('#pw2_check').css('color', 'red');
		} else {
		$('#pw2_check').text('');
		}
});

}); //function 끝








//모든 공백 체크 정규식
var empJ = /\s/g;
// 비밀번호 정규식
var pwJ = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
//이름&닉네임 정규식
var nameJ=/^[가-힣a-zA-Z0-9]{2,10}$/;


$(document).ready(function() { //여기부터 시작	
	

	//개인비번검사
	$('#mem_pw').blur(function() {
			if (pwJ.test($('#mem_pw').val())) {
			console.log('true');
			$('#pw_check').text('');
			} else {
			console.log('false');
			$('#pw_check').text('특수문자 /문자 /숫자 포함 형태의 8~15자리 이내로 입력해주세요.');
			$('#pw_check').css('font-size', '11px');
			$('#pw_check').css('color', 'red');
			}
	});
	//개인1~2 패스워드 일치 확인
	$('#mem_pw2').blur(function() {
		if ($('#mem_pw').val() != $(this).val()) {
			$('#pw2_check').text('비밀번호가 일치하지 않습니다.');
			$('#pw2_check').css('font-size', '11px');
			$('#pw2_check').css('color', 'red');
			} else {
			$('#pw2_check').text('');
			}
	});
	//기업비번검사
	$('#c_mem_pw').blur(function() {
			if (pwJ.test($('#c_mem_pw').val())) {
			console.log('true');
			$('#c_pw_check').text('');
			} else {
			console.log('false');
			$('#c_pw_check').text('특수문자 /문자 /숫자 포함 형태의 8~15자리 이내로 입력해주세요.');
			$('#c_pw_check').css('font-size', '11px');
			$('#c_pw_check').css('color', 'red');
			}
	});
	//기업1~2 패스워드 일치 확인
	$('#c_mem_pw2').blur(function() {
		if ($('#c_mem_pw').val() != $(this).val()) {
			$('#c_pw2_check').text('비밀번호가 일치하지 않습니다.');
			$('#c_pw2_check').css('font-size', '11px');
			$('#c_pw2_check').css('color', 'red');
			} else {
			$('#c_pw2_check').text('');
			}
	});	
	
	//개인이름&닉네임
	$('#name').blur(function(){
		if (nameJ.test($('#name').val())) {
		$('#name_check').text('');		
		}else{
			$('#name_check').text('2~10자의  한글,영문,숫자만   사용할 수 있습니다');
			$('#name_check').css('font-size', '11px');
			$('#name_check').css('color', 'red');
		}
	});
	
	//기업이름&닉네임
	$('#c_name').blur(function(){
		if (nameJ.test($('#c_name').val())) {
		$('#c_name_check').text('');		
		}else{
			$('#c_name_check').text('2~10자의  한글,영문,숫자만   사용할 수 있습니다');
			$('#c_name_check').css('font-size', '11px');
			$('#c_name_check').css('color', 'red');
		}
	});

/*전체유효성체크*/
	//개인 유효성 form
	$('#membercheck').on('submit',function(){
		var inval_Arr = new Array(4).fill(false);
		//메일 입력여부
		if (($('#email').val() == "")){
				inval_Arr[0] = false;
				alert('이메일을 입력해주세요.');
				return false;
			} else {
				inval_Arr[0] = true;	
			} 
		
			
		//이름 입력여부
	      if (($('#name').val() != "")&& nameJ.test($('#name').val())){
	            inval_Arr[1] = true;            
	         } else {
	            inval_Arr[1] = false;
	            alert('이름 또는 닉네임을 확인하세요.');
	            return false;
	         } 
	
		// 개인비밀번호가 같은 경우 && 비밀번호 정규식
		if (($('#mem_pw').val() == ($('#mem_pw2').val()))&& pwJ.test($('#mem_pw').val())) {
				inval_Arr[2] = true;
			} else {
				inval_Arr[2] = false;
				alert('비밀번호를 확인하세요.');
				return false;
			}
		//개인 이용약관 체크박스
		if($("input:checkbox[id='tos']").is(":checked") == true){
			inval_Arr[3] = true;
		}else{
			inval_Arr[3] = false;
			alert('이용약관에 동의해주세요.');
			return false;
		}
		//개인 개인정보 체크박스
		if($("input:checkbox[id='topi']").is(":checked") == true){
			inval_Arr[4] = true;
		}else{
			inval_Arr[4] = false;
			alert('개인정보 제공에 동의해 주세요.');
			return false;
		}
	
		//전체 유효성 검사
		var validAll = true;
		for(var i = 0; i < inval_Arr.length; i++){
			if(inval_Arr[i] == false){			
				validAll = false;		
			}	
		}
		if(validAll == true){ // 유효성 모두 통과
			swal('가입성공!', $('#name').val()+'님 환영합니다.', 'success');
		} else{
			alert('정보를 다시 확인하세요.');
		}
	}); //form 끝	
	
	//기업유효성 form
	$('#c_membercheck').on('submit',function(){
		var inval_Arr = new Array(4).fill(false);
		//메일 입력여부
		if (($('#c_email').val() == "")){
				inval_Arr[0] = false;
				alert('이메일을 입력해주세요.');
				return false;
			} else {
				inval_Arr[0] = true;	
			} 
		
			
		//이름 입력여부
	      if (($('#c_name').val() != "")&& nameJ.test($('#c_name').val())){
	            inval_Arr[1] = true;            
	         } else {
	            inval_Arr[1] = false;   
	            alert('이름 또는 닉네임을 확인하세요.');
	            return false;
	         } 
	
		// 개인비밀번호가 같은 경우 && 비밀번호 정규식
		if (($('#c_mem_pw').val() == ($('#c_mem_pw2').val()))&& pwJ.test($('#c_mem_pw').val())) {
				inval_Arr[2] = true;
			} else {
				inval_Arr[2] = false;
				alert('비밀번호를 확인하세요.');
				return false;
			}
		//개인 이용약관 체크박스
		if($("input:checkbox[id='c_tos']").is(":checked") == true){
			inval_Arr[3] = true;
		}else{
			inval_Arr[3] = false;
			alert('이용약관에 동의해주세요.');
			return false;
		}
		//개인 개인정보 체크박스
		if($("input:checkbox[id='c_topi']").is(":checked") == true){
			inval_Arr[4] = true;
		}else{
			inval_Arr[4] = false;
			alert('개인정보 제공에 동의해 주세요.');
			return false;
		}
	
		//전체 유효성 검사
		var validAll = true;
		for(var i = 0; i < inval_Arr.length; i++){
			if(inval_Arr[i] == false){			
				validAll = false;		
			}	
		}
		if(validAll == true){ // 유효성 모두 통과
			swal('가입성공!', $('#c_name').val()+'님 환영합니다.', 'success');
		} else{
			alert('정보를 다시 확인하세요.');
		}
	}); //form 끝	
	
	
}); //ready function 끝

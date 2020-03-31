/*개인 시작*/

 function onkey(){ 		
		$("#emailMD").keyup(function() {
			if($('#emailMD').val()==''){
				$('#email_check').text('이메일을 입력하세요.');
				$('#email_check').css('color', 'red');
				$("#emailBtn").attr("disabled", true);
			} else if(mailJ.test($('#emailMD').val())!=true){
				$('#email_check').text('이메일 형식으로 입력해주세요.');
				$('#email_check').css('color', 'red');
				$("#emailBtn").attr("disabled", true);
			} else if($('#emailMD').val()!=''){
				var email=$('#emailMD').val();
        		 $.ajax({		        			 
        				 type:"POST",
        				 url:"id_ck.do",
        				 data:{
        						"email":$('#emailMD').val()
        				 },
        				 success:function(data){	//data : checkSignup에서 넘겨준 결과값
        						if($.trim(data)=="YES"){
        						   if($('#emailMD').val()!=''){ 
        							   $('#email_check').text('사용가능한 이메일 입니다.');
        							   $('#email_check').css('font-size', '11px');
        							   $('#email_check').css('color', 'blue');
        							  	$("#emailBtn").attr("disabled", false);
        							 
        						   }else if($('#emailMD').val()==''){
        								$('#email_check').text('이메일을 입력해주세요.');
        								$('#email_check').css('color', 'red');
        								$("#emailBtn").attr("disabled", true);
        							}else{
        								$('#email_check').text("이메일 양식을 확인해주세요.");
        								$('#email_check').css('color', 'red');
        								$("#emailBtn").attr("disabled", true);
        							}
        						}else{
        						   if($('#emailMD').val()!=''){		                 
            							$('#email_check').text('중복된 이메일입니다.');
            							$('#email_check').css('font-size', '11px');
            							$('#email_check').css('color', 'red');
            							$("#emailBtn").attr("disabled", true);						
            							
        						   }
        						}
        					 }
        				}) //ajax
			}//else if
		});//blur
	 };//메일function 끝
$(function(){ 	
	$('#emailModal').on('hidden.bs.modal', function (e) {
		  $('#emailMD').val("");
		  $('#email_check').empty();
		  $('#emailAuth').val("");
		});

  /*이메일 인증 버튼 클릭 시 발생하는 이벤트*/
  $(document).on("click","#emailBtn", function(){
	  if($("#emailMD").val()==""){
          alert("이메일을 입력하세요.");
          return;
       }
     $.ajax({
    	 beforeSend: function(){
    		 document.getElementById('global-loader').setAttribute('style', 'background-color: rgb(255, 255, 255,0.2);');
    		 $("#global-loader").show();    	 
		 },		 
        type:"get",
        url:"createEmailCheck.do",
        data:"userEmail="+$("#emailMD").val()+"&random="+$("#random").val(),
        success: function(data){  
        	$("#global-loader").fadeOut();
        	alert("메일을 발송하였습니다.");
           //$("#emailBtn").attr("disabled", true);
           //$(".emailAuth_div").after("<div id='inj' style='margin-top:10px'><div class='input-group mb-12'><input type='text' id='emailAuth' name='emailAuth' placeholder='인증번호를 입력하세요' class='form-control'/>");						                                   
           //$("#emailAuth").after("<div class='input-group-append'><button class='btn btn-secondary' id='emailAuthBtn' >인증하기</button></div></div></div>");
          },
        error: function(data){
             alert("에러가 발생했습니다");
             return false;
           }
     })
     
  });
	//개인
  $(document).on("click", "#emailAuthBtn", function(){
	  if($("#emailAuth").val()==""){
          alert("인증번호를 입력하세요.");
          return;
       }
     $.ajax({
        type:"get",
        url:"emailAuth.do",
        data:"authCode="+$('#emailAuth').val()+"&random="+$('#random').val(),
        success:function(data){
           if(data == "complete"){
              alert("인증되었습니다.");
              $("#email").val($("#emailMD").val());
              $("#emailModal").modal("hide");
              $("#test").empty();
              
              
           }else if(data == "false"){
              alert("인증번호를 잘못 입력하셨습니다.");
              //$('#emailModal').find('form')[0].reset();
              $('#emailAuth').val("");
           }
        },
        error:function(data){
           alert("에러가 발생했습니다.");
        }
     })
  });	
  

}); /*function 끝 */


/*개인 끝*/
/*기업 시작*/
	function onkeyC(){ 
		$("#c_emailMD").keyup(function() {
			if($('#c_emailMD').val()==''){
				$('#c_email_check').text('이메일을 입력하세요.');
				$('#c_email_check').css('color', 'red');
				$("#c_emailBtn").attr("disabled", true);
			} else if(mailJ.test($('#c_emailMD').val())!=true){
				$('#c_email_check').text('이메일 형식으로 입력해주세요.');
				$('#c_email_check').css('color', 'red');
				$("#c_emailBtn").attr("disabled", true);
			} else if($('#c_emailMD').val()!=''){
				var email=$('#c_emailMD').val();
        		 $.ajax({
        				 type:"POST",
        				 url:"id_ck.do",
        				 data:{
        						"email":$('#c_emailMD').val()
        				 },
        				 success:function(data){	//data : checkSignup에서 넘겨준 결과값
        						if($.trim(data)=="YES"){
        						   if($('#c_emailMD').val()!=''){ 
        							   $('#c_email_check').text('사용가능한 이메일입니다.');
        							   $('#c_email_check').css('font-size', '11px');
        							   $('#c_email_check').css('color', 'blue');
        							  	$("#c_emailBtn").attr("disabled", false);
        							 
        						   }else if($('#c_emailMD').val()==''){
        								$('#c_email_check').text('이메일을 입력해주세요.');
        								$('#c_email_check').css('color', 'red');
        								$("#c_emailBtn").attr("disabled", true);
        							}else{
        								$('#c_email_check').text("이메일 양식을 확인해주세요.");
        								$('#c_email_check').css('color', 'red');
        								$("#c_emailBtn").attr("disabled", true);
        							}
        						}else{
        						   if($('#c_emailMD').val()!=''){		                 
            							$('#c_email_check').text('중복된 이메일입니다.');
            							$('#c_email_check').css('font-size', '11px');
            							$('#c_email_check').css('color', 'red');
            							$("#c_emailBtn").attr("disabled", true);						
            							
        						   }
        						}
        					 }
        				}) //ajax
			}//else if
		});//blur
	};//메일function 끝
	
$(function(){  	
	  $('#c_emailModal').on('hidden.bs.modal', function (e) {
		  $('#c_emailMD').val("");
		  $('#c_email_check').empty();
		  $('#c_emailAuth').val("");
		});
	
  /*이메일 인증 버튼 클릭 시 발생하는 이벤트*/
  $(document).on("click","#c_emailBtn", function(){
	  if($("#c_emailMD").val()==""){
          alert("이메일을 입력하세요.");
          return;
       }

     $.ajax({
    	 beforeSend: function(){		
    		 document.getElementById('global-loader').setAttribute('style', 'background-color: rgb(255, 255, 255,0.2);');
    		 $("#global-loader").show();    	 
		 },	
        type:"get",
        url:"createEmailCheck.do",
        data:"userEmail="+$("#c_emailMD").val()+"&random="+$("#random").val(),
        success: function(data){
           $("#global-loader").fadeOut();
           alert("이메일이 발송되었습니다. 인증번호를 입력하세요.");
           //$(".c_emailAuth_div").after("<div id='c_inj' style='margin-top:10px'><div class='input-group mb-12'><input type='text' id='c_emailAuth' name='c_emailAuth' placeholder='인증번호를 입력하세요' class='form-control'/>");						                                   
          // $("#c_emailAuth").after("<div class='input-group-append'><button class='btn btn-secondary' id='c_emailAuthBtn' >인증하기</button></div></div></div>");
          },
        error: function(data){
             alert("에러가 발생했습니다");
             return false;
           }
     })
     
  });
	//기업
  $(document).on("click", "#c_emailAuthBtn", function(){
	  if($("#c_emailAuth").val()==""){
          alert("인증번호를 입력하세요.");
          return;
       }
     $.ajax({
        type:"GET",
        url:"emailAuth.do",
        data:"authCode="+$('#c_emailAuth').val()+"&random="+$('#c_random').val(),
        success:function(data){
           if(data == "complete"){
              alert("인증되었습니다.");
              $("#c_email").val($("#c_emailMD").val());
              $("#c_emailModal").modal("hide");
              //$("#c_inj").empty();
                            
           }else if(data == "false"){
              alert("인증번호를 잘못 입력하셨습니다.");
              $('#c_emailAuth').val("");
           }
        },
        error:function(data){
           alert("에러가 발생했습니다.");
        }
     })
  });	

});
/*기업 끝*/

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

<!-- 0322 최종 소담 -->
<script>
function onkey(){ 		
	$("#emailMD").keyup(function() {
		if($('#emailMD').val()==''){
			$('#email_check').text('이메일을 입력하세요.');
			$('#email_check').css('color', 'red');			
			return;
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
    							   $('#email_check').text('존재하지않는 이메일 입니다.');
    							   $('#email_check').css('font-size', '11px');
    							   $('#email_check').css('color', 'red');
    							  	$("#emailBtn").attr("disabled", true);
    							 
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
        							//$('#email_check').text('메일있따');
        							//$('#email_check').css('font-size', '11px');
        							//$('#email_check').css('color', 'red');
        							//$("#emailBtn").attr("disabled", false);	
        							
        							$(document).on("click","#emailBtn", function(){
        								find_pwd.submit();	
        								alert("인증번호가 발송되었습니다.");
        							});
    						   }
    						}
    					 }
    				}) //ajax
		}//else if
	});//blur
 };//메일function 끝
 
 $(document).on("click","#emailBtn", function(){
	  if($("#emailMD").val()==""){
         alert("이메일을 입력하세요.");
         return;
      }
 });
 
</script> 
		<!--Sliders Section-->
		<section>
			<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">비밀번호 찾기</h1>
						</div>
					</div>
				</div><!-- /header-text -->
			</div>
		</div>
		<!--/Sliders Section-->
		
		</section>
		<!--/Sliders Section-->
<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">Memeber</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의하기</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->
		<!--Forgot password-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-md-12 col-md-12 d-block mx-auto">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">비밀번호 찾기</h3>
							</div>
							<div class="card-body">
							<form name="find_pwd" action="find_pwd.do" method="post">
								<div class="form-group">
									<label class="form-label text-dark" for="exampleInputEmail1" >Email</label>
									<input type="email" class="form-control" id="emailMD" placeholder="등록한 이메일을 입력하세요" name="email" onKeyDown="onkey()">
									<div class="emailAuth_div" id="email_check" ></div>
								</div>
								<div class="form-footer">
									<button type="button" class="btn btn-primary btn-block" id="emailBtn">보내기</button>
								</div>
							</form>	

								<div class="text-center text-dark mt-3 ">
								다시  <a href="login">로그인</a> 하러가기
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Forgot password-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

<!-- 
<script>
$(document).ready(function() { 
 $.ajax({
	 type:"POST",
	 url:"id_ck.do",
	 data:{
			"email":$('#emailCk').val()
	 },
	 success:function(data){	//data : checkSignup에서 넘겨준 결과값
			if($.trim(data)=="YES"){
			   if($('#emailCk').val()!=''){ 
				   $('#email_check').text('없는 이메일 입니다.');
				   $('#email_check').css('font-size', '11px');
				   $('#email_check').css('color', 'blue');
					$("#emailBtn").attr("disabled", true);
				 
			   }else if($('emailCk').val()==''){
					$('#email_check').text('이메일을 입력해주세요.');
					$('#email_check').css('color', 'red');
					$("#emailBtn").attr("disabled", true);
				}
			}else{
			   if($('#emailCk').val()!=''){		                 
					$('#email_check').text('중복된 아이디입니다.');
					$('#email_check').css('font-size', '11px');
					$('#email_check').css('color', 'red');
					$("#emailBtn").attr("disabled", false);						
					
			   }
			}
		 }
	}) //ajax
	function fwd_ck(){
		find_pwd.do.submit();								
	}
});
</script> -->
		<!--Sliders Section-->
		<section>
			<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">비밀번호 찾기</h1>
									<!--
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="../">Home</a></li>
										<li class="breadcrumb-item"><a href="community_list">고객센터</a></li>
										<li class="breadcrumb-item active" aria-current="page">문의하기</li>
									</ol>
									-->
								</div>
							</div>
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
								<h3 class="card-title">Forgot password</h3>
							</div>
							<div class="card-body">
							<form action="find_pwd.do" method="post">
								<div class="form-group">
									<label class="form-label text-dark" for="exampleInputEmail1" >Email</label>
									<input type="email" class="form-control" id="emailMD" placeholder="등록한 이메일을 입력하세요" name="email">
									<div class="emailAuth_div" id="email_check" ></div>
								</div>
								<div class="form-footer">
									<button type="submit" class="btn btn-primary btn-block" id="emailBtn">보내기</button>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->
<script>
$(document).ready(function() {
	$('form').on('submit',function(){
		var inval_Arr = new Array(2).fill(false);
		//비밀번호 입력여부
		if (($('#email').val() == "")){
				inval_Arr[0] = false;
				alert('이메일을 입력해주세요.');
				return false;
			} else {
				inval_Arr[0] = true;	
			} 
			
		//비밀번호 입력여부
		if (($('#pwd').val() == "")){
				inval_Arr[1] = false;
				alert('비밀번호를 입력해주세요.');
				return false;
			} else {
				inval_Arr[1] = true;	
			} 	
		//전체 유효성 검사
		var validAll = true;
		for(var i = 0; i < inval_Arr.length; i++){
			if(inval_Arr[i] == false){			
				validAll = false;		
			}	
		}
		if(validAll == true){ // 유효성 모두 통과
			//alert('[HIFIVE] 환영합니다  [HIFIVE] .');
		} else{
			alert('정보를 다시 확인하세요.');
		}
	}); //form 끝
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
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">로그인</h1>
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
						<li class="breadcrumb-item active" aria-current="page">로그인</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->
		<!--Login-Section-->
		<section class="sptb">
			<div class="container customerpage">
				<div class="row">
					<div class="col-lg-4 d-block mx-auto">
						<div class="row">
							<div class="col-xl-12 col-md-12 col-md-12 register-right">

								<div class="tab-content" id="myTabContent">
									<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
										<div class="card mb-0">
											<div class="card-header">
												<h3 class="card-title">로그인</h3>
											</div>
											
											<div class="card-body">
												<div class="text-center">
													<div  id="naver_id_login" class="btn-group btn-block mt-2 mb-2">
														<a href="${url}" class="btn btn-naver active">
			                                             <span><b>N</b></span>
			                                          </a>
			                                          <a href="${url}" class="btn btn-block btn-naver">Naver</a>
													
														<!--<a href="${url}" class="btn btn-naver active">
														<img width="223"src="https://developers.naver.com/doc/review_201802/CK_bEFnWMeEBjXpQ5o8N_20180202_7aot50.png" /> 
															  <span><b>N</b></span> 
														</a> -->
														<!-- <a href="https://www.naver.com/" class="btn btn-block btn-naver">Naver</a> -->
													</div>
													<div  id="kakao_id_login" class="btn-group btn-block mt-2 mb-2">
														<a href="${kakao_url}" class="btn btn-kakao active">
															<span class="fa fa-comment"></span>
														</a>
														<a href="${kakao_url}" class="btn btn-block btn-kakao">Kakao</a>
													</div>
													<!--
													<div class="btn-group btn-block mt-2 mb-2">
														<a href="${google_url}" class="btn btn-google active">
															<span class="fa fa-google"></span>
														</a>
														<a href="${google_url}" class="btn btn-block btn-google">Google</a>
													</div>
													-->
												</div>
												<hr class="divider">
												<form class="form-group" action="/login_check" method="post">
												<div class="form-group">
													<label class="form-label text-dark">Email</label>
													<input type="text" name="email" id="email" class="form-control" placeholder="이메일을 입력해주세요" >
												</div>
												<div class="form-group">
													<label class="form-label text-dark">비밀번호</label>
													<input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password" >
												</div>
						
											 <div class="form-group">
													<label class="custom-control custom-checkbox">
														<a href="forgot-pwd" class="float-right small text-dark mt-1 font-12" class="color-hover-sign">비밀번호 찾기</a>
														<input type="checkbox" class="custom-control-input">
												<!--  	<span class="custom-control-label text-dark font-12">자동로그인</span> -->
													</label>
												</div> 
												<div class="form-footer mt-2">
													<!-- <a href="index.html" class="btn btn-primary btn-block">SignIn</a> -->	
													<input type="submit" class="btn btn-primary btn-block" id="login_bt" value="로그인">
													
												</div>
												<div class="text-center  mt-3 text-dark">
													<span class="font-12">아직 멤버가 아니십니까?</span> <a href="register" class="color-hover-sign">가입하기</a>
												</div>
											</form>
											</div>											
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Login-Section-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
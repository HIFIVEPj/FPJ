<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

<script  src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/signup.js"></script>
		<!--Sliders Section-->

		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">Register</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Pages</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">Register</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Sliders Section-->

		<!--Login-Section-->
		<section class="sptb">
			
			<div class="container customerpage">
				<div class="row">
					<div class="col-lg-4 d-block mx-auto">
						<div class="row">
							<div class="col-xl-12 col-md-12 col-md-12 register-right">
								<ul class="nav nav-tabs nav-justified mb-5 p-2 border" id="myTab" role="tablist">
									<li class="nav-item">
										<a class="nav-link active m-1" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">프리랜서</a>
									</li>
									<li class="nav-item">
										<a class="nav-link m-1" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false" >기업</a>
									</li>
								</ul>
								<div class="tab-content" id="myTabContent">
								
									<!-- 프리랜서 가입항목 -->
									
									<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
										<div class="card mb-0">
										<form class="form-group" action="signup.do" method="post">	
											<div class="card-header">
												<h3 class="card-title">프리랜서</h3>
												<input type="hidden" name="class_num" value=4>
											</div>
											<div class="card-body">						
											
												<div class="form-group" >
													<label class="form-label text-dark">Email</label>
													<div class="input-group mb-5">
														<input type="email" name="email" id=email class="form-control" value="${email}"> 															
															<div class="input-group-append">													 		
													 		<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal3">재전송</button>
														<!--														
														 <button class="btn btn-secondary" id="emailBtn" onclick="emailBtn_check()">전송</button> 
														<input type="submit" class="btn btn-secondary" id="emailBtn" value="인증"></button> 	-->
															</div>													
													</div>
													<div class="" id="email_check"></div>
												</div>								
												
												<div class="form-group">
													<label class="form-label text-dark">비밀번호</label>
													<input type="password" class="form-control" name="pwd" id="mem_pw" placeholder="Password">
													<div class="" id="pw_check"></div>
												</div>

												<div class="form-group">
													<label class="form-label text-dark">비밀번호 확인</label>
													<input type="password" class="form-control" id="mem_pw2" placeholder="Password">
													<div class="" id="pw2_check"></div>
												</div>
												<div class="form-group" style="font-size:12px; line-height:25px;">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input">
														<span class="custom-control-label text-dark"><a href="javascript:void(window.open('terms_of_service', '이용약관', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">이용약관</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input">
														<span class="custom-control-label text-dark"><a href="javascript:void(window.open('terms_of_personal_info', '개인정보 취급방침', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">개인정보 취급방침</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
												</div>												
												<div class="form-footer mt-2">
													<button class="btn btn-primary btn-block"  onclick="signup()" name="status" value=1>가입</button> 
													<!-- <input type="submit" class="btn btn-primary btn-block" name="status" value="가입하기"> -->
												</div>												
												<div class="text-center  mt-3 text-dark">
													<span class="font-12">이미 회원가입을 했다면?</span> <a href="login.html" class="color-hover-sign font-12">로그인</a>
												</div>
											</div>
											</form>
										</div>
									</div>
									
									<!-- 프리랜서 가입항목 끝  -->
									
									<!-- 기업 가입항목 -->
									
									<div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab" >
										<div class="card mb-0">
										<form class="form-group" action="signup.do" method="post">
											<div class="card-header">
												<h3 class="card-title">기업</h3>
												<input type="hidden" name="class_num" value=2>
											</div>
											<div class="card-body">
												
													<!--  <form class="form-group" action="auth.do" method="post"> -->
													<label class="form-label text-dark">Email</label>
													<div class="input-group mb-5">
															<input type="email" name="email" id=email class="form-control" value="${email}" placeholder="이메일을 입력해 주세요.">
														<!-- <div class="input-group-append">
																<button class="btn btn-secondary" id="emailBtn" onclick="emailBtn_check()">전송</button>
															</div>		-->											
													</div>
													<div class="" id="email_check">여기나오니이니이니ㅣ</div>
													<!--  </form> -->
												
												<div class="form-group">
													<label class="form-label text-dark">비밀번호</label>
													<input type="password" class="form-control" id="mem_pw" name="pwd" placeholder="Password">
													<div class="" id="pw_check"></div>
												</div>

												<div class="form-group">
													<label class="form-label text-dark">비밀번호 확인</label>
													<input type="password" class="form-control" id="mem_pw2" placeholder="Password">
													<div class="" id="pw2_check"></div>
												</div>
												<div class="form-group" style="font-size:12px; line-height:25px;">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input">
														<span class="custom-control-label text-dark"><a href="javascript:void(window.open('terms_of_service', '이용약관', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">이용약관</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input">
														<span class="custom-control-label text-dark"><a href="javascript:void(window.open('terms_of_personal_info', '개인정보 취급방침', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">개인정보 취급방침</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
												</div>
												
													<div class="form-footer mt-2">
														<button class="btn btn-primary btn-block"  onclick="signup()" name="status" value=1>가입</button>
														<!--<input type="submit" class="btn btn-primary btn-block" name="status" value="가입하기"> -->
													</div>												
												<div class="text-center  mt-3 text-dark">
													<span class="font-12">이미 회원가입을 했다면?</span> <a href="login.html" class="color-hover-sign font-12">로그인</a>
												</div>
											</div>
											</form>
										</div>										
									</div>
									
									<!-- 기업 가입항목 끝 -->
									
								</div>
							</div>
						</div>
					</div>
				</div>
		
		</div>		
		</section>
		<!--/Login-Section-->
		
			<!-- mailAuth Modal -->
			<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog"  aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-body">
					<!-- 		<form class="form-group" action="auth.do" method="post">
							<label class="form-label text-dark">Email</label>
							<div class="input-group mb-5">
									<input type="email" name="email" id=email class="form-control" placeholder="이메일을 입력해 주세요.">
									<div class="input-group-append">
										<button class="btn btn-secondary" id="emailBtn" onclick="emailBtn_check()">전송</button>
									</div>													
							</div>
							<div class="" id="email_check">여기나오니이니이니ㅣ</div>
						</form>					
					-->
						 <form action="join_injeung.do${dice}" method="post">
							<label class="form-label text-dark">인증번호</label>
							<div class="input-group mb-5">
								<input type="text" name="email_injeung" class="form-control" placeholder="인증번호를 입력해 주세요.">
								<div class="input-group-append">
									<button class="btn btn-secondary"  id="emailAuthBtn">인증</button>
								</div>
							</div>
						</form>  
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
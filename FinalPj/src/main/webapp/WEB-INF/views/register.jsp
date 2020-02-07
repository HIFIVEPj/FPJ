<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

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
										<a class="nav-link m-1" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">기업</a>
									</li>
								</ul>
								<div class="tab-content" id="myTabContent">
									<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
										<div class="card mb-0">
											<div class="card-header">
												<h3 class="card-title">Create an Account</h3>
											</div>
											<div class="card-body">
												<div class="text-center">
													<div class="btn-group mt-2 mb-2">
														<a href="https://www.naver.com/" id="naver-btn" class="btn btn-icon brround naver-btn" >
															<span><b>N</b></span>
														</a>
													</div>
													<div class="btn-group mt-2 mb-2">
														<a href="https://www.kakaocorp.com/" class="btn btn-icon brround kakao-btn">
															<span class="fa fa-comment"></span>
														</a>
													</div>
													<div class="btn-group mt-2 mb-2">
														<a href="https://www.google.com/gmail/" class="btn google-btn btn-icon brround">
															<span class="fa fa-google"></span>
														</a>
													</div>
													
												</div>
												<hr class="divider">
												<div class="form-group">
													<label class="form-label text-dark">Email</label>
													<input type="email" class="form-control" placeholder="Enter email">
												</div>
												<div class="form-group">
													<label class="form-label text-dark">비밀번호</label>
													<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
												</div>

												<div class="form-group">
													<label class="form-label text-dark">비밀번호 확인</label>
													<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
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
													<a href="../" class="btn btn-primary btn-block">Create New Account</a>
												</div>
												<div class="text-center  mt-3 text-dark">
													<span class="font-12">이미 회원가입을 했다면?</span> <a href="login.html" class="color-hover-sign font-12">로그인</a>
												</div>

											</div>
										</div>
									</div>
									<div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
										<div class="card mb-0">
											<div class="card-header">
												<h3 class="card-title">Create an Account</h3>
											</div>
											<div class="card-body">
												<div class="text-center">
													<div class="btn-group mt-2 mb-2">
														<a href="https://www.naver.com/" id="naver-btn" class="btn btn-icon brround naver-btn" >
															<span><b>N</b></span>
														</a>
													</div>
													<div class="btn-group mt-2 mb-2">
														<a href="https://www.kakaocorp.com/" class="btn btn-icon brround kakao-btn">
															<span class="fa fa-comment"></span>
														</a>
													</div>
													<div class="btn-group mt-2 mb-2">
														<a href="https://www.google.com/gmail/" class="btn google-btn btn-icon brround">
															<span class="fa fa-google"></span>
														</a>
													</div>
													
												</div>
												<hr class="divider">
																								<div class="form-group">
													<label class="form-label text-dark">Email</label>
													<input type="email" class="form-control" placeholder="Enter email">
												</div>
												<div class="form-group">
													<label class="form-label text-dark">비밀번호</label>
													<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
												</div>

												<div class="form-group">
													<label class="form-label text-dark">비밀번호 확인</label>
													<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
												</div>
												<div class="form-group" style="font-size:12px; line-height:25px;">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input">
														<span class="custom-control-label text-dark"><a href="javascript:void(window.open('terms_of_service', '이용약관', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">이용약관</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input">
														<span class="custom-control-label text-dark" ><a href="javascript:void(window.open('terms_of_personal_info', '개인정보 취급방침', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">개인정보 취급방침</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
												</div>
												<div class="form-footer mt-2">
													<a href="../" class="btn btn-primary btn-block">Create New Account</a>
												</div>
												<div class="text-center  mt-3 text-dark">
													<span class="font-12">이미 회원가입을 했다면?</span> <a href="login.html" class="color-hover-sign font-12">로그인</a>
												</div>

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
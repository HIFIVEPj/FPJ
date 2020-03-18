
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String format=request.getParameter("format");%>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

<script type="text/javascript" src="../js/signup.js"></script>
<script type="text/javascript" src="../js/email.js"></script>
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
										<a class="nav-link active m-1" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true" >프리랜서</a>
									</li>
									<li class="nav-item">
										<a class="nav-link m-1" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false" >기업</a>
									</li>
								</ul>
								<div class="tab-content" id="myTabContent">
									<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
										<div class="card mb-0">
										<form class="form-group" action="signup.do" method="post" id="membercheck">	
											<div class="card-header">
												<h3 class="card-title">가입하기</h3>
												<input type="hidden" name="class_num" value=2>
											</div>

											
											<div class="card-body">	
																						
												<div class="form-group">
													<label class="form-label text-dark">Email</label>	
													<input type="email" id="email" class="form-control" value="" name="email" data-toggle="modal" data-target="#emailModal" readonly>										
												<!-- <input type="email" name="email" id=email class="form-control" placeholder="이메일을 입력해 주세요." > -->
												<!-- 	<div class="" id="email_check"></div> -->
											</div>
											
			                                    
									 	<div class="form-group">
											<label class="form-label text-dark">이름 or 닉네임</label>
											<input type="text" class="form-control" id="name" name="name" placeholder="이름 또는 닉네임을 입력해주세요">
											<div class="" id="name_check"></div>
										</div>																
										
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
												<input type="checkbox" class="custom-control-input" id="tos">
												<span class="custom-control-label text-dark"><a href="javascript:void(window.open('customer_service_terms_of_service', '이용약관', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">이용약관</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
											</label>
											<label class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input" id="topi">
												<span class="custom-control-label text-dark"><a href="javascript:void(window.open('customer_service_terms_of_personal_info', '개인정보 취급방침', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">개인정보 취급방침</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
											</label>
										</div>
										<div class="form-footer mt-2">
										<!--  <button class="btn btn-primary btn-block"  onclick="signup()" name="status" value=0>가입</button> -->
											 <input type="hidden" name="status" value=0>
											 <input type="submit" class="btn btn-primary btn-block" name="status" value="가입하기">
										</div>
										<div class="text-center  mt-3 text-dark">
											<span class="font-12">이미 회원가입을 했다면?</span> <a href="login" class="color-hover-sign font-12">로그인</a>
										</div>
										</div>
									</form>
										</div>
									</div>
									<div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">

											<div class="card mb-0">
											<form class="form-group" action="signup.do" method="post" id="c_membercheck">	
												<div class="card-header">
													<h3 class="card-title">회원가입</h3>
													<input type="hidden" name="class_num" value=4>
												</div>
												<div class="card-body">												
												<div class="form-group">
													<label class="form-label text-dark">Email</label>
													<input type="email" id="c_email" class="form-control" value="" name="email" data-toggle="modal" data-target="#c_emailModal" readonly>													
												<!-- 	<input type="email" name="email" id="c_email" class="form-control" placeholder="이메일을 입력해 주세요."> -->
												<!-- >	<div class="email_check" id="c_email_check"></div> -->
										
												</div>	
												
											 	<div class="form-group">
													<label class="form-label text-dark">이름 or 닉네임</label>
													<input type="text" class="form-control" id="c_name" name="name" placeholder="이름 또는 닉네임을 입력해주세요">												
													<div class="" id="c_name_check"></div>
												</div>	
														
												<div class="form-group">
													<label class="form-label text-dark">비밀번호</label>
													<input type="password" class="form-control" id="c_mem_pw" name="pwd"  placeholder="Password">
													<div class="" id="c_pw_check"></div>
												</div>

												<div class="form-group">
													<label class="form-label text-dark">비밀번호 확인</label>
													<input type="password" class="form-control" id="c_mem_pw2" placeholder="Password">
													<div class="" id="c_pw2_check"></div>
												</div>
												<div class="form-group" style="font-size:12px; line-height:25px;">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" id="c_tos">
														<span class="custom-control-label text-dark"><a href="javascript:void(window.open('terms_of_service', '이용약관', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">이용약관</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" id="c_topi">
														<span class="custom-control-label text-dark"><a href="javascript:void(window.open('terms_of_personal_info', '개인정보 취급방침', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">개인정보 취급방침</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
													</label>
												</div>
												<div class="form-footer mt-2">
													<!-- <button class="btn btn-primary btn-block"  onclick="signup()" name="status" value=0>가입</button> -->
													 <input type="hidden" name="status" value=0>
													 <input type="submit" class="btn btn-primary btn-block" name="status" value="가입하기">
												</div>
												<div class="text-center  mt-3 text-dark">
													<span class="font-12">이미 회원가입을 했다면?</span> <a href="login" class="color-hover-sign font-12">로그인</a>
												</div>

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
		</section>
		<!--/Login-Section-->
		   <!-- Modal -->
                     <div class="modal fade" id="emailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <h5 class="modal-title" id="exampleModalLabel"> <span class=" btn btn-icon btn-primary btn-sm mb-1"><i class="fa fa-envelope"></i> </span> &nbsp; <b>이메일인증</b> </h5>
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                 </button>
                              </div>
                              <div class="modal-body " >
                              	<div class="input-group mb-12" id="emailAuth_div1">
                                 <input type="text" id="emailMD" name="emailMD" placeholder="이메일을 입력하세요" class="form-control" />
                                <div class="input-group-append">
									<button class="btn btn-secondary"  id="emailBtn">메일발송</button>
								</div>
                        <!--          <button type="button" class="btn btn-info" id="emailBtn" style="margin-left:10px;">이메일 발송</button> -->
                               	</div> 
                               	<div class="emailAuth_div" id="email_check" ></div>
                               	
                       			<div id='inj' style='margin-top:10px'>
	                       			<div class='input-group mb-12'>
		                       			<input type='text' id='emailAuth' name='emailAuth' placeholder='인증번호를 입력하세요' class='form-control'/>
		                             	<div class='input-group-append'><button class='btn btn-secondary' id='emailAuthBtn' >인증하기</button></div>
	                             	</div>
                             	</div>
                             </div> 
                              
                              <div class="modal-footer">
                              <input type="hidden" path="random" id="random" value="${random}" />
                              </div>
                           </div>
                        </div>
                     </div>
             <!--Modal 끝-->
   			<!-- Modal -->
                     <div class="modal fade" id="c_emailModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <h5 class="modal-title" id="exampleModalLabel"> <span class=" btn btn-icon btn-primary btn-sm mb-1"><i class="fa fa-envelope"></i> </span> &nbsp; <b>이메일인증</b> </h5>
                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                 </button>
                              </div>
                              <div class="modal-body " >
                              	<div class="input-group mb-12" id="c_emailAuth_div1">
                                 <input type="text" id="c_emailMD" name="c_emailMD" placeholder="이메일을 입력하세요" class="form-control" />
                                <div class="input-group-append">
									<button class="btn btn-secondary"  id="c_emailBtn">메일발송</button>
								</div>
                        <!--          <button type="button" class="btn btn-info" id="emailBtn" style="margin-left:10px;">이메일 발송</button> -->
                               	</div> 
                               	<div class="c_emailAuth_div" id="c_email_check" ></div>
                       			<div id='c_inj' style='margin-top:10px'>
	                       			<div class='input-group mb-12'>
		                       			<input type='text' id='c_emailAuth' name='c_emailAuth' placeholder='인증번호를 입력하세요' class='form-control'/>
										<div class='input-group-append'><button class='btn btn-secondary' id='c_emailAuthBtn' >인증하기</button></div>
									</div>
								</div>                             
                             </div> 
                              
                              <div class="modal-footer">
                              <input type="hidden" path="random" id="random" value="${random}" />
                              </div>
                           </div>
                        </div>
                     </div>
             <!--Modal 끝-->             

		
		

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
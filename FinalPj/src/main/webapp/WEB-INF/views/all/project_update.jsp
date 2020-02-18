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
							<ol class="breadcrumb text-center">
							</ol>
						</div>
					</div>
				</div>
			</div>
		
		</section>
		<!--/Sliders Section-->

		<!--Add posts-section-->
		<section class="sptb">
		<div class="row row-cards">
		<div class="col-md-6 mx-auto">
			<div class="container">
				<div class="row ">
					<div class="col-lg-12 col-md-12 col-md-12">
						<div class="card mb-lg-0">
							<div class="card-header ">
								<h3 class="card-title">프로젝트 등록</h3>
							</div>
							<div class="card-body">
							
							<div class="form-group">
									<label class="form-label text-dark">근무형태</label>
									
									<div class="d-md-flex ad-post-details">
										<label class="custom-control custom-radio mb-2 mr-4">
											<input type="radio" class="custom-control-input" name="radios1" value="option1" checked="">
											<span class="custom-control-label text-muted">비상주</span>
										</label>
										<div>
										<label class="custom-control custom-radio  mb-2"> 
											<input type="radio" class="custom-control-input" name="radios1" value="option2" >
											<span class="custom-control-label text-muted">상주</span>
											&nbsp;&nbsp;&nbsp;
										</label>	
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios1" value="option2" >
											<span class="custom-control-label text-muted">반상주</span>
											&nbsp;&nbsp;&nbsp;
										</label>					
										</div>
											<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios1" value="option2" >
											<span class="custom-control-label text-muted">상관없음</span>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</label>
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label text-dark">직종</label>
									<div class="d-md-flex ad-post-details">
										<label class="custom-control custom-radio mb-2 mr-4">
											<input type="radio" class="custom-control-input" name="radios2" value="option1" checked="">
											<span class="custom-control-label text-muted">개발 </span>
										</label>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">퍼블리싱</span>
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">기획</span>
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">디자인</span>
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="radios2" value="option2" >
											<span class="custom-control-label text-muted">기타</span>
										</label>
										</div>
									</div>
					
								</div>		
								<div class="form-group" >
										<div class="row">
											<div class="col-sm-6 col-md-6">
												<div class="form-group "">
													<label class="form-label">사용기술</label>
								<select class="form-control custom-select" style="width:350px;height:40x;">
												<option value="0">선택</option>
												<option value="90">CGI</option>
												<option value="89">.NET</option>
												<option value="88">JAVA</option>
												<option value="87">C</option>
												<option value="86">C++</option>
												<option value="85">Angular Js</option>
												<option value="84">HTML</option>
												<option value="83">.CFML</option>
												<option value="82">Ajax</option>
												<option value="81">Flash</option>
												<option value="80">Android</option>
												<option value="79">Java Script</option>
												<option value="78">My SQL</option>
												<option value="77">SQL</option>
												<option value="76">기타</option>
												</select>
												</div>
											</div>
												<div class="col-sm-6 col-md-6">
													<div class="form-group ">
														<label class="form-label">급여</label>
														<input type="text" class="form-control">
													</div>	
												</div>
											<div class="col-sm-6 col-md-6">
												<div class="form-group ">
													<label class="form-label">근무지</label>
													<input type="text" class="form-control">
												</div>
											</div>
										</div>
								</div>	
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">프로젝트 기간</label>
											<input type="text" class="form-control">
										</div>	
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">마감일</label>
											<input type="text" class="form-control">
										</div>	
									</div>
								</div>
									<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">모집인원</label>
											<input type="number" class="form-control">
										</div>	
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">총 투입인원</label>
											<input type="number" class="form-control">
										</div>	
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">경력</label>
											<input type="text" class="form-control">
										</div>	
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">홈페이지</label>
											<input type="text" class="form-control">
										</div>	
									</div>
								</div>
										
				 		<div class="form-group">
									<label classㅇ="form-label text-dark">제목</label>
									<input type="text" class="form-control">
								</div>
								<!-- 썸머노트 -->
							<!-- 		    <div class="summernote"></div>
							    <script>
							      $('#summernote').summernote({
							        placeholder: '내용을 입력해 주세요.',
							        tabsize: 2,
							        height: 100
							      });
							    </script>		-->	
								
								<div class="form-group">
                                 <label class="form-label"></label>
                                 <div name="content" class="summernote" class="summernote"></div>
                              </div>
                              <script>
                                 $(document).ready(function() { $('#summernote').summernote();
                                 });
                                 
                                 $('.summernote').summernote({
                                	 placeholder: '내용을 입력해 주세요.',
                                    height: 300,
                                    minHeight: null,
                                    maxHeight: null,
                                    lang : 'ko-KR',
                                    onImageUpload: function(files, editor, welEditable) {
                                    sendFile(files[0], editor, welEditable);
                                    }
                                 });
                              </script>















								<div class="form-group">
									<div class="custom-file">
										<input type="file" class="custom-file-input" name="example-file-input-custom">
										<label class="custom-file-label"></label>
									</div>
								</div>
										<div class="p-2 border mb-4">
									<div class="upload-images d-flex">
										<div>
											<img src="../images/products/h1.jpg" alt="img" class="w73 h73 border p-0">
										</div>
										<div class="ml-3 mt-2">
											<h6 class="mb-0 mt-3 font-weight-bold">h1.jpg</h6>
											<small>4.5kb</small>
										</div>
										<div class="float-right ml-auto">
											<a href="#" class="float-right btn btn-icon btn-danger btn-sm mt-5" ><i class="fa fa-trash-o"></i></a>
										</div>
									</div>
								</div>
								
									<div class="card-header ">
										<h3 class="card-title">회사 정보</h3>
									</div>
									<br/>
										<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label mb-0">회사명</label>
											<input type="text" class="form-control" >
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">담당자명</label>
											<input type="text" class="form-control" >
										</div>	
									</div>
								</div>
										<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">이메일</label>
											<input type="email" class="form-control">
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group ">
											<label class="form-label">연락처</label>
											<input type="number" class="form-control">
										</div>	
									</div>
								</div>	
		
							</div>
							<div class="card-footer ">
							<center>
							<a href="content.do" class="btn btn-success">수정</a> 
								&nbsp;&nbsp;&nbsp;
							<a href="list.do" class="btn btn-success">취소</a>
							</center>
							</div>
						</div>
					</div>
				</div>
			</div>
				
		</section>
		<!--/Add posts-section-->

		<!--Footer Section-->
		<section>
			<footer class="bg-dark text-white">
				<div class="footer-main">
					<div class="container">
						<div class="row">
							<div class="col-lg-10 col-md-12 col-md-12">
								<h6>Business Directory</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Company</a></li>
									<li><a href="#">Colleges</a></li>
									<li><a href="#">Hospital</a></li>
									<li><a href="#">Factories</a></li>
								</ul>
							</div>
							<div class="col-lg-2 col-md-12">
								<h6>Classifieds</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Real Estate</a></li>
									<li><a href="#">Computer</a></li>
									<li><a href="#">Clothing</a></li>
									<li><a href="#">Jobs</a></li>
								</ul>
							</div>
							<div class="col-lg-2 col-md-12">
								<h6>Resources</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Support</a></li>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">Terms of Service</a></li>
									<li><a href="#">Contact Details</a></li>
								</ul>
							</div>
							<div class="col-lg-3 col-md-12">
								<h6>Popular Ads</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Educational college Ads</a></li>
									<li><a href="#">Free Lancer for Web Developer</a></li>
									<li><a href="#">2BHK Flat In Hyderabad</a></li>
									<li><a href="#">BPO Jobs In Bangalore</a></li>
								</ul>
							</div>
							<div class="col-lg-3 col-md-12">
								<h6 class="mb-2">Subscribe</h6>
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Email">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											Subscribe
										</button>
									</div>
								</div>
								<h6 class="mb-2 mt-5">Payments</h6>
								<ul class="payments mb-0">
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-amex" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-visa" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-paypal" aria-hidden="true"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="bg-dark text-white p-0">
					<div class="container">
						<div class="row d-flex">
							<div class="col-lg-8 col-sm-12  mt-2 mb-2 text-left ">
								Copyright Â© 2019 <a href="#" class="fs-14 text-primary">Pinlist</a>. Designed by <a href="#" class="fs-14 text-primary">Spruko</a> All rights reserved.
							</div>
							<div class="col-lg-4 col-sm-12 ml-auto mb-2 mt-2">
								<ul class="social mb-0">
									<li>
										<a class="social-icon" href=""><i class="fa fa-facebook"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-twitter"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-rss"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-youtube"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-linkedin"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-google-plus"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="bg-dark text-white p-0 border-top">
					<div class="container">
						<div class="p-2 text-center footer-links">
							<a href="#" class="btn btn-link">How It Works</a>
							<a href="#" class="btn btn-link">About Us</a>
							<a href="#" class="btn btn-link">Pricing</a>
							<a href="#" class="btn btn-link">Ads Categories</a>
							<a href="#" class="btn btn-link">Privacy Policy</a>
							<a href="#" class="btn btn-link">Terms Of Conditions</a>
							<a href="#" class="btn btn-link">Blog</a>
							<a href="#" class="btn btn-link">Contact Us</a>
							<a href="#" class="btn btn-link">Premium Ad</a>
						</div>
					</div>
				</div>
			</footer>
		
		</section>
		
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
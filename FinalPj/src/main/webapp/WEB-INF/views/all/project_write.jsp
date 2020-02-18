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
								<select class="form-control custom-select" style="width:422px;height:40x;">
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
			                     <textarea name="content" id="summernote" class="summernote"></textarea>
			                    
			                     <script src="/summernote/lang/summernote-ko-KR.js"></script>
			                     <script type="text/javascript">
			                        $(document).ready(function() {$('#summernote').summernote();
			                        });
			                        
			                        $('.summernote').summernote({
			                           height: 150,
			                           placeholder: '내용을 입력해 주세요.',
			                           minHeight: null,
			                           maxHeight: null,
			                           focus: true,
			                           lang: 'ko-KR',
			                           onImageUpload: function(files, editor, welEditable) {
			                           sendFile(files[0], editor, welEditable);
			                           }
			                        });
			                     </script>
		                    		<div class="form-group">
		                        <label class="form-label">Upload Images</label>
		                        <div class="custom-file">
		                           <input type="file" class="custom-file-input" name="example-file-input-custom">
		                           <label class="custom-file-label">Upload Images</label>
		                        </div>
		                    		</div>
										<div class="p-2 border mb-4">
									<div class="upload-images d-flex"  >
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
							<div class="card-footer text-center">
							

							<a href="payments.do" class="btn btn-primary" style="background-color:#1f719a;">등록</a> 
								&nbsp;&nbsp;&nbsp;
							<a href="list.do" class="btn btn-danger">취소</a>

							</div>
						</div>
					</div>
				</div>
			</div>
				
		</section>
		<!--/Add posts-section-->


<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
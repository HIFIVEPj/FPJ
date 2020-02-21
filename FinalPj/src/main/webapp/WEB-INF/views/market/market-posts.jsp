
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
							<h1>마켓 등록</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Pages</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">Ad Post</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Sliders Section-->

		<!--Add posts-section-->
		<section class="sptb">
			<div class="container">
				<div class="row ">
					<div class="col-lg-8 col-md-12 col-md-12">
<!-- /////////////////////////서버로 보내는 폼 ///////////////////////////-->		
					<form name="input" method="post" action="market-write">		
						<div class="card mb-lg-0">
							<div class="card-header ">
								<h3 class="card-title">마켓등록</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<label class="form-label text-dark">제목</label>
									<input type="text" class="form-control" placeholder="">
								</div>			
								<div class="form-group">
									<label class="form-label text-dark">가격</label>
									<input type="text" class="form-control" placeholder="">
								</div>
								<!--셀렉트박스!!!!!!!!
								<div class="form-group">
									<label class="form-label text-dark">직종</label>
									<select class="form-control custom-select">
										<option value="0">선택하기</option>
										<option value="1">개발</option>
										<option value="2">퍼블리싱</option>
										<option value="3">디자인</option>
										<option value="4">기획</option>
										<option value="5">기타</option>		
									</select>
								</div>
								셀렉트박스!!!!!!!!--> 	
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
											<span class="custom-control-label text-muted">디자인</span>
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
											<span class="custom-control-label text-muted">기타</span>
										</label>
										</div>
										
									</div>
								<input type="text" class="form-control" placeholder="기타 선택시 입력하세요">
								</div>
								<!--		
								<div class="form-group">
									<label class="form-label text-dark"></label>
								    <div id="summernote"></div>
								</div>
								-->
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
					<!-- 썸머노트 -->	
						<br></br>
						<div class="form-group">
							<div class="custom-file">
								<input type="file" class="custom-file-input" name="example-file-input-custom">
								<label class="custom-file-label">Upload Images</label>
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
						<div class="p-2 border mb-4">
							<div class="upload-images d-flex">
								<div>
									<img src="../images/products/h5.jpg" alt="img" class="w73 h73 border p-0">
								</div>
								<div class="ml-3 mt-2">
									<h6 class="mb-0 mt-3 font-weight-bold">h5.jpg</h6>
									<small>4.5kb</small>
								</div>
								<div class="float-right ml-auto">
									<a href="#" class="float-right btn btn-icon btn-danger btn-sm mt-5" ><i class="fa fa-trash-o "></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer ">
						<a href="#" class="btn btn-success">Submit Now</a>
					</div>
				</div>
			</form>	
<!--//////////////////////////// 서버로 보내는 폼 ////////////////////////////-->	
					
					</div>
					<div class="col-lg-4 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">조건</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec  mb-0">
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Money Not Refundable
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>You can renew your Premium ad after experted.
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are active for depend on package.
									</li>
									<li class="ml-5 mb-0">
										<a href="tips.html"> View more..</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">프리미엄 광고의 이익</h3>
							</div>
							<div class="card-body pb-2">
								<ul class="list-unstyled widget-spec vertical-scroll mb-0">
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium Ads Active
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are displayed on top
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads will be Show in Google results
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium Ads Active
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are displayed on top
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads will be Show in Google results
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium Ads Active
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are displayed on top
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads will be Show in Google results
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium Ads Active
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are displayed on top
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads will be Show in Google results
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium Ads Active
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are displayed on top
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads will be Show in Google results
									</li>
								</ul>
							</div>
						</div>
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">서비스 구매시 주의사항</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec  mb-0">
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i> Meet Seller at public Place
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i> Check item before you buy
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i> Pay only after collecting item
									</li>
									<li class="ml-5 mb-0">
										<a href="tips.html"> View more..</a>
									</li>
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!--/Add posts-section-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
>>>>>>> 0548d3f85aa071ccf233551fbbc900acc8e9ea70
<!--/footer-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<!--
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/rating.jpg">
			-->
			<div class="banner-1 cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="">공지 게시판</h1>
								</div>
								<div class=" search-background">
									<div class="form row no-gutters">
										<div class="form-group  col-xl-6 col-lg-5 col-md-12 mb-0">
											<input type="text" class="form-control input-lg border-right-0" id="text" placeholder="질문 검색">
										</div>
										<div class="form-group col-xl-4 col-lg-4 select2-lg  col-md-12 mb-0">
											<select class="form-control select2-show-search border-bottom-0 w-100" data-placeholder="Select">
												<optgroup label="Categories">
													<option>Category</option>
													<option value="1">Bitcoin</option>
													<option value="2">Bitcoincash</option>
													<option value="3">Bitcoinglod</option>
													<option value="4">Cardano</option>
													<option value="5">Dash</option>
													<option value="6">Eos</option>
													<option value="7">Ethereum</option>
													<option value="8">Euro</option>
													<option value="9">Icon</option>
													<option value="10">Iota</option>
													<option value="11">Litecoin</option>
													<option value="12">Monero</option>
													<option value="13">Nem</option>
													<option value="14">Neo</option>
													<option value="15">Qtum</option>
													<option value="16">Raiblocks</option>
													<option value="17">Ripple</option>
													<option value="18">Stellar</option>
													<option value="19">Tron</option>
												</optgroup>
											</select>
										</div>
										<div class="col-xl-2 col-lg-3 col-md-12 mb-0">
											<a href="#" class="btn btn-lg btn-block btn-secondary">Search</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div><!-- /header-text -->
			</div>
		</div>
		<!--/Sliders Section-->

		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">공지 게시판</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">커뮤니티</a></li>
						<li class="breadcrumb-item active" aria-current="page">공지 게시판</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--공지 게시판 입력 폼-->
		<section class="sptb">
			<div class="row row-cards">
				<div class="col-md-6 mx-auto">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Create New Ad</div>
						</div>
						<div class="card-body">
							<div class="form-group ">
								<label class="form-label">Enter Title</label>
								<input type="text" class="form-control w-100"  placeholder="Enter Title here">
							</div>
							<div class="form-group ">
								<label class="form-label">Enter Subtitle</label>
								<input type="text" class="form-control w-100"  placeholder="Enter Sub title">
							</div>
							<div class="form-group">
								<label class="form-label">Select Category</label>
								<select class="form-control select2" data-placeholder="Choose Browser" multiple>
									<option value="1" selected>Vehicle</option>
									<option value="2">Real Estate</option>
									<option value="3">Computer</option>
									<option value="4">Clothing</option>
									<option value="5">Job</option>
									<option value="6">Services</option>
									<option value="7">Electronics</option>
									<option value="8">Mobile</option>
									<option value="9">Events</option>
									<option value="10">Constructions</option>
								</select>
							</div>
							<div class="form-group">
								<label class="form-label">Upload Images</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" name="example-file-input-custom">
									<label class="custom-file-label">Upload Images</label>
								</div>
							</div>
							
							<!--
							<div class="form-group">
								<label class="form-label">Description</label>
								<textarea class="content" name="example" placeholder="Enter Description"></textarea>
							</div>
							-->
							

							<div class="form-group">
								<label class="form-label">Description</label>
								<form method="post">
									<textarea name="content" id="summernote" class="summernote"></textarea>
								</form>	
							</div>
								
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
							
							
							<!-- 
							<script>
								$(document).ready(function() {
									  $('#summernote').summernote({
								 	    	placeholder: 'content',
									        minHeight: 370,
									        maxHeight: null,
									        focus: true, 
									        lang : 'ko-KR'
									  });
									});
							</script>

							<script type="text/javascript">
								$(document).ready(function() {
								  $('#summernote').summernote({
										placeholder: 'content',
								        minHeight: 370,
								        maxHeight: null,
								        focus: true, 
								        lang : 'ko-KR'
								  });
								});
							</script>
							-->
							
							
						</div>
						<div class="card-footer text-right">
							<button type="submit" class="btn btn-primary waves-effect waves-light">등록</button>
							<a href="community_notice" class="btn btn-danger waves-effect waves-light">취소</a>
						</div>
					</div>
				</div>
			</div>
		</section>			
		<!--/공지 게시판 입력 폼-->
			
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
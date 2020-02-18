<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">공지사항</h1>
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

		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">공지사항</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">공지사항</li>
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
							<div class="card-title">공지사항 글쓰기</div>
						</div>
						
						<form method="post" action="customer_service_notice_write" name="notice_write">
						
						<!-- 나중에 없앨 부분 -->
						<input type="hidden" name="mem_email" value="관리자">
						<!-- /나중에 없앨 부분 -->
						
						<script type="text/javascript">
						   function check() {
						       if(document.notice_write.notice_cate.value==''){
						    	   alert('분류를 선택해 주세요.');
						    	   document.notice_write.notice_cate.focus();
						    	   return false;
						       }
						       if(document.notice_write.notice_sub.value==''){
						    	   alert('제목을 입력해 주세요.');
						    	   document.input.notice_sub.focus();
						    	   return false;
						       }
						    	document.notice_write.submit();
						          
					       }
						</script>
						
						
						
						<div class="card-body">
							<div class="form-group">
								<label class="form-label">분류</label>
								<!--
								<select class="form-control select2" data-placeholder="분류를 선택해 주세요." multiple>
								-->
								<select class="form-control custom-select select1" name="notice_cate" data-placeholder="분류를 선택해 주세요.">
									<option value="" style="color:#7fa5b8;">&nbsp;분류를 선택해 주세요.</option>
									<option value="공지">공지</option>
									<option value="채용">채용</option>
									<option value="이벤트">이벤트</option>
									<option value="기타">기타</option>
								</select>
							</div>
							<div class="form-group">
								<label class="form-label">제목</label>
								<input type="text" class="form-control w-100" value="" placeholder="제목을 입력해 주세요." name="notice_sub">
							</div>
							<!--
							<div class="form-group ">
								<label class="form-label">Enter Subtitle</label>
								<input type="text" class="form-control w-100"  placeholder="Enter Sub title">
							</div>
							-->
							
							<!--
							<div class="form-group">
								<label class="form-label">Upload Images</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" name="example-file-input-custom">
									<label class="custom-file-label">Upload Images</label>
								</div>
							</div>
							-->
							<!--
							<div class="form-group">
								<label class="form-label">Description</label>
								<textarea class="content" name="example" placeholder="Enter Description"></textarea>
							</div>
							-->
							

							<div class="form-group">
								<label class="form-label">내용</label>
								
									<textarea name="notice_cont" id="summernote" class="summernote"></textarea>
									
									<!-- 나중에 없앨 부분 -->
									<!--
									<br/><br/>
									<span>나중에 없앨 부분</span>
									<input type="text" class="form-control w-100" name="mem_email" value="관리자">
									-->
									<!-- /나중에 없앨 부분 -->
									
									<div class="card-body text-right">
									<!--
										<input type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#smallModal" value='등록'>
									-->	
										<button type="button" class="btn btn-primary waves-effect waves-light" onclick="check(this.form)">등록</button>
										<!-- 
										<input type="button" class="btn btn-danger waves-effect waves-light" value='취소' id='click1'>
										 -->
										 <input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal" value='취소'>
									</div>
								
							</div>
							<!--
								<form method="post" action="/write">
 
									<textarea id="summernote" name="content"></textarea>
									<input id="subBtn" type="button" value="글 작성" style="float: right;" onclick="goWrite(this.form)"/>
								</form>
							</div>
							  -->
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
						
						</form>
						
						<!--
						<div class="card-footer text-right">
						-->
							<!--
							<button type="submit" class="btn btn-primary waves-effect waves-light">등록</button>
							-->
							<!--
							<a href="#" class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#smallModal">등록</a>
							<!--
							<a href="community_notice" class="btn btn-danger waves-effect waves-light">취소</a>
							-->
							<!--
							<input type="button" class="btn btn-danger waves-effect waves-light" value='취소' id='click1'>
							
						</div>
						-->
	
	
	
						
		<!-- small Modal -->		
			<div id="smallModal" class="modal fade">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold"><b>글 작성 취소</b></h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>공지사항 목록으로 돌아갑니다.</p>
						</div><!-- modal-body -->
						
						<div class="modal-footer">
						
							<a href="customer_service_notice" class="btn btn-primary">네</a>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
						</div>
					</div>
				</div><!-- modal-dialog -->
				
			</div>
		<!-- /small Modal -->
		
		<!-- 글쓰기 예외처리 -->
		<!--
		<script>
		function goWrite(frm) {
			var notice_cate = frm.notice_cate.value;
			var writer = frm.writer.value;
			var content = frm.content.value;
			
			if (notice_cate.trim() == ''){
				alert("분류를 선택해 주세요.");
				return false;
			}
			if (notice_sub.trim() == ''){
				alert("제목을 입력해 주세요.");
				return false;
			}			
			if (content.trim() == ''){
				alert("내용을 입력해주세요");
				return false;
			}
			frm.submit();
		}
		</script>
		-->
		
		<!-- /글쓰기 예외처리 -->
						
						
						
						
						
						
					</div>
				</div>
			</div>
		</section>			
		<!--/공지 게시판 입력 폼-->
		
		
			
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!--/footer-->
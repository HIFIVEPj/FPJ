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
									<h1 class="" style="margin-bottom:0rem;">FAQ</h1>
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
					<h4 class="page-title">FAQ</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item">고객센터</li>
						<li class="breadcrumb-item active" aria-current="page">FAQ</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--FAQ 입력 폼-->
		<section class="sptb">
			<div class="row row-cards">
				<div class="col-md-6 mx-auto">
					<div class="card">
						<div class="card-header">
							<div class="card-title">FAQ 글쓰기</div>
						</div>
						
						<form method="post" action="customer_service_faq_write" name="faq_write">
						
						
						<input type="hidden" name="mem_email" value="${sessionScope.email}">
						
						
						<script type="text/javascript">
						   function check() {
						       if(document.faq_write.faq_cate.value==''){
						    	   alert('분류를 선택해 주세요.');
						    	   document.faq_write.faq_cate.focus();
						    	   return false;
						       }
						       if(document.faq_write.faq_sub.value==''){
						    	   alert('제목을 입력해 주세요.');
						    	   //document.input.faq_sub.focus();
						    	   document.faq_write.faq_sub.focus();
						    	   return false;
						       }
						    	document.faq_write.submit();
						          
					       }
						</script>
						
						
						
						<div class="card-body">
							<div class="form-group">
								<label class="form-label">분류</label>
								<!--
								<select class="form-control select2" data-placeholder="분류를 선택해 주세요." multiple>
								-->
								<select class="form-control custom-select select1" name="faq_cate" data-placeholder="분류를 선택해 주세요.">
									<option value="" style="color:#7fa5b8;">&nbsp;분류를 선택해 주세요.</option>
									<option value="프로젝트">프로젝트</option>
									<option value="프리마켓">프리마켓</option>
									<option value="프리랜서">프리랜서</option>
									<option value="가입/탈퇴">가입/탈퇴</option>
									<option value="회원정보">회원정보</option>
									<option value="결제/환불">결제/환불</option>
									<option value="할인">할인</option>
									<option value="기타">기타</option>	
								</select>
							</div>
							<div class="form-group">
								<label class="form-label">제목</label>
								<input type="text" class="form-control w-100" value="" placeholder="제목을 입력해 주세요." name="faq_sub">
							</div>
							<div class="form-group">
								<label class="form-label">내용</label>
								
									<textarea name="faq_cont" id="summernote" class="summernote"></textarea>

									<div class="card-body text-right">

										<button type="button" class="btn btn-primary waves-effect waves-light" onclick="check(this.form)">등록</button>

										 <input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal" value='취소'>
									</div>
								
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
							
						</div>
						
						</form>
				
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
							<p>FAQ 목록으로 돌아갑니다.</p>
						</div><!-- modal-body -->
						
						<div class="modal-footer">
						
							<a href="customer_service_faq" class="btn btn-primary">네</a>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
						</div>
					</div>
				</div><!-- modal-dialog -->
				
			</div>
		<!-- /small Modal -->
						
					</div>
				</div>
			</div>
		</section>			
		<!--/FAQ 입력 폼-->
		
		
			
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->

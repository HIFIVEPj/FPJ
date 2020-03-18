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
							<h1 class="" style="margin-bottom:0rem;">FAQ</h1>
						</div>
					</div>
				</div><!-- /header-text -->
			</div>
		</section>
		<!--/Sliders Section-->

		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">FAQ</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_hifive">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">FAQ</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--FAQ 수정-->
		<section class="sptb">
			<div class="row row-cards">
				<div class="col-md-6 mx-auto">
					<div class="card">
						<div class="card-header">
							<div class="card-title">FAQ 글 수정하기</div>
						</div>
						
						<form method="post" action="customer_service_faq_modify" name="faq_modify">
						<input type="hidden" name="faq_num" value="${faq_content.faq_num}">						
						<input type="hidden" name="mem_email" value="${faq_content.mem_email}">				
						
						<script type="text/javascript">
						   function check() {
						       if(document.faq_modify.faq_cate.value==''){
						    	   alert('분류를 선택해 주세요.');
						    	   document.faq_modify.faq_cate.focus();
						    	   return false;
						       }
						       if(document.faq_modify.faq_sub.value==''){
						    	   alert('제목을 입력해 주세요.');
						    	   document.faq_modify.faq_sub.focus();
						    	   return false;
						       }
						    	document.faq_modify.submit();
						          
					       }
						</script>
						
						
						
						<div class="card-body">
							<div class="form-group">
								<label class="form-label">분류</label>
								<!--
								<select class="form-control select2" data-placeholder="분류를 선택해 주세요." multiple>
								-->
								<select class="form-control custom-select select1" name="faq_cate" data-placeholder="분류를 선택해 주세요.">
									<option value="프로젝트" <c:if test="${faq_content.faq_cate=='프로젝트'}">selected</c:if>>프로젝트</option>
									<option value="프리마켓" <c:if test="${faq_content.faq_cate=='프리마켓'}">selected</c:if>>프리마켓</option>
									<option value="프리랜서" <c:if test="${faq_content.faq_cate=='프리랜서'}">selected</c:if>>프리랜서</option>
									<option value="가입/탈퇴" <c:if test="${faq_content.faq_cate=='가입/탈퇴'}">selected</c:if>>가입/탈퇴</option>
									<option value="회원정보" <c:if test="${faq_content.faq_cate=='회원정보'}">selected</c:if>>회원정보</option>
									<option value="결제/환불" <c:if test="${faq_content.faq_cate=='결제/환불'}">selected</c:if>>결제/환불</option>
									<option value="할인" <c:if test="${faq_content.faq_cate=='할인'}">selected</c:if>>할인</option>
									<option value="기타" <c:if test="${faq_content.faq_cate=='기타'}">selected</c:if>>기타</option>
								</select>
							</div>
							<div class="form-group">
								<label class="form-label">제목</label>
								<input type="text" class="form-control w-100" value="${faq_content.faq_sub}" placeholder="제목을 입력해 주세요." name="faq_sub">
							</div>
							

							<div class="form-group">
								<label class="form-label">내용</label>
								
									<textarea name="faq_cont" id="summernote" class="summernote"></textarea>

									<div class="card-body text-right">

										<button type="button" class="btn btn-primary waves-effect waves-light" onclick="check(this.form)">수정</button>

										 <input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal1" value='취소'>
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
								
								$("#summernote").summernote('code', '${faq_content.faq_cont}');
							</script>
													
						</div>
						
						</form>

						
		<!-- small Modal -->		
			<div id="smallModal1" class="modal fade">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold"><b>글 수정 취소</b></h5>
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
		
		<!-- 글쓰기 예외처리 -->
		<!--
		<script>
		function goWrite(frm) {
			var faq_cate = frm.faq_cate.value;
			var writer = frm.writer.value;
			var content = frm.content.value;
			
			if (faq_cate.trim() == ''){
				alert("분류를 선택해 주세요.");
				return false;
			}
			if (faq_sub.trim() == ''){
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
		<!--/FAQ 수정-->
		
		
			
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
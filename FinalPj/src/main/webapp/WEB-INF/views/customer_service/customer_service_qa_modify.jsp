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
									<h1 class="" style="margin-bottom:0rem;">문의하기</h1>
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
					<h4 class="page-title">문의하기</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의하기</li>
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
							<div class="card-title">문의하기 글 수정하기</div>
						</div>
						
						<!--
						<form method="post" action="customer_service_qa_write" name="qa_write" enctype="multipart/form-data">
						-->
						<form method="post" action="customer_service_qa_modify" name="qa_modify">
						<input type="hidden" name="qa_num" value="${qa_content.qa_num}">
						<!-- 나중에 없앨 부분 -->
						<input type="hidden" name="mem_email" value="kimse@gmail.com">
						<input type="hidden" name="qa_prnum" value=0>
						<input type="hidden" name="qa_lev" value=0>
						<input type="hidden" name="qa_sun" value=0>
						<!-- /나중에 없앨 부분 -->
						
						<script type="text/javascript">
						   function check() {
						       if(document.qa_write.qa_cate.value==''){
						    	   alert('분류를 선택해 주세요.');
						    	   document.qa_write.qa_cate.focus();
						    	   return false;
						       }
						       if(document.qa_write.qa_sub.value==''){
						    	   alert('제목을 입력해 주세요.');
						    	   document.input.qa_sub.focus();
						    	   return false;
						       }
						    	document.qa_write.submit();
						          
					       }
						</script>
						
						
						
						<div class="card-body">
							<div class="form-group">
								<label class="form-label">분류</label>
								<!--
								<select class="form-control select2" data-placeholder="분류를 선택해 주세요." multiple>
								-->
								<select class="form-control custom-select select1" name="qa_cate" data-placeholder="분류를 선택해 주세요.">
									<option value="프로젝트" <c:if test="${qa_content.qa_cate=='프로젝트'}">selected</c:if>>프로젝트</option>
									<option value="프리마켓" <c:if test="${qa_content.qa_cate=='프리마켓'}">selected</c:if>>프리마켓</option>
									<option value="프리랜서" <c:if test="${qa_content.qa_cate=='프리랜서'}">selected</c:if>>프리랜서</option>
									<option value="가입/탈퇴" <c:if test="${qa_content.qa_cate=='가입/탈퇴'}">selected</c:if>>가입/탈퇴</option>
									<option value="회원정보" <c:if test="${qa_content.qa_cate=='회원정보'}">selected</c:if>>회원정보</option>
									<option value="결제/환불" <c:if test="${qa_content.qa_cate=='결제/환불'}">selected</c:if>>결제/환불</option>
									<option value="할인" <c:if test="${qa_content.qa_cate=='할인'}">selected</c:if>>할인</option>
									<option value="기타" <c:if test="${qa_content.qa_cate=='기타'}">selected</c:if>>기타</option>
								</select>
							</div>
							<div class="form-group">
								<label class="form-label">제목</label>
								<input type="text" class="form-control w-100" value="${qa_content.qa_sub}" placeholder="제목을 입력해 주세요." name="qa_sub">
							</div>
							
							<!--
							<div class="form-group">
								<label class="form-label">파일 업로드</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" name="example-file-input-custom">
									<label class="custom-file-label" style="color:#7fa5b8;">파일 선택</label>
								</div>
							</div>
							-->
							
							<div class="form-group">
								<label class="form-label">파일 업로드</label>
								<div class="col-lg-12 col-sm-12">
									<!--
									<input type="file" class="dropify" data-height="80">
									-->
									<!--
									<input type="file" class="dropify" id="dropify" data-height="100" multiple accept="image/*"/>
									-->
									<input type="file" class="dropify" id="dropify" data-height="100" multiple/>
								</div>
							</div>
							
							
					
							
							<!-- 테스트 -->
							<div class="form-group">
								<label class="form-label">파일 업로드</label>
								<div class="col-lg-12 col-sm-12">
								
									<!--
									<div class="jquery-script-ads" style="margin-top:20px;">
										<script type="text/javascript">
									-->	
											<!--
											google_ad_client = "ca-pub-2783044520727903";
											/* jQuery_demo */
											google_ad_slot = "2780937993";
											google_ad_width = 728;
											google_ad_height = 90;
											//-->
									<!--		
										</script>
										<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
										</script>
									</div>
									-->
											
									<style>
										.dropzone {
									        background-color: #ccc;
										    border: 3px dashed #888;
										    width: 350px;
										    height: 150px;
										    border-radius: 25px;
										    font-size: 20px;
										    color: #777;
										    padding-top: 50px;
										    text-align: center;
										}
										.dropzone.over {
										    opacity: .7;
										    border-style: solid;
										}
										#dropzone .dropzone {
										    margin-top: 25px;
										    padding-top: 60px;
										}
									</style> 
									
									
									<form id="dropzone">
											<button type="button" class="btn btn-success fileup-btn" style="background-color: #4CAE4C;">
										        파일 선택
										        <input type="file" id="upload-4" multiple>
										    </button>
											
											<a class="control-button btn btn-link" style="display: none"
										       href="javascript:$.fileup('upload-2', 'upload', '*')">Upload all</a>
										    <a class="control-button btn btn-link" style="display: none"
										       href="javascript:$.fileup('upload-2', 'remove', '*')">Remove all</a>
											
										    <div id="upload-4-dropzone" class="dropzone">이곳으로 파일을 끌어 놓아주세요.
										    </div>

										    <div id="upload-4-queue" class="queue"></div>
										    
									</form>
									
									<script src="../plugins/fileuploads-test/jquery.growl.js"></script> 
									<script src="../plugins/fileuploads-test/fileup.js"></script> 
									<script>
									        $.fileup({
									            url: 'example.com/your/path?file_upload=1',
									            inputID: 'upload-1',
									            queueID: 'upload-1-queue',
									            onSuccess: function(response, file_number, file) {
									                $.growl.notice({ title: "Upload success!", message: file.name });
									            },
									            onError: function(event, file, file_number) {
									                $.growl.error({ message: "업로드 실패!" });
									            }
									        });
											$.fileup({
									            url: 'example.com/your/path?file_upload=1',
									            inputID: 'upload-2',
									            dropzoneID: 'upload-2-dropzone',
									            queueID: 'upload-2-queue',
									            onSelect: function(file) {
									                $('#multiple .control-button').show();
									            },
									            onRemove: function(file, total) {
									                if (file === '*' || total === 1) {
									                    $('#multiple .control-button').hide();
									                }
									            },
									            onSuccess: function(response, file_number, file) {
									                $.growl.notice({ title: "Upload success!", message: file.name });
									            },
									            onError: function(event, file, file_number) {
									                $.growl.error({ message: "업로드 실패!" });
									            }
									        });
											$.fileup({
									            url: 'https://github.com?file_upload=1',
									            inputID: 'upload-3',
									            queueID: 'upload-3-queue',
									            autostart: true,
									            onSelect: function(file) {
									                $('#types .control-button').show();
									            },
									            onRemove: function(file, total) {
									                if (file === '*' || total === 1) {
									                    $('#types .control-button').hide();
									                }
									            },
									            onSuccess: function(response, file_number, file) {
									                $.growl.notice({ title: "Upload success!", message: file.name });
									            },
									            onError: function(event, file, file_number) {
									                $.growl.error({ message: "업로드 실패!" });
									            }
									        });
											 $.fileup({
									            url: 'https://github.com?file_upload=1',
									            inputID: 'upload-4',
									            queueID: 'upload-4-queue',
									            dropzoneID: 'upload-4-dropzone'
									        })
									            .select(function(file) {
									                $('#dropzone .control-button').show();
									            })
									            .remove(function(file, total) {
									                if (file === '*' || total === 1) {
									                    $('#dropzone .control-button').hide();
									                }
									            })
									            .success(function(response, file_number, file) {
									                $.growl.notice({ title: "Upload success!", message: file.name });
									            })
									            .error(function(event, file, file_number) {
									                $.growl.error({ message: "업로드 실패!" });
									            })
									            .dragEnter(function(event) {
									                $(event.target).addClass('over');
									            })
									            .dragLeave(function(event) {
									                $(event.target).removeClass('over');
									            })
									            .dragEnd(function(event) {
									                $(event.target).removeClass('over');
									            });
									
									    </script>
									    <script type="text/javascript">
									
									  var _gaq = _gaq || [];
									  _gaq.push(['_setAccount', 'UA-36251023-1']);
									  _gaq.push(['_setDomainName', 'jqueryscript.net']);
									  _gaq.push(['_trackPageview']);
									
									  (function() {
									    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
									    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
									    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
									  })();
									
									</script>
								
								
								
									
								</div>
							</div>
							
							
							
							<!-- /테스트 -->
							
							
							
							<div class="form-group">
								<label class="form-label">내용</label>
								
									<textarea name="qa_cont" id="summernote" class="summernote"></textarea>
							
									<div class="card-footer">
										<div class="row">
											<div class="col">
												<label class="custom-control custom-checkbox mb-0">
													<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
													<span class="custom-control-label">비밀글</span>
												</label>
											</div>
											<div class="col col-auto">
												<button type="button" class="btn btn-primary waves-effect waves-light" onclick="check(this.form)">등록</button>
												<!-- 
												<input type="button" class="btn btn-danger waves-effect waves-light" value='취소' id='click1'>
												 -->
												<input type="button" class="btn btn-danger waves-effect waves-light" data-toggle="modal" data-target="#smallModal" value='취소'>
											 </div>
										</div>
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
								
								$("#summernote").summernote('code', '${qa_content.qa_cont}');
							</script>
							
							<script type="text/javascript">
					            $(document).ready(function(){					            	
					            	$('#dropify').dropify();
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
							<p>문의하기 목록으로 돌아갑니다.</p>
						</div><!-- modal-body -->
						
						<div class="modal-footer">
						
							<a href="customer_service_qa" class="btn btn-primary">네</a>
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
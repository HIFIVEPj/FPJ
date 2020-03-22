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
						<li class="breadcrumb-item">고객센터</li>
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
							<div class="card-title">문의 글 수정</div>
						</div>
						
						<!--
						<form method="post" action="customer_service_qa_write" name="qa_write" enctype="multipart/form-data">
						-->
						<form role="form" method="post" action="customer_service_qa_modify" name="qa_modify">
						<input type="hidden" name="qa_num" value="${qa_content.qa_num}">
						<input type="hidden" name="mem_email" value="${sessionScope.email}">
						<!-- 나중에 수정해야 할 부분 -->						
						<input type="hidden" name="qa_prnum" value=0>
						<input type="hidden" name="qa_lev" value=0>
						<input type="hidden" name="qa_sun" value=0>
						<!-- /나중에 수정해야 할 부분 -->
						
						
						
						<script>		  
						   $(document).ready(function(e){
							   
							   var formObj = $("form[role='form']");
								  
							   $("button[type='submit']").on("click", function(e){
								    								  
							       if(document.qa_modify.qa_sub.value==''){
							    	   alert('제목을 입력해 주세요.');
							    	   document.qa_modify.qa_sub.focus();
							    	   return false;
							       }
								   
								   e.preventDefault();
									    
								   console.log("submit clicked");
								   var str = "";
								    
								    $(".uploadResult ul li").each(function(i, obj){
								      
								      var jobj = $(obj);
								      
								      console.dir(jobj);
								      //console.log("-------------------------");
								      //console.log(jobj.data("filename"));								      
								      
								      str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
								      str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
								      str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
								      str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+ jobj.data("type")+"'>";
								      
								    });
								    
								    console.log(str);
								    
								    formObj.append(str).submit(); 
							   });	   
						   });
						</script>
						
						
						
						<script>
						   /*
							function check() {
						       if(document.qa_modify.qa_cate.value==''){
						    	   alert('분류를 선택해 주세요.');
						    	   document.qa_modify.qa_cate.focus();
						    	   return false;
						       }
						       if(document.qa_modify.qa_sub.value==''){
						    	   alert('제목을 입력해 주세요.');
						    	   document.input.qa_sub.focus();
						    	   return false;
						       }
						    	document.qa_modify.submit();     
					       }
						   */
						   $(document).ready(function(){
								  
								  (function(){
								  
								    var qa_num = '<c:out value="${qa_content.qa_num}"/>';
								    
								    $.getJSON("/getAttachList", {qa_num:qa_num}, function(arr){
								    
								      console.log(arr);
								      
								      var str = "";
								      
								      $(arr).each(function(i, attach){
								    	  
								    	  if(attach.fileType){
								              var fileCallPath = encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName);
								              
								              str += "<li data-path='"+attach.uploadPath+"'data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' >"
								              			+"<div><img src='/display?fileName="+fileCallPath+"'>" + " " + "<b>"+attach.fileName+"</b>&nbsp;"
								              			+"<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button></div></li>";
								          }else{
								              str += "<li data-path='"+attach.uploadPath+"'data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' >"
								              			+"<div><img src='../images/attach.png'>" + " " + "<b>"+attach.fileName+"</b>&nbsp;"
								              			+"<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button></div></li>";
								          }								    	  
								      });								          
								          $(".uploadResult ul").html(str);
								    }); //end getjson
								  })(); //end function
								  
								  $(".uploadResult").on("click", "button", function(e){
									    
								    console.log("delete file");
								      
								    if(confirm("첨부파일을 삭제할까요?\n(수정 작업이 완료되기 전까지는 실제로 반영되지는 않습니다.)")){
								    
								      var targetLi = $(this).closest("li");
								      targetLi.remove();
								    }else {
							            return false;
							        }
								  });
								  
								  
								  var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
								  var maxSize = 5242880; //5MB
								   
								   function checkExtension(fileName, fileSize){
								     
								     if(fileSize >= maxSize){
								       alert("파일 사이즈 초과");
								       return false;
								     }
								     
								     if(regex.test(fileName)){
								       alert("해당 종류의 파일은 업로드할 수 없습니다.");
								       return false;
								     }
								     return true;
								   }
								   
								   $("input[type='file']").change(function(e){

								     var formData = new FormData();
								     
								     var inputFile = $("input[name='uploadFile']");
								     
								     var files = inputFile[0].files;
								     
								     for(var i = 0; i < files.length; i++){

								       if(!checkExtension(files[i].name, files[i].size) ){
								         return false;
								       }
								       formData.append("uploadFile", files[i]);
								       
								     }
								     
								     $.ajax({
								       url: '/uploadAjaxAction',
								       processData: false, 
								       contentType: false,data: 
								       formData,type: 'POST',
								       dataType:'json',
								         success: function(result){
								           	console.log(result); 
								 		  	showUploadResult(result); //업로드 결과 처리 함수 

								       }
								     }); //$.ajax
								     
								   });
								   
								   
								   function showUploadResult(uploadResultArr){
									    
									    if(!uploadResultArr || uploadResultArr.length == 0){ return; }
									    
									    var uploadUL = $(".uploadResult ul");
									    
									    var str ="";
									    
									    $(uploadResultArr).each(function(i, obj){								    
									        
									    	if(obj.image){
										       
									    	  var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);

									    	  str += "<li data-path='"+obj.uploadPath+" 'data-uuid='"+obj.uuid+" 'data-filename='"+obj.fileName+" 'data-type='"+obj.image+"'><div><img src='/display?fileName="+fileCallPath+"'>" + " " + "<b>"+obj.fileName+"</b>&nbsp;"
							        		  +"<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button>"+"</div></li>";
									          
									        }else{
									          
									          var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
									          
									          str += "<li data-path='"+obj.uploadPath+" 'data-uuid='"+obj.uuid+" 'data-filename='"+obj.fileName+" 'data-type='"+obj.image+"'><div><img src='../images/attach.png'>" + " " + "<b>"+obj.fileName+"</b>&nbsp;"
									        		  +"<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button></div></li>"
									        }
									        
							   			});
									    uploadUL.append(str);
								   }
								   
								   $(".uploadResult").on("click", "button", function(e){
									    
									    console.log("delete file");
									    var targetFile = $(this).data("file");
									    var type = $(this).data("type");
									    
									    var targetLi = $(this).closest("li");
									    
									    $.ajax({
									      url: '/deleteFile',
									      data: {fileName: targetFile, type:type},
									      dataType:'text',
									      type: 'POST',
									        success: function(result){
									           alert(result);
									           
									           targetLi.remove();
									         }
									    }); //$.ajax
								   });
	  
						   });	  
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
							
							
							
							<div class='bigPictureWrapper'>
							  <div class='bigPicture'>
							  </div>
							</div>
							<!-- 파일업로드 css -->
							<style>
							.uploadResult {
								width: 100%;
								background-color: #f5f5f5; /*#e9ecf0*/
							}
							
							.uploadResult ul {
								display: flex;
								flex-flow: row;
								justify-content: center;
								align-items: center;
							}
							
							.uploadResult ul li {
								list-style: none;
								padding: 10px;
							}
							
							.uploadResult ul li img {
								width: 60px;
							}
							.uploadResult ul li span {
								color:white;
							}
							
							.bigPictureWrapper {
							  position: absolute;
							  display: none;
							  justify-content: center;
							  align-items: center;
							  top:0%;
							  width:100%;
							  height:100%;
							  background-color: gray; 
							  z-index: 100;
							  background:rgba(255,255,255,0.5);
							}
							
							.bigPicture {
							  position: relative;
							  display:flex;
							  justify-content: center;
							  align-items: center;
							}
							
							.bigPicture img {
								width:600px;
							}
							</style>
							
							
							<div class="form-group">
								<label class="form-label">파일 업로드</label>
								<div class="col-lg-12 col-sm-12">
									<!--
									<input type="file" class="dropify" data-height="80">
									-->
									<!--
									<input type="file" class="dropify" id="dropify" data-height="100" multiple accept="image/*"/>
									-->
									<!--
									<input type="file" class="dropify" id="dropify" data-height="100" multiple/>
									-->
									<div class="uploadDiv">
										<input type="file" class="dropify" id="dropify" name="uploadFile" data-height="100" multiple/>
									</div>
																		
									<div class="uploadResult">
										<ul>
										
										</ul>
									</div>
								</div>
							</div>

			
							<div class="form-group">
								<label class="form-label">내용</label>
								
									<textarea name="qa_cont" id="summernote" class="summernote"></textarea>
							
									<div class="card-footer">
										<div class="row">
											<div class="col">
											<!--
												<label class="custom-control custom-checkbox mb-0">
													<input type="checkbox" class="custom-control-input" name="example-checkbox1" value="option1">
													<span class="custom-control-label">비밀글</span>
												</label>
											-->	
											</div>
											<div class="col col-auto">
												<!--
												<button type="button" class="btn btn-primary waves-effect waves-light" onclick="check(this.form)">수정</button>
												-->
												<button type="submit" class="btn btn-primary waves-effect waves-light">수정</button>
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
							<h5 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold"><b>글 수정 취소</b></h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>이전 페이지로 돌아갑니다.</p>
						</div><!-- modal-body -->
						
						<div class="modal-footer">
						
							<a href="javascript:history.go(-1);" class="btn btn-primary">네</a>
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
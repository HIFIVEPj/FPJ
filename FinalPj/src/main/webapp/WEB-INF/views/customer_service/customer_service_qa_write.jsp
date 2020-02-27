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

		<!--문의 게시판 입력 폼-->
		<section class="sptb">
			<div class="row row-cards">
				<div class="col-md-6 mx-auto">
					<div class="card">
						<div class="card-header">
							<div class="card-title"><b>문의 글쓰기</b></div>
						</div>
						
						<!--
						<form method="post" action="customer_service_qa_write" name="qa_write" enctype="multipart/form-data">
						-->
						<form role="form" method="post" action="customer_service_qa_write" name="qa_write">
						
						
						<input type="hidden" name="mem_email" value="${sessionScope.email}">
						<!-- 나중에 수정해야 할 부분 -->
						<input type="hidden" name="qa_prnum" value=0>
						<input type="hidden" name="qa_lev" value=0>
						<input type="hidden" name="qa_sun" value=0>
						<!-- /나중에 수정해야 할 부분 -->
						
						<script type="text/javascript">
						   /*
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
						   */
						   
						   $(document).ready(function(e){
				   
							   var formObj = $("form[role='form']");
								  
							   $("button[type='submit']").on("click", function(e){
								    
								   
								   if(document.qa_write.qa_cate.value==''){
							    	   alert('분류를 선택해 주세요.');
							    	   document.qa_write.qa_cate.focus();
							    	   return false;
							       }
							       if(document.qa_write.qa_sub.value==''){
							    	   alert('제목을 입력해 주세요.');
							    	   document.qa_write.qa_sub.focus();
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
								    
								        
								        /*
								        if(obj.image){
								          var fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
								          str += "<li><div>";
								          str += "<span> "+ obj.fileName+"</span>";
								          str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-danger waves-effect waves-light'><i class='fa fa-times'></i></button><br>";
								          str += "<img src='/display?fileName="+fileCallPath+"'>";
								          str += "</div>";
								          str +"</li>";
								        }else{
								          var fileCallPath =  encodeURIComponent( obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);            
								            var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
								              
								          str += "<li><div>";
								          str += "<span> "+ obj.fileName+"</span>";
								          str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-danger waves-effect waves-light'><i class='fa fa-times'></i></button><br>";
								          str += "<img src='../images/attach.png'></a>";
								          str += "</div>";
								          str +"</li>";
								        }
								        
								        if(!obj.image){
									          
								          var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
								          
								          var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
								          
								          str += "<li><div><a href='/download?fileName="+fileCallPath+"'>"+"<img src='../images/attach.png'>" + " " + obj.fileName+"</a>"
								        		  +"<span data-file=\'"+fileCallPath+"\' data-type='file'> x </span>"+"</div></li>"
								        }else{
								          
								          var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
								          
								          var originPath = obj.uploadPath+"\\"+obj.uuid+"_"+obj.fileName;
								          originPath = originPath.replace(new RegExp(/\\/g),"/");
								          
								          str += "<li><a href=\"javascript:showImage(\'"+originPath+"\')\"><img src='/display?fileName="+fileCallPath+"'>" + " " + obj.fileName + "</a>"
								        		  +"<span data-file=\'"+fileCallPath+"\' data-type='image'> x </span>"+"</li>";
								        }
								        */
								        
								      	/*
								    	if(!obj.image){
									          
								          var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
								          
								          var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
								          
								          str += "<li data-path='"+obj.uploadPath+" 'data-uuid='"+obj.uuid+" 'data-filename='"+obj.fileName+" 'data-type='"+obj.image+"'><div><a href='/download?fileName="+fileCallPath+"'>"+"<img src='../images/attach.png'>" + " " + "<b>"+obj.fileName+"</b></a>&nbsp;"
								        		  +"<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button>"+"</div></li>"
								        }else{
								          
								          var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
								          
								          var originPath = obj.uploadPath+"\\"+obj.uuid+"_"+obj.fileName;
								          originPath = originPath.replace(new RegExp(/\\/g),"/");
								          
								          str += "<li data-path='"+obj.uploadPath+" 'data-uuid='"+obj.uuid+" 'data-filename='"+obj.fileName+" 'data-type='"+obj.image+"'><div><a href=\"javascript:showImage(\'"+originPath+"\')\"><img src='/display?fileName="+fileCallPath+"'>" + " " + "<b>"+obj.fileName+"</b></a>&nbsp;"
								        		  +"<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button>"+"</div></li>";
								        }
								        */
								        
								    	if(obj.image){
									       
								    	  var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
									       
								    	  /*
								          var originPath = obj.uploadPath+"\\"+obj.uuid+"_"+obj.fileName;
								          originPath = originPath.replace(new RegExp(/\\/g),"/");
								          */
								          /*
								          str += "<li data-path='"+obj.uploadPath+" 'data-uuid='"+obj.uuid+" 'data-filename='"+obj.fileName+" 'data-type='"+obj.image+"'><div><a href=\"javascript:showImage(\'"+originPath+"\')\"><img src='/display?fileName="+fileCallPath+"'>" + " " + "<b>"+obj.fileName+"</b></a>&nbsp;"
								        		  +"<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button>"+"</div></li>";	
								    	  */	
								    	  str += "<li data-path='"+obj.uploadPath+" 'data-uuid='"+obj.uuid+" 'data-filename='"+obj.fileName+" 'data-type='"+obj.image+"'><div><img src='/display?fileName="+fileCallPath+"'>" + " " + "<b>"+obj.fileName+"</b>&nbsp;"
						        		  			+"<button type='button' data-file=\'"+fileCallPath+"\' data-type='image' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button>"+"</div></li>";
								          
								        }else{
								          
								          var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+ obj.uuid +"_"+obj.fileName);
								          
								          str += "<li data-path='"+obj.uploadPath+" 'data-uuid='"+obj.uuid+" 'data-filename='"+obj.fileName+" 'data-type='"+obj.image+"'><div><img src='../images/attach.png'>" + " " + "<b>"+obj.fileName+"</b>&nbsp;"
								        		  +"<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-danger waves-effect waves-light btn-xs'><i class='fa fa-times'></i></button></div></li>";
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
								<label class="form-label"><b>분류</b></label>
								<!--
								<select class="form-control select2" data-placeholder="분류를 선택해 주세요." multiple>
								-->
								<select class="form-control custom-select select1" name="qa_cate" data-placeholder="분류를 선택해 주세요.">
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
								<label class="form-label"><b>제목</b></label>
								<input type="text" class="form-control w-100" value="" placeholder="제목을 입력해 주세요." name="qa_sub">
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
							</style>
							
							<style>
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
							}
							
							.bigPicture {
							  position: relative;
							  display:flex;
							  justify-content: center;
							  align-items: center;
							}
							</style>
							
							
							
							<div class="form-group">
								<label class="form-label"><b>파일 업로드</b></label>
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
							
							
					
							
							<!-- 파일 업로드 테스트 -->
							<!--
							<div class="form-group">
								<label class="form-label">파일 업로드</label>
								<div class="col-lg-12 col-sm-12">
							-->	
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
									<!--
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
							-->	
							<!-- /테스트 -->
							
							
							
							<div class="form-group">
								<label class="form-label"><b>내용</b></label>
								
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
												<!--
												<button type="button" class="btn btn-primary waves-effect waves-light" onclick="check(this.form)">등록</button>
												-->
												<button type="submit" class="btn btn-primary waves-effect waves-light">등록</button>
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
				
						
						
					</div>
				</div>
			</div>
		</section>			
		<!--/문의 게시판 입력 폼-->
		
		
			
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
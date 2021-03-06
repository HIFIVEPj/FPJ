<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<section>
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">마켓 수정</h1>
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
		</section>
		<!--/Sliders Section-->
<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">FreeMarket</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="market-list">프리마켓</a></li>
						<li class="breadcrumb-item active" aria-current="page">프리마켓</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->
		<!--Add posts-section-->
		<section class="sptb">
			<div class="container">
				<div class="row ">
					<div class="col-lg-8 col-md-12 col-md-12">
<!-- /////////////////////////서버로 보내는 폼 ///////////////////////////-->		
					<form name="updateForm" method="post"  enctype="multipart/form-data">		
						<input type="hidden" class="form-control" name="market_state" id="market_state"value="${market.market_state}">
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">마켓수정</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<label class="form-label text-dark">제목</label>
								 <input type="text" class="form-control" name="market_sub" value="${market.market_sub}">
								</div>			
								<div class="form-group">
									<label class="form-label text-dark">가격</label>
									<input type="text" class="form-control" name="market_price" value="${market.market_price}"> 
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
											<c:if test="${market.cate_num == 1}">
												<input type="radio" class="custom-control-input" name="cate_num" value="1" checked="">
											</c:if>
											<c:if test="${market.cate_num != 1}">
												<input type="radio" class="custom-control-input" name="cate_num" value="1">
											</c:if>
											<span class="custom-control-label text-muted">개발자 </span>
										</label>
					
										<div>
										<label class="custom-control custom-radio  mb-2">
											<c:if test="${market.cate_num == 2}">
												<input type="radio" class="custom-control-input" name="cate_num" value="2" checked="">
											</c:if>
											<c:if test="${market.cate_num != 2}">
												<input type="radio" class="custom-control-input" name="cate_num" value="2" >
											</c:if>
											<span class="custom-control-label text-muted">디자이너</span>  
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
									<!--						
										<input type="text" class="form-control" name="option3"  value="1111111">
									  -->	
									</div>
								
								</div>		
					
							
					<!-- 썸머노트 -->
	                    <textarea name="market_cont" id="summernote" class="summernote" >${market.market_cont}</textarea>     
	                     <script src="/summernote/lang/summernote-ko-KR.js"></script>
	                     <script type="text/javascript">
	                        $(document).ready(function() {$('#summernote').summernote();
	                        });
	                        
	                        $('.summernote').summernote({
	                           height: 150,
	                           placeholder: '',
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
					 			<input type="file" class="custom-file-input" name="ofname" id="file" onchange="upfile()">
								<label class="custom-file-label" id="cor_fname_label" value="">${market.market_fname}</label>
							</div>
						</div>
					
					<!--	<div class="p-2 border mb-4">
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
					  -->	
		
					</div>
					<div class="card-footer ">
					   <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#smallModal1">완료</button>
					</div>
				</div>
			</form>	
			

	<!-- small Modal   -->  
		      <div id="smallModal1" class="modal fade">
		         <div class="modal-dialog modal-sm" role="document">
		            <div class="modal-content">
		               <div class="modal-header">
		                  <!--
		                  <h5 class="tx-14 mg-b-0 tx-uppercase tx-inverse tx-bold"><b>글 삭제</b></h5>
		                  -->
		                  <div class="float-right btn btn-icon btn-danger btn-sm mt-3"><i class="fa fa-trash-o"></i></div>
		                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                     <span aria-hidden="true">&times;</span>
		                  </button>
		               </div>
		               <div class="modal-body">
		                  <p>글을 정말 수정하시겠습니까?</p>
		               </div>
		               <div class="modal-footer">
		                 <a class="btn btn-primary" style="color:white;" onclick="javascript:updateCheck();">네</a>
		                 <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
		               </div>
		            </div>
		         </div>      
		      </div>
	 <!-- /small Modal -->
<!--/↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 서버로 보내는 폼 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑-->	
					
					</div>
					
						
						<div class="col-lg-4 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">수수료율</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec  mb-0">
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i><fmt:formatNumber value="500000" pattern="#,###,###,###" /> 이하 &nbsp;<b>20%</b>
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i><fmt:formatNumber value="2000000" pattern="#,###,###,###" /> 이하 &nbsp;<b>12%</b>
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i><fmt:formatNumber value="2000000" pattern="#,###,###,###" /> 초과 &nbsp;<b>6%</b>
									</li>
									
								</ul>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!--/Add posts-section-->
<script>
	   function upfile(){
	      var filename = document.getElementById("file").value;
	      document.getElementById("cor_fname_label").innerHTML=filename;
	   }   
</script>		
		
<script>
	   function updateCheck(){
		   //alert(" updateForm.cate_num."+updateForm.cate_num.value);
		   if(updateForm.market_sub.value=="" ){
			   alert("제목을 적어주세요");
			   $('#smallModal1').modal("hide"); //닫기 
			   return false;
		   }
			if(updateForm.market_price.value==""  ){
				alert("가격을 적어주세요");
				$('#smallModal1').modal("hide"); //닫기 
				return false;
			}
			if(updateForm.market_cont.value==""  ){
				 alert("내용을 적어주세요");
				 $('#smallModal1').modal("hide"); //닫기 
				 return false;
			}
			 if(updateForm.cate_num.value == "" ){
			   alert("직종을 선택해주세요");
			   $('#smallModal1').modal("hide"); //닫기 
			   return false;
			}
		  if(updateForm.ofname.value==""){		   
			   alert("썸네일파일을 선택해주세요");
			   $('#smallModal1').modal("hide"); //닫기 
			   return false;
			   
		   }

		  //  if($("#market_state").val()==1){
          updateForm.action="market-update2?market_num=${market.market_num}";
              updateForm.submit();
     //      }
       /*if($("#market_state").val()==0){
          updateForm.action ="market-updateRefusalMarket2?market_num=${market.market_num}";
              updateForm.submit();
           }*/
	   }
</script>
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!--/footer-->
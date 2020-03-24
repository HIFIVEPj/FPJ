
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
									<h1 class="" style="margin-bottom:0rem;">마켓 등록</h1>
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
<!-- ▼▽▼▽▼▽▼▽▼▽▼▽서버로 보내는 폼 ▼▽▼▽▼▽▼▽▼▽▼▽▼▽▼▽▼▽-->		
					<form name="insertForm" method="post" action="market-insert" enctype="multipart/form-data">	
					
						<div class="card mb-lg-0">
							<div class="card-header ">
								<h3 class="card-title">마켓등록</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<label class="form-label text-dark">제목</label>
									<input type="text" class="form-control" name="market_sub">
								</div>			
								<div class="form-group">
									<label class="form-label text-dark">가격</label>
									<input type="text" class="form-control" name="market_price">
								</div>
								<div class="form-group">
									<label class="form-label text-dark">직종</label>
									<div class="d-md-flex ad-post-details">
										<label class="custom-control custom-radio mb-2 mr-4">
											<input type="radio" class="custom-control-input" name="cate_num" value="1" checked="">
											<span class="custom-control-label text-muted">개발자 </span>
										</label>
										<div>
										<label class="custom-control custom-radio  mb-2">
											<input type="radio" class="custom-control-input" name="cate_num" value="2" >
											<span class="custom-control-label text-muted">디자이너</span>
											&nbsp;&nbsp;&nbsp;
										</label>
										</div>
									</div>

								</div>		


					<!-- 썸머노트 -->
	                     <textarea name="market_cont" id="summernote" class="summernote"></textarea>     
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
								<input type="file" class="custom-file-input" name="ofname" id="file" onchange="upfile()">
								<label class="custom-file-label" id="cor_fname_label">Thumbnail Images</label>
							</div>
						</div>
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
		                  <p>마켓등록을 하시겠습니까?</p>
		               </div>
		               <div class="modal-footer">
		                 <a class="btn btn-primary" style="color:white;" onclick="javascript:insertCheck();">네</a>
		                 <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
		               </div>
		            </div>
		         </div>      
		      </div>
	 <!-- /small Modal -->
<!--▲ △▲ △▲ △▲ △▲ △▲ △서버로 보내는 폼▲ △▲ △▲ △▲ △▲ △▲ △▲ △▲ △▲ △/-->	
				
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
						<!-- 
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
						-->
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
	   function insertCheck(){
		//   alert("insertForm.cate_num."+insertForm.ofname.value);
		   if(insertForm.market_sub.value=="" ){
			   alert("제목을 적어주세요");
			   $('#smallModal1').modal("hide"); //닫기 
			   return false;
		   }
			if(insertForm.market_price.value==""  ){
				alert("가격을 적어주세요");
				$('#smallModal1').modal("hide"); //닫기 
				return false;
			}
			if(insertForm.market_cont.value==""  ){
				 alert("내용을 적어주세요");
				 $('#smallModal1').modal("hide"); //닫기 
				 return false;
			}
			 if(insertForm.cate_num.value == "" ){
			   alert("직종을 선택해주세요");
			   $('#smallModal1').modal("hide"); //닫기 
			   return false;
			}
		  if(insertForm.ofname.value==""){		   
			   alert("썸네일파일을 선택해주세요");
			   $('#smallModal1').modal("hide"); //닫기 
			   return false;   
		   }
		  alert("포스팅 검사 후 등록이 완료됩니다.(1~2일 정도 소요)");
		  insertForm.submit();
	   }
</script>		

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!--/footer-->
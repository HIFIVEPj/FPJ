
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<script>
$(document).ready(function() {
	  var v = "#" + window.location.hash.substr(1);
	  $("#mytab1 li").each(function() {
	    var href = $(this).children().first().attr("href");
	    if (href == v) $(this).addClass("active");
	    else $(this).removeClass("active");
	  });
	});

	//Whenever we click on a li, remove all "active" classes and finally add "active" to the one we clicked.
	$("#mytab1 li").on("click", function() {
	  $("#mytab1 li").each(function() {
	    $(this).removeClass("active");
	  });
	  $(this).addClass("active");
	});
</script>
<!--/header-->

		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">My Favorite Ads</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">My Dashboard</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Favorite Ads</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Breadcrumb-->

		<!--User Dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
					<div class="card">
							<div class="card-header">
								<h3 class="card-title">회원정보</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
								<c:if test="${free.free_fname eq null}">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
								</c:if>
								<c:if test = "${free.free_fname ne null}">
									<div class="profile-pic-img">
										<img src="../hifiveImages/free_thumb/${free.free_fname}" class="brround" alt="user">
									</div>
								</c:if>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class="doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash_free?mem_email=${sessionScope.email}">프리랜서</a></li>
												<li><a class="slide-item" href="freelancerProfile_list?mem_email=${sessionScope.email}">프리랜서 프로필</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite?mem_email=${sessionScope.email}">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavoriteMarket?mem_email=${sessionScope.email}">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myMarket1">나의마켓</a></li>
												<li><a class="slide-item" href="myMarket2">판매마켓</a></li>
												<li><a class="slide-item" href="myMarket3">구매마켓</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments.html"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
										</li>
										<li>
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
										</li>
									</ul>
								</div>
							</aside>
						</div>
					
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>판매마켓</b></h3>
							</div>
							<div class="card-body">
					
									
								<div class="tab-content">					
								
								
							<!-- 탭2 -->			
							<c:if test="${fn:length(mySellMarket)>0 }">
								
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th colspan="2"><b>제목</b></th>
												<th><b>가격</b></th>
												<th><b>상태</b></th>
												<th><b>판매일</b></th>
												<th><b>완료버튼</b></th>
											</tr>
										</thead>
										
									<c:forEach var="mySellMarket" items="${mySellMarket}">	
										<tbody>
										<tr>
											<td colspan="2">
												<div class="media mt-0 mb-0">
												<!-- 	<div class="card-aside-img">
														<a href="#"></a>
														<img src="../images/products/h1.png" alt="img">
													</div>
												-->													
													 <div class="media-body">
														<div class="card-item-desc ml-4 p-0 mt-2">
															<a href="market-content?market_num=${mySellMarket.market_num}" class="text-dark"><h4 class=""><b>${mySellMarket.marketPaym_pdName}</b></h4></a>
															
															<div style="padding-top:5px;">
															<span class="text-warning">
																<i class="fa fa-star"> </i>
																<i class="fa fa-star"> </i>
																<i class="fa fa-star"> </i>
																<i class="fa fa-star"> </i>
																</span>
																<i class="fa fa-star"> </i> | <i class="fa fa-eye"></i> 344<br>
															</div>
														</div>
													</div>
												</div>
											</td>
											
											<td class="font-weight-semibold fs-16">
												<fmt:formatNumber value="${mySellMarket.marketPaym_price}" pattern="#,###,###,###" /><span class="fs-16">원</span>
											</td> 
											
											
											<td>
												<a href="#" class="badge badge-secondary">진행중</a>
											</td>
											<td class="font-weight-semibold fs-16">
												${mySellMarket.marketPaym_rdate}
											</td>
											<td class="font-weight-semibold fs-16">
												<a href="javascript:void(0)" onclick="deleteCheck(${mySellMarket.marketPaym_num})"  data-toggle="modal" data-target="#smallModal1"   class="btn btn-info btn-sm text-white" data-toggle="tooltip" data-original-title="거절하기"><i class="fa fa-trash"></i></a>
												<a href="javascript:void(0)" class="btn btn-primary btn-sm text-white" data-toggle="tooltip" data-original-title="완료"><i class="fa fa-shopping-cart"></i></a>
											</td>
											</tr>
										</tbody>
									</c:forEach>
										
									</table>
	
							</c:if>
							<c:if test="${fn:length(mySellMarket)==0 }">
								<div class="tab-pane table-responsive border-top userprof-tab" id="tab2">
								</div>
							</c:if>
							<!-- 탭2 -->		
								


							<div class="card">
								<div class="card-body" style="margin:0 auto; align:center;">
									<ul class="pagination mg-b-0 page-0 ">
									<c:if test="${fn:length(myMarket)>0 }">
										<c:if test="${paging.nowPage !=1}">
											<li class="page-item">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-left"></i></a>
											</li>
											<li class="page-item">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
											</li>
										</c:if>
									</c:if>
										<c:forEach var="p" begin="${paging.startPage}" end="${paging.endPage}">
											<c:choose>
												<c:when test="${paging.nowPage == p }">
													<li class="page-item active">
														<a class="page-link" href="#">${p}</a>
													</li>
												</c:when>	
												<c:otherwise>
													<li class="page-item">
														<a class="page-link hidden-xs-down" href="myMarket?&nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p}</a>
													</li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									<c:if test="${fn:length(myMarket)>0 }">
										<c:if test="${ paging.nowPage!=paging.lastPage }">
											<li class="page-item">
												<a aria-label="Next" class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
											</li>
											<li class="page-item">
												<a aria-label="Last" class="page-link" href="#"><i class="fa fa-angle-double-right"></i></a>
											</li>
										</c:if>
									</c:if>	
									</ul>
								</div>
								<!-- pagination-wrapper -->
							</div>
		
							<!-- section-wrapper -->
						</div>
					
					</div>
				</div>
			</div>
		</section>
		<!--/User Dashboard-->
		
		
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
		                  <p>정말 거절 하시겠습니까?</p>
		               </div>
		               <div class="modal-footer">          
		                 <button class="btn btn-primary" style="color:white;" id="delete1">네</button>
		                 <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
		               </div>
		            </div>
		         </div>      
		      </div>
	 <!-- /small Modal -->		
		
		
<script>
	var data='';
	function deleteCheck(marketPay_num){
		alert(marketPay_num);
		data=marketPay_num;    	
	}
	 $('#delete1').click(function(){
		 console.log("data:data"+data);
		 $.ajax({
	           type:"GET",
	           url:"delete-marketPay?marketPay_num="+data,  
	           data: data,
	           success : function(data) {
	                 location.reload();
	           },
	           error : function(xhr, status, error) {
	                 alert("에러발생"+xhr+status+error);
	           }
	     });	
	   });	
</script>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="now" class ="java.util.Date" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
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
									<div class="profile-pic-img">
										<img src="../hifiveImages/cor_thumb/${cor.cor_fname}" class="brround" alt="user">
									</div>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class="doc-sidebar my-dash">
							<!--<aside class="app-sidebar doc-sidebar my-dash">-->
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item " href="mydash_cor?mem_email=${sessionScope.email}">기업</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite_cor">프리랜서 찜</a></li>
												<li><a class="slide-item" href="cor-myfavoriteMarket?mem_email=${sessionScope.email}">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">내 프로젝트관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="project_write?mem_email=${sessionScope.email}">프로젝트 작성하기</a></li>
												<li><a class="slide-item" href="managed_project?mem_email=${sessionScope.email}">프로젝트관리</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="payments_cor?mem_email=${sessionScope.email}"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
										</li>
										<li>
											<a class="side-menu__item" href="logout.do"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">Logout</span></a>
										</li>
									</ul>
								</div>
							</aside>
						</div>
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>내 프로젝트 관리</b></h3>
							</div>
							<div class="card-body">
							<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
											<li class=""><a href="#tab1" class="active" data-toggle="tab">작성한 프로젝트</a></li>
											<li class=""><a href="#tab2" data-toggle="tab">결제대기 프로젝트</a></li>
											<li><a href="#tab3" data-toggle="tab">모집중인 공고</a></li>
											<li><a href="#tab4" data-toggle="tab">마감된 공고</a></li>
										</ul>
									</div>
								<div class="tab-content">
								
								<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
							
								<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr >
												<th></th>
												<th><b>프로젝트</b></th>
												<th><b>회사이름</b></th>
												<th><b>급여</b></th>
												<th><b>결제상태</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
										<c:if test="${empty list}">
										<tr>
											<td colspan="6"  id="center">
												<b>등록된 프로젝트가 없습니다</b>
											</td>
										</tr>
										</c:if>
									<c:if test="${not empty list}">
									<c:forEach var="dto" items="${list}">	
											<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="${dto.pj_num}">
														<span class="custom-control-label"></span>
													</label>
												</td>
												<td>
													<div class="media mt-0 mb-0">
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="project_content?pj_num=${dto.pj_num}" class="text-dark"><h4 class="font-weight-semibold"><b>${dto.pj_sub}</b></h4></a>
																<i class="fa fa-user mr-1"></i> 
																<c:if test="${dto.type_num ==1}"><c:out value="개발" /></c:if>
																<c:if test="${dto.type_num ==2}"><c:out value="퍼블리셔" /></c:if>
																<c:if test="${dto.type_num ==3}"><c:out value="디자인" /></c:if>
																<c:if test="${dto.type_num ==4}"><c:out value="기획" /></c:if>
																<c:if test="${dto.type_num ==5}"><c:out value="기타" /></c:if>/
																
																<c:if test="${dto.pj_fgrade==0}"><c:out value="초급" /></c:if>
																<c:if test="${dto.pj_fgrade==1}"><c:out value="중급" /></c:if>
																<c:if test="${dto.pj_fgrade==2}"><c:out value="고급" /></c:if>
																
																&nbsp;|&nbsp;
																<i class="fa fa-clock-o mr-1"></i> ${dto.pj_term} 개월
																&nbsp;|&nbsp;
																<b style="text-align:right;">														
																<span class="text-dark font-weight-semibold mb-0 mt-0" style="font-size:1em;"><strong>
															<fmt:parseDate value="${dto.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
															<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
															
															<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
															<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
															<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
															<c:choose>
																<c:when test="${endDate > currentDate}">
																	D -${endDate - currentDate}
																</c:when>
																<c:otherwise>
																	마감
																</c:otherwise>
															</c:choose>
															</strong></span></b>
															</div>
														</div>
													</div>
												</td>
												<td>${cor.cor_name}</td>
												<td class="font-weight-semibold fs-16"><fmt:formatNumber value="${dto.pj_pay}" pattern="#,###,###,###" />원</td>
												<td>
													<c:if test="${dto.pj_paystatus==0}">
														<a href="#" class="badge badge-danger">
															결제대기
														</a>
													</c:if>
													<c:if test="${dto.pj_paystatus==1}">
														<a href="#" class="badge badge-primary">
															결제완료
														</a>
													</c:if>
												</td>
												<td>
													<a href="#" class="btn btn-info btn-sm text-white" data-target="#deleteModal" data-toggle="modal" data-original-title="삭제하기"><i class="fa fa-trash"></i></a>
													<c:if test="${dto.pj_paystatus==0}"> 
													<a href="project_payments?pj_num=${dto.pj_num}" class="btn btn-red btn-sm text-white" data-toggle="tooltip" data-original-title="결제하기"><i class="fa fa-credit-card"></i></a>
													</c:if>
												</td>
											</tr>
								<!-- small Modal -->   
							      <div id="deleteModal" class="modal fade">
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
							                  <p>글을 정말 삭제할까요?</p>
							               </div>
							               
							               <div class="modal-footer">
							               
							                 <a class="btn btn-primary" style="color:white;" href="project_delete?pj_num=${dto.pj_num}">네</a> 
							                  
							                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
							               </div>
							            </div>
							         </div>      
							      </div>
							      <!-- /small Modal -->
											</c:forEach>
											</c:if>
										</tbody>
									</table>
								</div>

								<div class="tab-pane  table-responsive border-top userprof-tab" id="tab2">
									<table class="table table-bordered table-hover mb-0 text-nowrap">
										<thead style="text-align:center;">
											<tr>
												<th></th>
												<th><b>프로젝트</b></th>
												<th><b>회사이름</b></th>
												<th><b>급여</b></th>
												<th><b>결제상태</b></th>
												<th><b>버튼</b></th>
											</tr>
										</thead>
										<tbody>
										<c:if test="${empty list}">
										<tr>
											<td colspan="6"  id="center">
												<b>등록된 프로젝트가 없습니다</b>
											</td>
										</tr>
										</c:if>
									<c:if test="${not empty list}">
									<c:forEach var="dto" items="${list}">
									<c:choose>				
									<c:when test="${dto.pj_paystatus==0}">
										<tr>
												<td>
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="${dto.pj_num}">
														<span class="custom-control-label"></span>
													</label>
												</td>
												<td>
													<div class="media mt-0 mb-0">
														<div class="media-body">
															<div class="card-item-desc ml-4 p-0 mt-2">
																<a href="project_content?pj_num=${dto.pj_num}" class="text-dark"><h4 class="font-weight-semibold"><b>${dto.pj_sub}</b></h4></a>
																<i class="fa fa-user mr-1"></i> 
																<c:if test="${dto.type_num ==1}"><c:out value="개발" /></c:if>
																<c:if test="${dto.type_num ==2}"><c:out value="퍼블리셔" /></c:if>
																<c:if test="${dto.type_num ==3}"><c:out value="디자인" /></c:if>
																<c:if test="${dto.type_num ==4}"><c:out value="기획" /></c:if>
																<c:if test="${dto.type_num ==5}"><c:out value="기타" /></c:if>/
																<c:if test="${dto.pj_fgrade==0}"><c:out value="초급" /></c:if>
																<c:if test="${dto.pj_fgrade==1}"><c:out value="중급" /></c:if>
																<c:if test="${dto.pj_fgrade==2}"><c:out value="고급" /></c:if>
																
																&nbsp;|&nbsp;
																<i class="fa fa-clock-o mr-1"></i> ${dto.pj_term} 개월
																&nbsp;|&nbsp;
																<b style="text-align:right;">														
																<span class="text-dark font-weight-semibold mb-0 mt-0" style="font-size:1em;"><strong>
															<fmt:parseDate value="${dto.pj_ddate}" var="PjDdate" pattern="yyyy-MM-dd"/>
															<fmt:parseNumber value="${PjDdate.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
															
															<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />
															<fmt:parseDate value="${today}" var="NowDate" pattern="yyyy-MM-dd"/>
															<fmt:parseNumber value="${NowDate.time / (1000*60*60*24)}" integerOnly="true" var="currentDate"></fmt:parseNumber>
															<c:choose>
																<c:when test="${endDate > currentDate}">
																	D -${endDate - currentDate}
																</c:when>
																<c:otherwise>
																	마감
																</c:otherwise>
															</c:choose>
															</strong></span></b>
															</div>
														</div>
													</div>
												</td>
												<td>${cor.cor_name}</td>
												<td class="font-weight-semibold fs-16"><fmt:formatNumber value="${dto.pj_pay}" pattern="#,###,###,###" />원</td>
												<td>	
													<c:if test="${dto.pj_paystatus==0}">
														<a href="#" class="badge badge-danger">
															결제대기
														</a>
													</c:if>
													<c:if test="${dto.pj_paystatus==1}">
														<a href="#" class="badge badge-primary">
															결제완료
														</a>
													</c:if>
												</td>
												<td>
													<a href="#" class="btn btn-info btn-sm text-white" data-target="#deleteModal" data-toggle="modal" data-original-title="삭제하기"><i class="fa fa-trash"></i></a>
													<c:if test="${dto.pj_paystatus==0}"> 
													<a href="project_payments?pj_num=${dto.pj_num}" class="btn btn-red btn-sm text-white" data-toggle="tooltip" data-original-title="결제하기"><i class="fa fa-credit-card"></i></a>
													</c:if>
												</td>
											</tr>
									</c:when>	
									<c:when test="${dto.pj_paystatus ne 1}">
										<tr>
											<td colspan="6"  id="center">
												<b>결제 대기 중인 프로젝트가 없습니다</b>
											</td>
										</tr>
									</c:when>
								</c:choose>
								<!-- small Modal -->   
							      <div id="deleteModal" class="modal fade">
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
							                  <p>글을 정말 삭제할까요?</p>
							               </div>
							               
							               <div class="modal-footer">
							               
							                 <a class="btn btn-primary" style="color:white;" href="project_delete?pj_num=${dto.pj_num}">네</a> 
							                  
							                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
							               </div>
							            </div>
							         </div>      
							      </div>
							      <!-- /small Modal -->
											</c:forEach>
											</c:if>
										</tbody>
									</table>
								</div>
							
							<div class="card">
								<div class="card-body" style="margin:0 auto; align:center;">
									<div class="center-block text-center">
									<ul class="pagination mb-0">
									<c:if test="${pa.nowPage != 1}">
														<!--이전 페이지 이동 -->
										<li class="page-item page-prev">
											<a class="page-link" href="managed_project?mem_email=${sessionScope.email}&nowPage=${pa.nowPage-1}&cntPerPage=${pa.cntPerPage}">prev</a>
										</li>
									</c:if>
									<!--페이지번호 -->
									<c:forEach var='p' begin="${pa.startPage}" end="${pa.endPage}">
										<c:choose>
											<c:when test="${p == pa.nowPage}">
												<li class='page-item active'><a class="page-link">${p}</a></li>
											</c:when>
											<c:when test = "${p != pa.nowPage }">
												<li class="page-item"><a class="page-link" href="managed_project?mem_email=${sessionScope.email}&nowPage=${p}&cntPerPage=${pa.cntPerPage}">${p}</a></li>
											</c:when>
										</c:choose>
										</c:forEach>
										<c:if test ="${pa.nowPage != pa.lastPage}">
											<li class="page-item page-next">
												<a class="page-link" href="managed_project?mem_email=${sessionScope.email}&nowPage=${pa.nowPage+1}&cntPerPage=${pa.cntPerPage}">Next</a>
											</li>
										</c:if>
										<!--  <div style="margin-left:553px;"><a href="write.do" class="btn btn-primary">글쓰기</a></div>-->
									</ul>
								</div>
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

<style type="text/css">
	.clickableList {cursor: pointer;}
	.oddList { background: #F2F2F2;}
	.evenList { background: #FAFAFA;}
	.activeList { width:50px; height:50px; font-weight:bold;}
</style>
<script src="../js/dateFormat.js"></script>
<script>
function page(){ 
	var reSortColors = function($div) {
		  $('tbody tr:odd td', $div).removeClass('evenList').removeClass('listtd').addClass('oddList');
		  $('tbody tr:even td', $div).removeClass('oddList').removeClass('listtd').addClass('evenList');
		 };

	 $('div.paginated').each(function() {
	  var pagesu = 6;  //페이지 번호 갯수
	  var currentPage = 0;
	  var numPerPage = 6;  //목록의 수
	  var $div = $(this);    
	  
	  //length로 원래 리스트의 전체길이구함
	  var numRows = $div.find('tbody tr').length;
	  //Math.ceil를 이용하여 반올림
	  var numPages = Math.ceil(numRows / numPerPage);
	  //리스트가 없으면 종료
	  if (numPages==0) return;
	  //pager라는 클래스의 div엘리먼트 작성
	  var $pager = $('<td align="center" id="remo" colspan="10"><div class="pager"></div></td>');
	  
	  var nowp = currentPage;
	  var endp = nowp+10;
	  
	  //페이지를 클릭하면 다시 셋팅
	  $div.bind('repaginate', function() {
	  //기본적으로 모두 감춘다, 현재페이지+1 곱하기 현재페이지까지 보여준다
	  
	   $div.find('tbody tr').hide().slice(currentPage * numPerPage, (currentPage + 1) * numPerPage).show();
	   $("#remo").html("");
	   
	   if (numPages > 1) {     // 한페이지 이상이면
	    if (currentPage < 3 && numPages-currentPage >= 3) {   // 현재 5p 이하이면
	     nowp = 0;     // 1부터 
	     endp = pagesu;    // 10까지
	    }else{
	     nowp = currentPage -3;  // 6넘어가면 2부터 찍고
	     endp = nowp+pagesu;   // 10까지
	     pi = 1;
	    }
	    
	    if (numPages < endp) {   // 10페이지가 안되면
	     endp = numPages;   // 마지막페이지를 갯수 만큼
	     nowp = numPages-pagesu;  // 시작페이지를   갯수 -10
	    }
	    if (nowp < 1) {     // 시작이 음수 or 0 이면
	     nowp = 0;     // 1페이지부터 시작
	    }
	   }else{       // 한페이지 이하이면
	    nowp = 0;      // 한번만 페이징 생성
	    endp = numPages;
	   }
	   // [처음]
	   $('<br /><span class="page-number" cursor: "pointer">[처음]</span>').bind('click', {newPage: page},function(event) {
	          currentPage = 0;   
	          $div.trigger('repaginate');  
	          $($(".page-number")[2]).addClass('activeList').siblings().removeClass('activeList');
	      }).appendTo($pager).addClass('clickableList');
	    // [이전]
	      $('<span class="page-number" cursor: "pointer">&nbsp;&nbsp;&nbsp;[이전]&nbsp;</span>').bind('click', {newPage: page},function(event) {
	          if(currentPage == 0) return; 
	          currentPage = currentPage-1;
	    $div.trigger('repaginate'); 
	    $($(".page-number")[(currentPage-nowp)+2]).addClass('activeList').siblings().removeClass('activeList');
	   }).appendTo($pager).addClass('clickableList');
	    // [1,2,3,4,5,6,7,8]
	   for (var page = nowp ; page < endp; page++) {
	    $('<span class="page-number" cursor: "pointer" style="margin-left: 8px;"></span>').text(page + 1).bind('click', {newPage: page}, function(event) {
	     currentPage = event.data['newPage'];
	     $div.trigger('repaginate');
	     $($(".page-number")[(currentPage-nowp)+2]).addClass('activeList').siblings().removeClass('activeList');
	     }).appendTo($pager).addClass('clickableList');
	   } 
	    // [다음]
	      $('<span class="page-number" cursor: "pointer">&nbsp;&nbsp;&nbsp;[다음]&nbsp;</span>').bind('click', {newPage: page},function(event) {
	    if(currentPage == numPages-1) return;
	        currentPage = currentPage+1;
	    $div.trigger('repaginate'); 
	     $($(".page-number")[(currentPage-nowp)+2]).addClass('activeList').siblings().removeClass('activeList');
	   }).appendTo($pager).addClass('clickableList');
	    // [끝]
	   $('<span class="page-number" cursor: "pointer">&nbsp;[끝]</span>').bind('click', {newPage: page},function(event) {
	           currentPage = numPages-1;
	           $div.trigger('repaginate');
	           $($(".page-number")[endp-nowp+1]).addClass('activeList').siblings().removeClass('activeList');
	   }).appendTo($pager).addClass('clickableList');
	     
	     $($(".page-number")[2]).addClass('activeList');
	     reSortColors($div);
	  });
	   $pager.insertAfter($div).find('span.page-number:first').next().next().addClass('activeList');   
	   $pager.appendTo($div);
	   $div.trigger('repaginate');
	 });
	}

function free_list(pj_num){
	var values = [];
	$.ajax({
		type:"GET",
		url:"<c:url value='appp_pj_freeList' />",
		dataType:"json",
		data:"pj_num="+pj_num,
		cahche:false,
		headers: { "cache-control": "no-cache" },
		success:function(data){
			var temp="<thead><tr><th class='listth' style='width:10px;' ></th>"+
				"<th class='listth' style='width:200px; font-weight:bold; font-size:14px; text-align:center; line-height: 40px;' >프로필 제목</th>"+
				"<th class='listth' style='width:160px; font-weight:bold; font-size:14px; text-align:center; ' >지원자 이메일</th>"+
				"<th class='listth' style='width:100px; font-weight:bold; font-size:14px;text-align:center; ' >업무 가능일</th>"+
				"<th class='listth' style='width:100px; font-weight:bold; font-size:14px;text-align:center; ' >지원일</th>"+
				"<th class='listth' style='width:100px; font-weight:bold; font-size:14px;text-align:center; ' >버튼</th></tr></thead>"
			for(var i=0 in data){
				for(var j=0 in data[i].freelancerprofile){
					var apppstatus= data[i].applied_project[j].appp_status;
					var apppdate = format(data[i].applied_project[j].appp_date, 'yyyy/MM/dd');
					var startTask = format(data[i].freelancerprofile[j].pro_start, 'yyyy/MM/dd');
					//alert(apppstatus);
					//alert(data[i].mem_email+", "+data[i].freelancerprofile[j].profile_sub+ " , "+ data[i].applied_project[j].appp_date);
					//alert(data[i].free_code);
					temp += '<tr> <td class="listtd"></td>'+
					'<td class="listtd" style="height:40px; text-align:center;"> <a href="freelancercontent?free_code='+data[i].free_code+'" class="text-dark font-weight-semibold" target="_blank">' 
							+data[i].freelancerprofile[j].profile_sub+'</a></td>' +
					'<td class="listtd"  style="height:50px; text-align:center;">' +data[i].mem_email+'</td>' +
					'<td class="listtd"  style="height:40px; text-align:center;">' +startTask+'</td>' +
					'<td class="listtd"  style="height:40px; text-align:center;">' +apppdate+'</td>' +
					'<td class="listtd"  style="height:40px; text-align:center;" id="selectplace'+data[i].freelancerprofile[j].pro_num+'">'
					if(apppstatus===1){
						temp +='<a class="btn btn-warning" style="color:white; height:30px; line-height: 16px;" href="javascript:void(0)">완료</a> </td></tr>';
					}else{
						temp +='<a class="btn btn-primary" style="color:white; height:30px; line-height: 16px;" href="javascript:void(0)" id="selectfree'+data[i].freelancerprofile[j].pro_num+'" onclick="selectf('+data[i].freelancerprofile[j].pro_num+','+pj_num+')">'
						+'선택</a> </td></tr>';
					}
				}													
			}
			$("#tbl").html(temp);	
			page();
			$("#applyList").modal();
		},
		error: function(data){
			var data1 = data;
			alert("에러발생");
			alert("data: "+data);
		}
	});
	
}
function deletePj(pj_num){
	$("#deleteYes").attr("href","project_delete?pj_num="+pj_num);
	$("#deleteModal").modal("show");
}
function selectf(pro_num,pj_num){
	$("#applyList").modal("hide");
	$("#select").attr("onclick","selectDone("+pro_num+','+pj_num+")");
	$("#selectModal").modal("show");
}
function selectDone(pro_num,pj_num){
	$("#selectModal").modal("hide");
	$.ajax({
		type:"get",
		url:"<c:url value='select_free_project' />",
		data:"pro_num="+pro_num+"&pj_num="+pj_num,
		dataType:"json",
		success:function(data){
			$("#selectfree"+pro_num).remove();
			$("#selectplace"+pro_num).append('<a class="btn btn-warning" style="color:white; height:30px; line-height: 16px;" href="javascript:void(0)">완료</a>');
			if(data==1){
				$("#includeING"+pj_num).remove();
				$("#pj_status"+pj_num).append('<a href="javascript:void(0)" class="badge badge-secondary" id="includeEND'+pj_num+'">마감</a>');
				$("#applyList").modal("show");
			}else{$("#applyList").modal("show");}
			
		},
		error:function(data){
			alert('에러');
		}
	});
}
function end(){
	alert("이미 선택한 프리랜서임");
}
</script>
>>>>>>> cc09c192e01534b826e9dac2490799fd21c6a9d8:FinalPj/src/main/webapp/WEB-INF/views/corporation/managed_project.jsp
		<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
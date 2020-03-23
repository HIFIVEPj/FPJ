
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<section>
			<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">프로필 보기</h1>
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
		
		</section>
		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">Freelacer Profile</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">문의하기</li>
					</ol>
				</div>
			</div>
		</div>
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
												<li><a class="slide-item" href="mydash_free">프리랜서</a></li>
												<li><a class="slide-item" href="freelancerProfile_list">프리랜서 프로필</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="myNotification"><i class="side-menu__icon si si-bell"></i><span class="side-menu__label">새로 온 알림</span></a>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavoriteMarket">마켓 찜</a></li>
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
											<a class="side-menu__item" href="payments"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
								<h3 class="card-title">프로필 등록하기</h3>
							</div>
							
					<div class="card-body">
						<div class="card-body">
						<div id="profile-log-switch">
							<div class="fade show active " >
								<div class="table-responsive border ">
									<table class="table row table-borderless w-100 m-0 ">
										<tbody class="col-lg-12 col-xl-6 p-0">
										
										
											<tr>
											
												<td><strong>이름 :</strong> ${content[0].free_name}</td>
											</tr>
											
													<tr><td><strong>직종 : </strong>
											<c:forEach  var="typenum" items="${content2}" varStatus="status" begin="0" end="0">	
												${typenum.type_name}
											</tr>
											</c:forEach>
											
											<tr>
												<td><strong>주소 : </strong>${content[0].freelancerprofile[0].pro_addr}</td>
											</tr>
											<tr>
												<td><strong>Email : </strong>${content[0].mem_email}</td>
											</tr>
										
											<tr>
												<td><strong>최종학력 : </strong>${content[0].freelancerprofile[0].pro_edu}</td>
											</tr>
											
											<tr>
												<td><strong>선호근무형태 : </strong>
												<c:choose> 
													<c:when test="${content[0].freelancerprofile[0].pro_place eq 0}">
														비상주
													</c:when>
													<c:when test="${content[0].freelancerprofile[0].pro_place eq 1}">
														상주
													</c:when>
													<c:when test="${content[0].freelancerprofile[0].pro_place eq 2}">
														반상주
													</c:when>
													<c:otherwise>
														상관없음
													</c:otherwise>
												</c:choose>
												</td>
											</tr>
							
											
										</tbody>
										
										<tbody class="col-lg-12 col-xl-6 p-0">
											
											<tr><td><strong>경력 : </strong>${content2[0].freelancerprofile[0].pro_exp}&nbsp;년</td>
									
											<tr>
												<td><strong>사용기술 : </strong>
											<c:forEach  var="key" items="${content3}" varStatus="status" begin="0" end="2">	
											<c:forEach  var="keyname" items="${key.keyword}" varStatus="status">	
												 ${keyname.key_name} &nbsp; 
											</c:forEach>
											</c:forEach>
												</td>
											</tr>
											
											<c:forEach  var="contentdata" items="${content}" varStatus="status">
											<c:forEach  var="place" items="${contentdata.freelancerprofile}" varStatus="status">
												<tr>
													<td><strong>업무가능지역 : </strong>${place.pro_workplace}</td>
												</tr>
											</c:forEach>
											</c:forEach>
											
											<tr>
												<td><strong>연락처 : </strong>${tel[0].free_tel}</td>
											</tr>
											
											<tr><td><strong>현재 근무가능여부 : </strong>
											<c:if test ="${content[0].freelancerprofile[0].pro_ox == 'on'}">가능</c:if>
											<c:if test ="${content[0].freelancerprofile[0].pro_ox == 'off'}">불가능</c:if>
											
											<tr><td><strong>업무 가능일 : </strong>${content[0].freelancerprofile[0].pro_start}</td>
										
										
									
										</tbody>
									</table>
								</div>
								<div class="row mt-5 profie-img">
									<div class="col-md-12">
										<div class="media-heading">
										<h5><strong>자기소개</strong></h5>
									</div>
									<c:forEach  var="contentdata" items="${content}" varStatus="status">
										<c:forEach  var="cv" items="${contentdata.freelancerprofile}" varStatus="status">
									<p>${cv.pro_cv}</p>					
										</c:forEach>
									</c:forEach>
									</div>
									
							<!-- 	<div class="col-md-12">			
										<div class="media-heading">
										<br/><br/>
										<h5><strong>첨부파일</strong></h5>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table card-table table-vcenter border text-nowrap">
												<thead>
													<tr>
														<th>프로젝트명</th>
														<th>등록일</th>
														<th>파일</th>														
													</tr>
												</thead>
												<tbody>
												
													<tr>
													<c:forEach  var="content" items="${content4}" varStatus="status">
													<c:forEach  var="name" items="${content.project}" varStatus="status">
														<tr><td><a href="store.html" class="text-inherit">${name.pj_sub}</a></td><td>
														<fmt:formatDate value="${name.pj_rdate}" pattern="yyyy.MM.dd"></fmt:formatDate></td>
													</c:forEach>
													</c:forEach>



													   				
                           
                                   	<c:set var="doneLoop" value="true" />					
                                   	<c:choose>
                                   	   <c:when test="${empty file_name}">
									   </c:when>
											
										<c:otherwise>
											<c:forEach var="file" items="${file_name}">
													<c:if test="${file.pro_num eq freelancer.pro_num && doneLoop}">	
														<c:set var="doneLoop" value="false" />		
													</c:if>	
																				
											</c:forEach>   
											 	
										</c:otherwise>
									</c:choose>
									
									<c:choose>
									    <c:when test="${!doneLoop}">									   
									         <td><i class="fa fa-save"></i><a href="#">&nbsp;</a>${file_name[0].profile_ofname}</td>									     
									    </c:when>
									    
									    <c:otherwise>
									         <td colspan="3"><i class="fa fa-save"></i>&nbsp;등록된 파일이 없습니다.</td>
									    </c:otherwise>
									</c:choose>
									
										</tr></tr>
													
										 			<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>										

													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>12 July 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>
													</tr>
													<tr>
														<td><a href="store.html" class="text-inherit">Untrammelled prevents</a></td>
														<td>14 June 2019</td>
														<td><a href="#"><i class="fa fa-save"></i>파일</a></td>													
													</tr>												
												</tbody>
											</table>
										</div>
									</div>
								
									</div>-->
								</div>
							</div>
						</div>
							</div>
							<div class="card-footer" align="right">
								<a href="freelancerMyprofile_change?pro_num=${content2.get(0).freelancerprofile.get(0).pro_num}" class="btn btn-primary icons">수정하기</a>
								
								<a href='freelancerProfile_delete?pro_num=${content2.get(0).freelancerprofile.get(0).pro_num}' class="btn btn-secondary icons">삭제하기</a>		
								
								<a href="freelancerProfile_list" class="btn btn-primary icons">목록</a>				
							</div>
						
						<!-- 	<div class="card-footer" align="right">
								<div class="icons">
									<a href="employer-list-right" class="btn btn-secondary icons">목록</a>
								</div>
							</div> -->	
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/User Dashboard-->
<!-- delete Modal -->   
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
                  <p>프로필을 정말 삭제할까요?</p>
               </div>
               <div class="modal-footer">
               <a href='freelancerProfile_delete?pro_num${content2.get(0).freelancerprofile.get(0).pro_num}' class="btn btn-primary" style="color:white;">네</a>	
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
               </div>
            </div>
         </div>      
      </div>
<!-- /delete Modal -->
<!-- edit Modal -->   
      <div id="editModal" class="modal fade">
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
                  <p>프로필을 수정할까요?</p>
               </div>
               <div class="modal-footer">
              <a href="freelancerMyprofile_change?pro_num=${content2.get(0).freelancerprofile.get(0).pro_num}" class="btn btn-primary">네</a>	
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
               </div>
            </div>
         </div>      
      </div>
<!-- /edit Modal -->
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!--/footer-->
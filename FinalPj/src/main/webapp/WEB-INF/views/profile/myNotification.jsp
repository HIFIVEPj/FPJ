
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
									<h1 class="" style="margin-bottom:0rem;">새로 온 알림</h1>
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
		
			</div>
		</section>
		<!--Breadcrumb-->
		<div class="bg-white border-bottom">
			<div class="container">
				<div class="page-header">
					<h4 class="page-title">Freelacer Profile</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="mydash_free">마이페이지</a></li>
						<li class="breadcrumb-item active" aria-current="page">새로 온 알림</li>
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
								<c:if test="${free.free_fname == null}">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
								</c:if>
								<c:if test = "${free.free_fname != null}">
									<div class="profile-pic-img">
									   
										<img src="../hifiveImages/cor_thumb/${free.free_fname}" class="brround" alt="user">
									 <!--	
										<img src="/home/ubuntu/hifive/hifiveImages/free_thumb/${free.free_fname}" class="brround" alt="user">
									-->
									</div>
								</c:if>
									<a href="#" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
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
								<h3 class="card-title">새로 온 알림</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive border-top">
									<table class="table table-bordered table-hover text-nowrap">
										<thead class="text-center">
											<tr>
												<th>종류</th>
												<th>내용</th>
												<th>알림 온 날짜</th>
												<th>버튼</th>
											</tr>
										</thead>
										<tbody>
										<c:if test ="${empty list}">
											<tr>
												<td colspan="4" class="text-primary" style="text-align: center;">새로 온 알람이 없습니다.</td>
											</tr>
										</c:if>
										<c:if test="${not empty list}">
											<c:forEach var="dto" items="${list}">
											<tr>
											<c:if test="${dto.not_cate eq 'market'}">
												<td class="text-primary"><b>마켓 상품 구매자</b></td>
											</c:if>
												<td><a href="myMarket2">${dto.not_message}</a></td>
												<td>${dto.not_datetime}</td>
									
												<td>
													<a href="confirm_Notification?not_num=${dto.not_num}" class="badge badge-primary">확인하기</a>
												</td>
											</tr>
											</c:forEach>
										</c:if>
										</tbody>
									</table>
								</div>
							</div>
						</div>
	
		</section>
		<!--/User Dashboard-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<<<<<<< HEAD
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
>>>>>>> 66928d0945675f40d16aa344255e94d26080ed14
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
									<h1 class="" style="margin-bottom:0rem;">찾아오시는 길</h1>
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
					<h4 class="page-title">찾아오시는 길</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">찾아오시는 길</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Login-Section-->
		<section class="sptb">
			<div class="container">
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-12">
								<div class="card">
									<div class="card-header">
										<div class="card-title">약도</div>

									</div>
									<div class="card-body">

									
									
									
									
									<!-- * 카카오맵 - 지도퍼가기 -->
									<!-- 1. 지도 노드 -->
									
									<div id="daumRoughmapContainer1581619832966" class="root_daum_roughmap root_daum_roughmap_landing" style="margin:0; width:100%;"></div>
									
									<!--
										2. 설치 스크립트
										* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
									-->
									
									
									<!-- 3. 실행 스크립트 -->
									<script>
										new daum.roughmap.Lander({
											"timestamp" : "1581619832966",
											"key" : "x2fu",
											//"mapWidth" : "1120",
											"mapHeight" : "400"
										}).render();
									</script>
									
									
									&nbsp;&nbsp;&nbsp;&nbsp;<p><i class="fa fa-map-marker"></i>&nbsp;서울특별시 마포구 백범로 23 구프라자 3층
									&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-subway"></i>&nbsp;지하철 2호선 신촌역 6번출구 / 경의중앙선 서강대역 1번출구 (도보 3분)
									&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-volume-control-phone"></i>&nbsp;02-707-1480</p>
									
									</div>
									
									
									
									<div class="container">
										<div class="row">
											<div class="col-lg-4  col-md-12 mx-auto d-block">
												<div class="card mb-0">
													<div class="card-header">
														<div class="card-title">문의하기</div>
													</div>
													<div class="card-body">
														<div class="form-group">
															<input type="text" class="form-control" id="name1" placeholder="이름">
														</div>
														<div class="form-group">
															<input type="email" class="form-control" id="email" placeholder="이메일">
														</div>
														<div class="form-group">
															<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="메세지"></textarea>
														</div>
														
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input">
															<span class="custom-control-label text-dark"><a href="javascript:void(window.open('customer_service_terms_of_personal_info', '개인정보 취급방침', 'left='+(screen.availWidth-700)/2+',top='+(screen.availHeight-600)/2+', width=700px,height=600px'))" class="color-hover-sign"><span style="text-decoration:underline;">개인정보 취급방침</span></a>에 동의합니다.</span>&nbsp;<span style="color:red;">(필수)</span>
														</label>
														
														
														<a href="#" class="btn btn-primary" data-toggle="tooltip" data-placement="left" title="공사중">보내기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<br/>
									
									
									
									
									
									<!--
									<div class="card-footer">
										<label class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
											<span class="custom-control-label">상기 약관에 동의합니다.</span>
										</label>
									</div>
									-->
								</div>
								
							</div>
						</div>
				</div>
			</section>
			<!--/Login-Section-->
			
			<!--Statistics-->
		<section class="sptb bg-white">
			<div class="container">
				<div class="section-title center-block text-center">
					<h1>하이파이브</h1>
					<p>당신이 원하는 그 가치, 바로 이 곳에 있습니다.</p>
				</div>
				<div class="support">
					<div class="row text-white">
						<div class="col-xl-4 col-lg-12 col-md-12">
							<div class="support-service bg-primary br-2 mb-4 mb-xl-0">
								<i class="fa fa-phone"></i>
								<h6>02-707-1480</h6>
								<P>무료 지원</P>
							</div>
						</div>
						<div class="col-xl-4 col-lg-12 col-md-12">
							<div class="support-service bg-secondary br-2 mb-4 mb-xl-0" style="background-color:#e8564a;">
								<i class="fa fa-clock-o"></i>
								<h6>월-금 (09:30-18:20)</h6>
								<p>근무 시간</p>
							</div>
						</div>
						<div class="col-xl-4 col-lg-12  col-md-12">
							<div class="support-service bg-warning br-2">
								<i class="fa fa-envelope-o"></i>
								<h6>baramoss420@gmail.com</h6>
								<p>문의 환영</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Statistics-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<<<<<<< HEAD

=======
>>>>>>> 66928d0945675f40d16aa344255e94d26080ed14
<!--/footer-->

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
									<h1 class="" style="margin-bottom:0rem;">계좌정보</h1>
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
					<h4 class="page-title">Corporation Profile</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="mydash_cor">마이페이지</a></li>
						<li class="breadcrumb-item active" aria-current="page">계좌정보</li>
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
								<c:if test="${cor.cor_fname eq ''}">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
								</c:if>
								<c:if test = "${cor.cor_fname ne '' }">
									<div class="profile-pic-img">
										<img src="../hifiveImages/cor_thumb/${cor.cor_fname}" class="brround" alt="user">
									</div>
								</c:if>
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
												<li><a class="slide-item " href="mydash_cor">기업</a></li>
											</ul>
										</li>
										<li>
											<a class="side-menu__item" href="myNotification_cor"><i class="side-menu__icon si si-bell"></i><span class="side-menu__label">내게 온 알림</span></a>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite_cor">프리랜서 찜</a></li>
												<li><a class="slide-item" href="cor-myfavoriteMarket">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">내 프로젝트관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="project_write">프로젝트 작성하기</a></li>
												<li><a class="slide-item" href="managed_project">프로젝트관리</a></li>
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
						<div class="card">
							<div class="card-header">
								<h3 class="card-title"><b>계좌정보</b></h3>
							</div>
							<div class="card-body">
								<div class="card-pay">
									<ul class="tabs-menu nav">
										<li class=""><a href="#tab1" class="active" data-toggle="tab"><i class="fa fa-credit-card"></i> 계좌등록</a></li>
										<c:if test="${!empty coracct}"><li><a href="#tab2" data-toggle="tab" class=""><i class="fa fa-university"></i> 내 계좌정보</a></li></c:if>
									</ul>
									<div class="tab-content">
									
										<div class="tab-pane active" id="tab1">
										
										<c:if test ="${empty coracct}">
										<form name="coracct" action="addCorAccount" method="post">
										</c:if>
										<c:if test="${!empty coracct}">
										<form name="coracct" action="editCorAccount" method="post">
										</c:if>
										<input type="hidden" value="${cor.cor_code}" name="cor_code">
										<div class="row">
										<div class = "col-sm-5 col-md-5">
										
										<div class="form-group">
												<label class="form-label">계좌번호</label>
												<input type="text" class="form-control" name="corac_acct" id="account" placeholder="-빼고 입력하세요">
											</div>
											</div>
											<div class = "col-sm-3 col-md-3">
											<div class="form-group">
												<label class="form-label">은행</label>
													<select class="form-control" name="corac_bank" id="code">
														<option selected> </option>
														<option value="003">기업은행</option>
														<option value="004">국민은행</option>
														<option value="089">케이뱅크</option>
														<option value="088">신한은행</option>
														<option value="020">우리은행</option>
														<option value="090">카카오뱅크</option>
														<option value="035">제주은행</option>
														<option value="023">SC제일은행</option>
														<option value="011">농협</option>
														<option value="048">신협</option>
														<option value="071">우체국</option>
													</select>
											</div>
											</div>
											<div class = "col-sm-2 col-md-2">
												<div class="form-group">
													<label class="form-label">예금주</label>
													<input type="text" class="form-control" id="holder" name="corac_holder" readonly>
												</div>
											</div>
											<div class = "col-sm-1 col-md-1">
												<div class="form-group">
													<label class="form-label">&nbsp;</label>
													<a href="javascript:void(0)" class="btn btn-primary" onclick="check();">계좌확인</a>
												</div>
											</div>
											</div>
											<c:if test="${empty coracct}">
											<div class="col-md-12">
												<div class="card-footer" style="text-align:center;">
													<button type="button" onclick="add()" class="btn btn-primary">등록</button>
												</div>
											</div>
											</c:if>
											<c:if test="${!empty coracct}">
											<div class="col-md-12">
												<div class="card-footer" style="text-align:center;">
													<button type="button" onclick="edit()" class="btn btn-primary">수정</button>
												</div>
											</div>
											</c:if>
											</form>
											<script>
											<!--/Breadcrumb-->
											function check(){
												var bank_num=$("#account").val();
												var bank_code=$("#code").val();
												$.ajax({
													type:"GET",
													url:"<c:url value='payments_bankholder' />",
													data:"bank_code="+bank_code+"&bank_num="+bank_num,
													dataType:"json",
													success:function(data){
														if(data == -1) alert("없는 계좌입니다. 계좌를 확인하세요");
														else {
															$("#holder").attr("value",data);
														}
													},
													error:function(data){
														alert(data);
													}
												});
											}
											$("documnet").ready(function(){
												var bank = "${coracct.corac_bank}";
												$("#selectBANK").val(bank);
											});
											
											function add(){
												var account = coracct.corac_holder.value;

												if(account==""){
													alert("계좌 확인 후 등록해주세요");
													return;
												}
												coracct.submit();
											}
											function edit(){
												var account = coracct.corac_holder.value;

												if(account==""){
													alert("계좌 확인 후 등록해주세요");
													return;
												}
												coracct.submit();
											}
											</script>
											
										</div>
										<c:choose>
										<c:when test="${empty coracct}">
										<div class="tab-pane" id="tab2">
											<div class="row">
											<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">예금주</label>
												<input type="text" class="form-control" value="" readonly>
											</div>
											</div>
											<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">은행</label>
												<input type="text" class="form-control" value="" readonly>
											</div>
											</div>
											<div class = "col-sm-12 col-md-12">
											<div class="form-group">
												<label class="form-label">계좌번호</label>
												<input type="text" class="form-control" value="" readonly>
											</div>
											</div>
										</div>
									</div>
									</c:when>
									<c:otherwise>
									<div class="tab-pane" id="tab2">
											<div class="row">
											<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">예금주</label>
												<input type="text" class="form-control" value="${coracct.corac_holder}" readonly>
											</div>
											</div>
											<div class = "col-sm-6 col-md-6">
											<div class="form-group">
												<label class="form-label">은행</label>
												<select class="form-control" name="corac_bank" id="selectBANK" disabled>
														<option > </option>
														<option value="003">기업은행</option>
														<option value="004">국민은행</option>
														<option value="089">케이뱅크</option>
														<option value="088">신한은행</option>
														<option value="020">우리은행</option>
														<option value="090">카카오뱅크</option>
														<option value="035">제주은행</option>
														<option value="023">SC제일은행</option>
														<option value="011">농협</option>
														<option value="048">신협</option>
														<option value="071">우체국</option>
													</select>
											</div>
											</div>
											<div class = "col-sm-12 col-md-12">
											<div class="form-group">
												<label class="form-label">계좌번호</label>
												<input type="text" class="form-control" value="${coracct.corac_acct}" readonly>
											</div>
											</div>
										</div>
									</div>
									</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</section>
		<!--/User dashboard-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
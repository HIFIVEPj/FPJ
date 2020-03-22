<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

<c:choose>
<c:when test="${empty mydash}">
		<script>
			function check(){
				 if(input_free.free_tel.value==""){
		 				alert("연락처는 필수 입력 사항입니다.");
		 				return;
		 			}
				input_free.submit();
			}
			function notice(){
				alert("연락처를 등록하셔야 프로필을 작성하실 수 있습니다.");
			}
		</script>
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
									<h1 class="" style="margin-bottom:0rem;">마이대쉬</h1>
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
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<a href="javascript:void(0)" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">${sessionScope.name}</h4></a>
								</div>
							</div>
							<aside class="doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash_free?mem_email=${sessionScope.email}">프리랜서</a></li>
											</ul>
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
								<h3 class="card-title"><b>회원정보등록</b></h3>
							</div>
							<form name="input_free" method="post" action="mydash_free_insert" enctype="multiPART/form-data">
							<div class="card-body">
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">성명</label>
											<input type="text" class="form-control" value="${sessionScope.name}" name="free_name" readonly >
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">이메일</label>
											<input type="email" class="form-control"  name="mem_email"  value="${sessionScope.email}" readonly>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">비밀번호</label>
											<input type="password" class="form-control" placeholder="비밀번호">
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">비밀번호 확인</label>
											<input type="password" class="form-control" placeholder="비밀번호 확인">
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">연락처</label>
											<input type="text" class="form-control" name="free_tel" placeholder="연락처를 입력해주세요">
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">계좌 등록여부</label>
											<input type="text" class="form-control" value="미등록" readonly>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">개인활동점수</label>
											<input type="text" class="form-control" value="0" readonly>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">개인활동등급</label>
											&nbsp;<img src="../images/photos/bronze100.png" alt="브"  width="13%">&nbsp; <b>Bronze</b>
										</div>
									</div>

									<!--  
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">가입일</label>
											<input type="text" class="form-control" value="2019-09-09" readonly>
										</div>
									</div>
									-->
									<div class="col-md-12">
										<div class="form-group mb-0">
											<label class="form-label">프로필 이미지 등록</label>
											<div class="custom-file">
												<input type="file" class="custom-file-input" name="fileName" id="file" onchange="upfile()" accept=".gif, .jpg, .png">
												<label class="custom-file-label" id="fileName_label"></label>
											</div>
										</div>
									</div>
								</div>
							</div>
								<div class="col-md-12">
									<div class="card-footer" style="text-align:center;">
										<button type="submit" class="btn btn-primary" id="edit_ok">등록</button>
										<a href="javascript:void(0)" class="btn btn-primary" id="edit_update" onclick="notice()"><span>프로필 쓰러가기</span></a>
									</div>
								</div>
								</form>						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	<script>
		function upfile(){
			var filename = document.getElementById("file").value;
			document.getElementById("fileName_label").innerHTML=filename;
		}	
	</script>
		<!--/User Dashboard-->
</c:when>
<c:otherwise>
		<script>
			function check(){
				 if(update_free.free_tel.value==""){
		 				alert("연락처는 필수 입력 사항입니다.");
		 				return;
		 			}
				 update_free.submit();
			}
			function writeProfile(){
				location.href="freelancerProfile_list?mem_email=${sessionScope.email}"
			}
		</script>
		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">My Page</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Page</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--Breadcrumb-->
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
								<c:if test="${mydash.free_fname eq null}">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
								</c:if>
								<c:if test = "${mydash.free_fname ne null}">
									<div class="profile-pic-img">
										
										<img src="../hifiveImages/free_thumb/${mydash.free_fname}" class="brround" alt="user">
										<!--
										<img src="/home/ubuntu/hifive/hifiveImages/free_thumb/${mydash.free_fname}" class="brround" alt="user">
										-->
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
											<a class="side-menu__item" href="myNotification_cor"><i class="side-menu__icon si si-bell"></i><span class="side-menu__label">새로 온 알림</span></a>
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
											<a class="side-menu__item" href="payment"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
								<h3 class="card-title"><b>회원정보</b></h3>
							</div>
							<form name="update_free" method="post" action="mydash_free_update" enctype="multiPART/form-data">
							<div class="card-body">
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">성명</label>
											<input type="text" class="form-control" value="${mydash.free_name}"  name="free_name" readonly >
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">이메일</label>
											<input type="email" class="form-control" value="${mydash.mem_email}" name= "mem_email" readonly>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">비밀번호</label>
											<input type="password" class="form-control" placeholder="비밀번호">
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">비밀번호 확인</label>
											<input type="password" class="form-control" placeholder="비밀번호 확인">
										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">연락처</label>
											<input type="text" class="form-control" name="free_tel" value="${mydash.free_tel}" placeholder="연락처를 입력해주세요">
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">계좌 등록여부</label>
											<c:if test="${mydash.free_acctox == 0}">
												<input type="text" class="form-control" value="미등록" readonly>
											</c:if>
											<c:if test="${mydash.free_acctox == 1}">
												<input type="text" class="form-control" value="등록" readonly>
											</c:if>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">개인활동점수</label>
											<input type="text" class="form-control" value="${mydash.free_point}" readonly>
										</div>
									</div>
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">개인활동등급</label>
											<c:if test="${mydash.free_level==0}">
												&nbsp;<img src="../images/photos/bronze100.png" alt="브"  width="10%">&nbsp; <b>Bronze</b>
											</c:if> 
											<c:if test="${mydash.free_level==1}">
												&nbsp; <img src="../images/photos/silver100.png" alt="실" width="10%"> &nbsp; <b>Silver</b>
											</c:if>
											<c:if test="${mydash.free_level==2}"> 
												&nbsp;<img src="../images/photos/gold100.png" alt="골"  width="10%">&nbsp; <b>Gold</b>
											</c:if> 	
										</div>
									</div>

									<!--  
									<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">가입일</label>
											<input type="text" class="form-control" value="2019-09-09" readonly>
										</div>
									</div>
									-->
									<div class="col-md-12">
										<div class="form-group mb-0">
											<label class="form-label">프로필 이미지 등록</label>
											<div class="custom-file">
												<input type="file" class="custom-file-input" name="fileName" id="file" onchange="upfile()" accept=".gif, .jpg, .png">
												<label class="custom-file-label" id="fileName_label">${mydash.free_ofname}</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" class="form-control" value="${mydash.free_code}"  name="free_code">
								<div class="col-md-12">
									<div class="card-footer" style="text-align:center;">
										<button type="button" class="btn btn-primary" id="edit_ok" onclick="check();">수정완료</button>
										<a href="javascript:void(0)" class="btn btn-primary" id="edit_update" onclick="writeProfile()"><span>프로필 쓰러가기</span></a>
									</div>
								</div>
							</form>
							</div>
						</div>
					</div>
				</div>
		</section>
		<!--/User Dashboard-->
			<script>
	function upfile(){
		var filename = document.getElementById("file").value;
		document.getElementById("fileName_label").innerHTML=filename;
	}	
	</script>
</c:otherwise>
</c:choose>
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
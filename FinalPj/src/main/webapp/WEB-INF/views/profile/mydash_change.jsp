<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

<c:choose>
<c:when test="${empty mydash}">
		<script>
			function check(){
				input_free.submit();
			}
			function notice(){
				alert("연락처를 등록하셔야 프로필을 작성하실 수 있습니다.");
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
											<input type="text" class="form-control" value="새싹" readonly>
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
				input_free.submit();
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
						<!--  
						<div class="card my-select">
							<div class="card-header">
								<h3 class="card-title">Search Ads</h3>
							</div>
							<div class="card-body">
								<div class="form-group">
									<input type="text" class="form-control" id="text" placeholder="What are you looking for?">
								</div>
								<div class="form-group">
									<select name="country" id="select-countries" class="form-control custom-select select2-show-search">
										<option value="1" selected="">All Categories</option>
										<option value="2">RealEstate</option>
										<option value="3">Restaurant</option>
										<option value="4">Beauty</option>
										<option value="5">Jobs</option>
										<option value="6">Services</option>
										<option value="7">Vehicle</option>
										<option value="8">Education</option>
										<option value="9">Electronics</option>
										<option value="10">Pets &amp; Animals</option>
										<option value="11">Computer</option>
										<option value="12">Mobile</option>
										<option value="13">Events</option>
										<option value="14">Travel</option>
										<option value="15">Clothing</option>
									</select>
								</div>
								<div class="">
									<a href="#" class="btn  btn-primary">Search</a>
								</div>
							</div>
						</div>
						
						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">Safety Tips For Buyers</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec  mb-0">
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Meet Seller at public Place
									</li>
									<li class="">
										<i class="fa fa-check text-success" aria-hidden="true"></i> Check item before you buy
									</li>
									<li class="">
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
					
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title"><b>회원정보</b></h3>
							</div>
							<form name="input_free" method="post" action="mydash_free_update" enctype="multiPART/form-data">
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
											<input type="text" class="form-control" value="${mydash.free_level}" readonly>
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
										<button type="submit" class="btn btn-primary" id="edit_ok">수정완료</button>
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
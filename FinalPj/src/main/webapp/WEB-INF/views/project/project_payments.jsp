<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">Payments</h1>
							<!--
							<ol class="breadcrumb text-center"> 
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">My Dashboard</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">Managed Ads</li>
							</ol>
							-->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Breadcrumb-->

		<!--User dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-12 col-md-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">My Dashboard</h3>
							</div>
							<div class="card-body text-center item-user">
								<div class="profile-pic">
									<div class="profile-pic-img">
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<br/>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">회사이름</h4></a>
								</div>
							</div>
							<aside class="app-sidebar doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">프로필 수정</span></a>
										<!--	
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">내정보 수정</span><i class="angle fa fa-angle-right"></i></a>						 
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">Edit Profile-1</a></li>
												<li><a class="slide-item" href="mydash.html">Edit Profile-2</a></li>
											</ul>
										 -->
										</li>
									<!--
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-diamond"></i><span class="side-menu__label"> My Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myads.html"> My Ads-1</a></li>
												<li><a class="slide-item" href="myads.html"> My Ads-2</a></li>
											</ul>
										</li>
									-->
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label"> 찜한 프로젝트</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-1</a></li>
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-2</a></li>
											</ul>
										</li>
									<!--
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">Managed Ads</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="manged.html">Managed Ads-1</a></li>
												<li class="sub-slide">
													<a class="side-menu__item border-top-0  slide-item" href="#" data-toggle="sub-slide"><span class="side-menu__label">Managed Ads-2</span> <i class="sub-angle fa fa-angle-right"></i></a>
													<ul class="child-sub-menu ">
														<li><a class="slide-item" href="manged.html">Managed Ads-3</a></li>
														<li><a class="slide-item" href="manged.html">Managed Ads-4</a></li>
													</ul>
												</li>
											</ul>
										</li>
									-->
										
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-basket"></i><span class="side-menu__label">주문내역</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="orders.html">Orders-1</a></li>
												<li><a class="slide-item" href="orders.html">Orders-2</a></li>
											</ul>
										</li>
										<!-- 
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-game-controller"></i><span class="side-menu__label"> Safety Tips</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="tips.html">Safety Tips-1</a></li>
												<li><a class="slide-item" href="tips.html">Safety Tips-2</a></li>
											</ul>
										</li>
										 -->
										 <li>
											<a class="side-menu__item active" href="#"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">결제</span></a>
										</li>
									<!--
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-settings"></i><span class="side-menu__label"> 설정 </span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="settings.html">Settings-1</a></li>
												<li><a class="slide-item" href="settings.html">Settings-2</a></li>
											</ul>
										</li>
									-->
									<!-- <li>
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">로그아웃</span></a>
										</li>	 -->
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
						-->
						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">결제시 주의사항</h3>
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
					</div>
					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card">
								<div class="card-header">
								<div class="card-title" style="font-size: 18pt"><strong>프로젝트 등록</strong></div>				
						</div>	
							<div class="card-body">
								<div class="card-pay">
							<!-- 	<ul class="tabs-menu nav">
										<li class=""><a href="#tab1" class="active" data-toggle="tab"><i class="fa fa-credit-card"></i> 신용카드</a></li>
										<li><a href="#tab2" data-toggle="tab" class=""><i class="fa fa-paypal"></i>  Paypal</a></li>
										<li><a href="#tab3" data-toggle="tab" class=""><i class="fa fa-university"></i>  Bank Transfer</a></li>
									</ul>	 -->	
									<div class="tab-content">
										<div class="tab-pane active show" id="tab1">
											<div class="form-group">
					
										<div class="card-body">
										<div class="item-card7-desc">
											
											<div style="margin-top:-18px;">
											<span class="fa fa-briefcase" style="margin-right:50px"><strong>&nbsp;&nbsp;프로젝트 번호</strong></span>
											<span style="margin-left:5px;">112233</span>
											</div>
											
											<div style="margin-top: -21px; margin-left:400px;">
											<span><i class="si si-user text-muted mr-1" ></i><strong> 담당자 이름</strong></span>
											<span style="margin-left:20px;">김당당</span><br/>
											</div>
											<br/>
											
											<div style="margin-top:10px;">						
											<span class="fa fa-briefcase font-weight-semibold"><strong>&nbsp;&nbsp;프로젝트이름</strong></span>
											<span style="margin-left:20px;">프로젝트이름프로젝트프로젝트</span>
											</div>	
											
											<div style="margin-top:-22px; margin-left:400px;">	
											<span style='text-align:right;'><i class="si si-phone mr-2 text-muted mr-1" ></i><strong>담당자 연락처</strong></span>
											<span style="margin-left:20px;">010-2222-3333</span>
											</div>
											
											<div style="margin-top:28px;">			
											<span><i class="fa fa-building text-muted mr-1"></i><strong>&nbsp;기업 이름</strong></span>
											
											<span style="margin-left:20px;">기업 이름이름</span>
											</div>
											
											<div style="margin-top:-22px; margin-left:400px;">	
											<span style='text-align:right;'><i class="fa fa-envelope-o text-muted mr-1" ></i><strong>&nbsp;이메일</strong></span>
											<span style="margin-left:20px;">TEST@TEST.com</span>
											</div>
											
											<div style="margin-top:29px;">	
											<span><i class="fa fa-phone text-muted mr-1"></i><strong>&nbsp;연락처</strong></span>
											<span style="margin-left:20px;">02-1234-1234</span>
											</div>
											</ul><br/><br/><br/>	
											
										<div class="item-card7-desc"> 
											<h4 class="card-header"><strong>등급할인</strong></h4>
											<br/>
											<span class="text-dark"><strong>등급</strong></span>
											<span>&nbsp;&nbsp;&nbsp;새싹</span><br/><br/>
											<span class="text-dark"><strong>프로젝트 등록금액</strong></span>
											&nbsp;&nbsp;&nbsp;
											<span><strong>&nbsp;&nbsp;&nbsp;32,000 원</strong></span>
											<br/><br/>
											<span class="text-dark"><span><strong>등급할인</strong></span>
											<span><strong>&nbsp;&nbsp;&nbsp;- 2,000 원</strong></span>
											<div class="card-header"></div>
											<br/><br/>
								
											
											<div class="form-group" style=text-align:right; >
												<span  style="font-size: 20pt"><strong>결제금액</span></h3>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<span style="font-size: 20pt;"><strong> 30,000 원</strong></span>
											</div>				
										</div>	
										<div class="card-header">
											<label class="form-label" style="font-size: 15pt"><strong>결제방식</strong></label>
										</div>
									</div>	
										</div>
											<div class="form-group">
												
													<tbody class="col-lg-12 col-xl-6 p-0">	
														<div class="d-md-flex ad-post-details">
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<label class="custom-control custom-radio mb-2 mr-4">
																<input type="radio" class="custom-control-input" name="radios1" value="option1" checked="">
																	<span class="custom-control-label">신용카드</span>
															</label>
														</div>
													</tbody>
												</div>
											</div>
											<center>
											<button onclick="requestPay()" type="button" class="btn btn-primary">결제</button>
											</center>
										</div>				
									</div>
								</div>
							</div>
						</div>

<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
function requestPay() {
var IMP = window.IMP; // 생략가능
IMP.init('imp07566805');
IMP.request_pay({
pg: 'inicis', // version 1.1.0부터 지원.
/*
'kakao':카카오페이,
html5_inicis':이니시스(웹표준결제)
'nice':나이스페이
'jtnet':제이티넷
'uplus':LG유플러스
'danal':다날
'payco':페이코
'syrup':시럽페이
'paypal':페이팔
*/
pay_method: 'card',
/*
'samsung':삼성페이,
'card':신용카드,
'trans':실시간계좌이체,
'vbank':가상계좌,
'phone':휴대폰소액결제
*/
merchant_uid: 'merchant_' + new Date().getTime(),
/*
merchant_uid에 경우
https://docs.iamport.kr/implementation/payment
위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
참고하세요.
나중에 포스팅 해볼게요.
*/
name: '글쓰기:project',
//결제창에서 보여질 이름
amount: 1000,
//가격
buyer_email: 'iamport@siot.do',
buyer_name: '구매자이름',
buyer_tel: '010-1234-5678',
buyer_addr: '서울특별시 강남구 삼성동',
buyer_postcode: '123-456',
m_redirect_url: 'https://www.yourdomain.com/payments/complete'
/*
모바일 결제시,
결제가 끝나고 랜딩되는 URL을 지정
(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
*/
}, function (rsp) {
console.log(rsp);
if (rsp.success) {
var msg = '결제가 완료되었습니다.';
msg += '고유ID : ' + rsp.imp_uid;
msg += '상점 거래ID : ' + rsp.merchant_uid;
msg += '결제 금액 : ' + rsp.paid_amount;
msg += '카드 승인번호 : ' + rsp.apply_num;
} else {
var msg = '결제에 실패하였습니다.';
msg += '에러내용 : ' + rsp.error_msg;
}
alert(msg);
});
};
</script>

	
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
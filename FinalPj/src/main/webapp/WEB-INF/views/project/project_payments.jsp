<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="fp.corporation.domain.ProjectPayment"%>
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
									<h1 class="" style="margin-bottom:0rem;">프로젝트 결제</h1>
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
					<h4 class="page-title">Project</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="project_list">프로젝트</a></li>
						<li class="breadcrumb-item active" aria-current="page">프로젝트</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--User dashboard-->
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
										<img src="../hifiveImages/cor_thumb/${corInfo.cor_fname}" class="brround" alt="${corInfo.cor_fname}">
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
												<li><a class="slide-item" href="myfavorite_market">마켓 찜</a></li>
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
											<a class="side-menu__item" href="payments_cor"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">계좌정보</span></a>
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
											<span class="fa fa-briefcase" style="margin-right:5px"><strong>&nbsp;&nbsp;프로젝트 번호</strong></span>
											<span style="margin-left:5px;">${projectCont.pj_num}</span>
											</div>
											
											<div style="margin-top: -21px; margin-left:400px;">
											<span><i class="si si-user text-muted mr-1" ></i><strong> 담당자 이름</strong></span>
											<span style="margin-left:20px;">${corInfo.cor_mname}</span><br/>
											</div>
											<br/>
											
											<div style="margin-top:10px;">						
											<span class="fa fa-briefcase font-weight-semibold"><strong>&nbsp;&nbsp;프로젝트이름</strong></span>
											<span style="margin-left:20px;">${projectCont.pj_sub}</span>
											</div>	
											
											<div style="margin-top:-22px; margin-left:400px;">	
											<span style='text-align:right;'><i class="si si-phone mr-2 text-muted mr-1" ></i><strong>연락처</strong></span>
											<span style="margin-left:20px;">${corInfo.cor_tel}</span>
											</div>
											
											<div style="margin-top:28px;">			
											<span><i class="fa fa-building text-muted mr-1"></i><strong>&nbsp;기업 이름</strong></span>
											
											<span style="margin-left:20px;">${corInfo.cor_name}</span>
											</div>
											
											<div style="margin-top:-22px; margin-left:400px;">	
											<span style='text-align:right;'><i class="fa fa-envelope-o text-muted mr-1" ></i><strong>&nbsp;이메일</strong></span>
											<span style="margin-left:20px;">${corInfo.mem_email}</span>
											</div>
											<br/><br/><br/>	
											
										<div class="item-card7-desc"> 
											<h4 class="card-header"><strong>등급할인</strong></h4>
											<br/>
											<span class="text-dark" style="margin-right:10px;"><strong>등급</strong></span>
											<span>
											<c:if test="${corInfo.cor_level==0}"><img src="../images/photos/bronze100.png" alt="브"  width="2%">&nbsp; <b>Bronze</b></c:if>
											<c:if test="${corInfo.cor_level==1}"><img src="../images/photos/silver100.png" alt="실" width="2%"> &nbsp; <b>Silver</b></c:if>
											<c:if test="${corInfo.cor_level==2}"><img src="../images/photos/gold100.png" alt="골"  width="2%">&nbsp; <b>Gold</b></c:if>
											</span><br/><br/>
											<span class="text-dark" style="margin-right:10px;"><strong>프로젝트 등록금액</strong></span>
											<span><strong><fmt:formatNumber value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)}" pattern="#,###,###,###" />원</strong></span>
											
											<br/><br/>
												<span class="text-dark" style="margin-right:10px;"><strong>등급할인</strong></span>
												<span><strong>
												<c:choose>
													<c:when test="${corInfo.cor_level==0}">
													- 0원
													</c:when>
													<c:when test="${corInfo.cor_level==1}">
														- ${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)*0.05} 원
														<c:set var="discount1" value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)*0.05}"/>
													</c:when>
													<c:when test="${corInfo.cor_level==2}">
														- ${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)*0.10} 원
														<c:set var="discount2"  value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)*0.10}"/>
													</c:when>
												</c:choose> </strong></span>
												<div class="card-header"></div>
												<br/><br/>
											
											<div class="form-group" style="text-align:right;" >
												<span  style="font-size: 20pt"><strong>결제금액</strong></span>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<span style="font-size: 20pt;">
												<strong>
													<c:if test="${corInfo.cor_level==0}">
														<fmt:formatNumber value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)}" pattern="#,###,###,###" />
														<c:set target="${pjpaym}" property="pjpaym_fprice" value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)}"/>
													</c:if>
													<c:if test="${corInfo.cor_level==1}">
														<fmt:formatNumber value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)-discount1}" pattern="#,###,###,###" />
														<c:set target="${pjpaym}" property="pjpaym_fprice"  value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)-discount1}"/>
													</c:if>
													<c:if test="${corInfo.cor_level==2}">
														<fmt:formatNumber value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)-discount2}" pattern="#,###,###,###" />
														<c:set target="${pjpaym}" property="pjpaym_fprice"  value="${((projectCont.pj_pay/200) + (projectCont.pj_recnum * projectCont.pj_pay)/100)-discount2}"/>
													</c:if>
													
												</strong>
												원
												</span>
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
											<button onclick="requestPay()" type="button" class="btn btn-primary">이건데 왜 안먹히지</button>
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
merchant_uid: 'project_' + new Date().getTime(),
/*
merchant_uid에 경우
https://docs.iamport.kr/implementation/payment
위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
참고하세요.
나중에 포스팅 해볼게요.
*/
name: '프로젝트 등록 결제',
//결제창에서 보여질 이름
amount: 100,
	//'${pjpaym.pjpaym_fprice}', 
	//${pjpaym.pjpaym_fprice},
//가격
buyer_email: '${corInfo.mem_email}',
buyer_name: '${corInfo.cor_name}',
buyer_tel: '${corInfo.cor_tel}',
buyer_addr: '${corInfo.cor_addr}',
buyer_postcode: '${corInfo.cor_postcode}',
m_redirect_url: 'project_payments_end'
/*
모바일 결제시,
결제가 끝나고 랜딩되는 URL을 지정
(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
*/
}, function (rsp) {
console.log(rsp);
if (rsp.success) {
   
$.ajax({
   url:'project_payments_end?pj_num=${projectCont.pj_num}',
   async:false,
   type: 'POST',
   contentType: 'application/json',
   data: JSON.stringify(rsp),
   success: function(data){
      if(data != null ){
         location.href="project_pay_end";
      }
   },
   error: function(errorThrown){
      alert(errorThrown.statusText);
   }
});
   
var msg = '결제가 완료되었습니다.';
msg += '고유ID : ' + rsp.imp_uid;
msg += '상점 거래ID : ' + rsp.merchant_uid;
msg += '결제 금액 : ' + rsp.paid_amount;
msg += '카드 승인번호 : ' + rsp.apply_num;
} else {
var msg = '결제에 실패하였습니다.';
msg += '에러내용 : ' + rsp.error_msg;
}
//alert(msg);
});
};
</script>

	
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
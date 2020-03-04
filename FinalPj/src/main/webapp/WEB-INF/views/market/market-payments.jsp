
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	function requestPay() {
		
		alert("ssssssss");
		var IMP = window.IMP; // 생략가능
		IMP.init('imp60448504');
		IMP.request_pay({
			pg: 'inicis', // version 1.1.0부터 지원.
			pay_method: 'card',	
			merchant_uid: 'market_' + new Date().getTime(),
			name: '${market.market_sub}',
//			amount:'${market.market_price}', 
			amount:'10', 
			buyer_email: '${sessionScope.email}',
			buyer_name: '${sessionScope.name}',
			market_num: '${market.market_num}',
			m_redirect_url: 'market-paymentsDone'
		}, 
		
	
		function (rsp) {
			var data = JSON.stringify({market_num:"${market.market_num}" ,rsp:rsp, marketPaym_feeRate:"${mPayment.marketPaym_feeRate}"});
			console.log(rsp);
			if (rsp.success) {
				$.ajax({
				   url:'market-payments-insert',
				   async:false,
				   type: 'POST',
				   contentType: 'application/json',
				   data: data,
				   success: function(data){
					   console.log("data"+data);
				      if(data != null ){
				         location.href="market-paymentsDone";
				 		}
		   			},
				   error: function(errorThrown){
				      alert(errorThrown.statusText);
				   }
				});
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '마켓 거래ID : ' + rsp.merchant_uid;
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
		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">Payments</h1>
							
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
										<span class="bg-success dots" data-toggle="tooltip" data-placement="top" title="online"></span>
										<img src="../images/faces/male/25.jpg" class="brround" alt="user">
									</div>
									<br/>
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">me</h4></a>
								</div>
							</div>
							<aside class="app-sidebar doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item" href="#"><i class="side-menu__icon si si-power"></i><span class="side-menu__label">프로필 수정</span></a>
										
										</li>
									
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label"> 찜한 프로젝트</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-1</a></li>
												<li><a class="slide-item" href="myfavorite.html"> My Favorite-2</a></li>
											</ul>
										</li>
									
										
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-basket"></i><span class="side-menu__label">주문내역</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="orders.html">Orders-1</a></li>
												<li><a class="slide-item" href="orders.html">Orders-2</a></li>
											</ul>
										</li>
										
										
										 <li>
											<a class="side-menu__item active" href="#"><i class="side-menu__icon si si-credit-card"></i><span class="side-menu__label">결제</span></a>
										</li>
									
									
									</ul>
								</div>
							</aside>
						</div>
					
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
								<div class="card-title" style="font-size: 18pt"><strong>마켓 결제</strong></div>				
						</div>	
							<div class="card-body">
								<div class="card-pay">
							
									<div class="tab-content">
										<div class="tab-pane active show" id="tab1">
											<div class="form-group">
					
										<div class="card-body">
										<div class="item-card7-desc">
										<!--auction Description-->

											<div class="single-productslide">
												<div class="row no-gutter">
													<div class="col-lg-6 border-right">
														<div class=" pb-0 image-zoom-container">
															<div class="small-img">
																<img src="../hifiveImages/marketThumbnails/${market.market_fname}" class="icon-left" alt="" id="prev-img">
															</div>
														</div>
													</div>

													<div class="col-lg-6">
														<div class="product-gallery-data mb-0">
															<h3 class="mb-3 font-weight-semibold">${market.market_sub}</h3>
															<div class="mb-3">
																<span class="font-weight-bold h1 text-danger">${market.market_price}</span>
																
															</div>
															<dl class="product-gallery-data1">
																<dt>프리랜서이름</dt>
																<dd>${freeName}</dd>
															</dl>
															<dl class="product-gallery-data1">
																<dt>마켓 번호</dt>
																<dd>${market.market_num}</dd>
															</dl>
														<!-- <dl class="product-gallery-data1">
																<dt>수수료율</dt>
																
															</dl>
														 -->		
															<div class="product-gallery-rats">
																<ul class="product-gallery-rating">
																	<li>
																	<c:if test="${starAvg!=0}">
																		<c:forEach var="1" begin="1" end="${starAvg}">
																			<a href="#"><i class="fa fa-star text-warning"></i></a>
																		</c:forEach>
																		<c:forEach var="1" begin="1" end="${5-starAvg}">
																			<a href="#"><i class="fa fa-star-o text-warning"></i></a>
																		</c:forEach>
																	</c:if>
																	<c:if test="${starAvg==0}">
																		<a ><i class="fa fa-star-o text-warning"></i></a>
																		<a href="#"><i class="fa fa-star-o text-warning"></i></a>
																		<a href="#"><i class="fa fa-star-o text-warning"></i></a>
																		<a href="#"><i class="fa fa-star-o text-warning"></i></a>
																		<a href="#"><i class="fa fa-star-o text-warning"></i></a>
																	</c:if>
																	</li>
																</ul>
																<div class="label-rating">${revCount} reviews</div>
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
											</ul><br/>	
									<div class="item-card7-desc"> 
									
											<div class="form-group" style=text-align:right; >
												<span class="card-header"><strong>  </span></h3>
												<span style="font-size: 20pt"><strong>결제금액</span></h3>
												<br/>
												<span style="font-size: 20pt;"><strong> ${market.market_price } 원</strong></span>
											</div>
										</div>	
									</div>	
										</div>
											<center>
											<button type="submit" onclick="requestPay()"  class="btn btn-primary">결제</a>
											</center>
										</div>				
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
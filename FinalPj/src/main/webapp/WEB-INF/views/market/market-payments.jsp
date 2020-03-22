
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
   function requestPay() {
      
      var IMP = window.IMP; // 생략가능
      IMP.init('imp60448504');
      IMP.request_pay({
         pg: 'inicis', // version 1.1.0부터 지원.
         pay_method: 'card',   
         merchant_uid: 'market_' + new Date().getTime(),
         name: '${market.market_sub}',
//         amount:'${market.market_price}', 
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
               dataType:'html',
               success: function(data){
                  console.log("data"+data);
                  if(data != null ){
                	 contactServer(data);
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
      });
   };
   function contactServer(email){
	   if(socket.readyState !== 1)return
	   	socket.send(email+",market");
 };
</script>
		<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">결제하기</h1>
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
					<h4 class="page-title">FreeMarket</h4>
					<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="market-list">프리마켓</a></li>
						<li class="breadcrumb-item active" aria-current="page">프리마켓</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->
		<!--User dashboard-->
		<section class="sptb">
			<div class="container" >
				<div class="row"  >
					
					<!-- 
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
				-->
					<div class="col-xl-9 col-lg-12 col-md-12 fcenter">
						<div class="card" >
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
                                                
                                                <span class="font-weight-bold h1 text-danger"><fmt:formatNumber value="${market.market_price}" pattern="#,###,###,###" /></span>
                           
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
                                    <span style="font-size: 20pt;"><strong> <fmt:formatNumber value="${market.market_price}" pattern="#,###,###,###" /> 원</strong></span>
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
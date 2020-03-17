
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
							<h1 class="">PaymentsDone</h1>
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
			<!-- Page -->
			<div class=" page page-h ">
				<div class="page-content z-index-10">
					<div class="container text-center">
					<br/><br/>
						<h1 class="h2  mb-3">마켓이 결제 되었습니다.</h1>
						<p class="h4 font-weight-normal mb-7 leading-normal "></p>
						<a class="btn btn-primary" href="myMarket3">
							주문내역보기
						</a>
					</div>
				</div>
			</div>
			<!-- End Page -->
		</section>
		
<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<!--/footer-->
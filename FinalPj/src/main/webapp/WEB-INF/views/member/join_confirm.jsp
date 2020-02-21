<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Sliders Section-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">Register</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Pages</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">Register</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Sliders Section-->

		<!--Forgot password-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-md-12 col-md-12 d-block mx-auto">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">인증하기</h3>
							</div>
							<div class="card-body">												 
								 <form action="join_injeung.do${email}" method="post">
									<label class="form-label text-dark">인증번호</label>
									<div class="input-group mb-5">
										<input type="text" name="email_injeung" value="${email_injeung}" class="form-control" placeholder="인증번호를 입력해 주세요.">
										<div class="input-group-append">
											<button type="submit" class="btn btn-primary btn-block">인증하기</button>
										<!--<button class="btn btn-secondary"  id="emailAuthBtn">인증</button> -->
										</div>
									</div>
									<div class="" id="email_check">여기여기여기여기여기여기여기</div>
								</form>  
								<!--  
								<div class="form-footer">
									<button type="submit" class="btn btn-primary btn-block">인증하기</button>
								</div> -->
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Forgot password-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
>>>>>>> 6639d0921df9b65c8efd3090a1a3933ebc32d277
<!--/footer-->
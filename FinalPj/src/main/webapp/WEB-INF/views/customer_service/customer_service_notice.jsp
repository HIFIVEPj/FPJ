<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
									<h1 class="" style="margin-bottom:0rem;">공지사항</h1>
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
					<h4 class="page-title">공지사항</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item">고객센터</li>
						<li class="breadcrumb-item active" aria-current="page">공지사항</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="card mb-0">						
							<div class="table-responsive p-5">
								<table id="example" class="table table-bordered ico-listing text-nowrap">
									<thead>
									<!-- #1f719a -->
										<tr class="border-bottom text-center" style="background-color:#f6f3ed;">
											<th class="font-weight-bold">번호</th>
											<th class="font-weight-bold">분류</th>
											<th class="font-weight-bold">제목</th>
											<th class="font-weight-bold">작성자</th>
											<th class="font-weight-bold">날짜</th>
											<th class="font-weight-bold">조회</th>
											<th class="font-weight-bold">추천</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${notice_list}" var="notice_list">
										<tr class="border-bottom">
											<td class="text-center">${notice_list.notice_num}</td>
											<td class="text-center">${notice_list.notice_cate}</td>
											<td><a href='customer_service_notice_content?notice_num=${notice_list.notice_num}&mem_email=${notice_list.mem_email}'>${notice_list.notice_sub}</a></td>
											<td class="text-center">${notice_list.mem_name}</td>
											<td class="text-center"><fmt:formatDate value="${notice_list.notice_rdate}" pattern="yyyy.MM.dd"/></td>
											<td class="text-center">${notice_list.notice_vcnt}</td>
											<td class="text-center">${notice_list.notice_recommnum}</td>
										</tr>
										</c:forEach>
									</tbody>									
								</table>
								
								<br/>
									<c:if test="${sessionScope.class_num eq 1}">
									<div class="text-right">
										<a href="customer_service_notice_write" class="btn btn-danger"><i class="si si-pencil"></i>&nbsp;글쓰기</a>
									</div>
									</c:if>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>
		<!--Add Listing-->

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
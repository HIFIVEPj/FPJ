<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--header-->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!--/header-->

		<!--Breadcrumb-->
		<!--
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">FAQ</h1>
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="../">Home</a></li>
								<li class="breadcrumb-item"><a href="community_list">커뮤니티</a></li>
								<li class="breadcrumb-item active" aria-current="community_faq">FAQ</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		 -->
		<!--/Breadcrumb-->
		<!--Sliders Section-->
		<div>
			<div class="bannerimg cover-image sptb-2 bg-background" data-image-src="../images/banners/banner1.jpg">
				<div class="header-text1 mb-0">
					<div id="particles-js" ></div>
					<div class="container">
						<div class="row">
							<div class="col-xl-8 col-lg-12 col-md-12 d-block mx-auto">
								<div class="text-center text-white ">
									<h1 class="" style="margin-bottom:0rem;">FAQ</h1>
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
					<h4 class="page-title">FAQ</h4>
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="../">Home</a></li>
						<li class="breadcrumb-item"><a href="customer_service_list">고객센터</a></li>
						<li class="breadcrumb-item active" aria-current="page">FAQ</li>
					</ol>
				</div>
			</div>
		</div>
		<!--/Breadcrumb-->

		<!--Add listing-->
		<section class="sptb">
			<div class="container">
				<div class="row">			
					
					<!--Leftside Content-->
					<div class="col-xl-3 col-lg-4 col-md-12">
						<div class="card">
							<div class="card-body">
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="검색어 입력">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											<i class="fa fa-binoculars"></i>&nbsp;&nbsp;검색
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">FAQ 분류</h3>
							</div>
							<div class="card-body p-0">
								<div class="list-catergory">
									<div class="item-list">
										<ul class="list-group mb-0">
											<li class="list-group-item">
												<a href="#" class="">
													프로젝트
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">14</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프리마켓
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">63</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													프리랜서
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">25</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													가입/탈퇴
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">74</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													회원정보
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">18</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													결제/환불
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">32</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													할인
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">08</span>
												</a>
											</li>
											<li class="list-group-item border-bottom-0">
												<a href="#" class="">
													기타
													<span class="badgetext badge badge-pill badge-secondary mb-0" style="background-color:#e8564a; color:#fff;">08</span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">최신 문의글</h3>
							</div>
							<div class="card-body pb-3">
								<ul class="vertical-scroll">
									<li class="item">
										<div class="p-3">
											<!--
											<div class="mb-2"><a href="support.html"><span class="fs-16"><i class="fa fa-question-circle-o" aria-hidden="true"></i> 최신 문의글 테스트1</span></a></div>
											-->
											<div class="mb-2" data-toggle="tooltip" data-placement="bottom" title="공사중"><span class="fs-16"><i class="fa fa-question-circle-o" aria-hidden="true"></i> 최신 문의글 테스트1</span></a></div>
											<span class="badge badge-primary"><i class="fa fa-eye"></i> 522</span>
											<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 23</span>
										</div>
									</li>
									<li class="item">
										<div class="p-3">
											<div class="mb-2" data-toggle="tooltip" data-placement="bottom" title="공사중"><span class="fs-16"><i class="fa fa-question-circle-o" aria-hidden="true"></i> 최신 문의글 테스트2</span></a></div>
											<span class="badge badge-primary"><i class="fa fa-eye"></i> 652</span>
											<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 54</span>
										</div>
									</li>
									<li class="item">
										<div class="p-3">
											<div class="mb-2" data-toggle="tooltip" data-placement="bottom" title="공사중"><span class="fs-16"><i class="fa fa-question-circle-o" aria-hidden="true"></i> 최신 문의글 테스트3</span></a></div>
											<span class="badge badge-primary"><i class="fa fa-eye"></i> 147</span>
											<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 14</span>
										</div>
									</li>
									<li class="item">
										<div class="p-3">
											<div class="mb-2" data-toggle="tooltip" data-placement="bottom" title="공사중"><span class="fs-16"><i class="fa fa-question-circle-o" aria-hidden="true"></i> 최신 문의글 테스트4</span></a></div>
											<span class="badge badge-primary"><i class="fa fa-eye"></i> 965</span>
											<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 35</span>
										</div>
									</li>
									<li class="item">
										<div class="p-3">
											<div class="mb-2" data-toggle="tooltip" data-placement="bottom" title="공사중"><span class="fs-16"><i class="fa fa-question-circle-o" aria-hidden="true"></i> 최신 문의글 테스트5</span></a></div>
											<span class="badge badge-primary"><i class="fa fa-eye"></i> 654</span>
											<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 17</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--/Leftside Content-->						
					
					<div class="col-xl-9 col-lg-8 col-md-12">
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">FAQ / 프로젝트</h3>
							</div>
							<div class="card-body">
								<div class="panel-group1" id="accordion2">
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse1" aria-expanded="false">FAQ 테스트1</a>
											</h4>
										</div>
										<!--
										<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
										-->
										<div id="collapse1" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트1</p>
												<p>FAQ 테스트1</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse2" aria-expanded="false">FAQ 테스트2</a>
											</h4>
										</div>
										<div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트2</p>
												<p>FAQ 테스트2</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse3" aria-expanded="false">FAQ 테스트3</a>
											</h4>
										</div>
										<div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트3</p>
												<p>FAQ 테스트3</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse4" aria-expanded="false">FAQ 테스트4</a>
											</h4>
										</div>
										<div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트4</p>
												<p>FAQ 테스트4</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse5" aria-expanded="false">FAQ 테스트5</a>
											</h4>
										</div>
										<div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트5</p>
												<p>FAQ 테스트5</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse6" aria-expanded="false">FAQ 테스트6</a>
											</h4>
										</div>
										<div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트6</p>
												<p>FAQ 테스트6</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse7" aria-expanded="false">FAQ 테스트7</a>
											</h4>
										</div>
										<div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트7</p>
												<p>FAQ 테스트7</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse8" aria-expanded="false">FAQ 테스트8</a>
											</h4>
										</div>
										<div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트8</p>
												<p>FAQ 테스트8</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse9" aria-expanded="false">FAQ 테스트9</a>
											</h4>
										</div>
										<div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트9</p>
												<p>FAQ 테스트9</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse10" aria-expanded="false">FAQ 테스트10</a>
											</h4>
										</div>
										<div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>FAQ 테스트10</p>
												<p>FAQ 테스트10</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer text-right">				
								<div class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="공사중"><i class="si si-pencil"></i>&nbsp;글쓰기</div>
							</div>
						</div>
					</div>

					
				</div>
			</div>
		</section>
		<!--/Add listing-->

		<!-- Message Modal -->
		<div class="modal fade" id="Comment" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleCommentLongTitle">Leave a Comment</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="commet-name" placeholder="Your Name">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="commet-email" placeholder="Email Address">
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success">Send</button>
					</div>
				</div>
			</div>
		</div>

		<!-- Report Modal -->
		<div class="modal fade" id="report" tabindex="-1" role="dialog"  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="examplereportLongTitle">Report Abuse</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="text" class="form-control" id="report-name" placeholder="Enter url">
						</div>
						<div class="form-group">
							<select name="country" id="select-countries" class="form-control custom-select">
								<option value="1" selected>Categories</option>
								<option value="2">Spam</option>
								<option value="3">Identity Theft</option>
								<option value="4">Online Shopping Fraud</option>
								<option value="5">Service Providers</option>
								<option value="6">Phishing</option>
								<option value="7">Spyware</option>
							</select>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" id="report-email" placeholder="Email Address">
						</div>
						<div class="form-group mb-0">
							<textarea class="form-control" name="example-textarea-input" rows="6" placeholder="Message"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
						<button type="button" class="btn btn-success">Submit</button>
					</div>
				</div>
			</div>
		</div>

<!--footer-->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<!--/footer-->
<<<<<<< HEAD
=======
>>>>>>> 0548d3f85aa071ccf233551fbbc900acc8e9ea70
		
>>>>>>> 66928d0945675f40d16aa344255e94d26080ed14

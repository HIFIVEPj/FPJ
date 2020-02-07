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
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Search">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											Search
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Categories</h3>
							</div>
							<div class="card-body p-0">
								<div class="list-catergory">
									<div class="item-list">
										<ul class="list-group mb-0">
											<li class="list-group-item">
												<a href="#" class="">
													Settings
													<span class="badgetext badge badge-pill badge-secondary mb-0">14</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													Account
													<span class="badgetext badge badge-pill badge-secondary mb-0">63</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													Billing
													<span class="badgetext badge badge-pill badge-secondary mb-0">25</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													Copyright
													<span class="badgetext badge badge-pill badge-secondary mb-0">74</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													Customization
													<span class="badgetext badge badge-pill badge-secondary mb-0">18</span>
												</a>
											</li>
											<li class="list-group-item">
												<a href="#" class="">
													Getting Started
													<span class="badgetext badge badge-pill badge-secondary mb-0">32</span>
												</a>
											</li>
											<li class="list-group-item border-bottom-0">
												<a href="#" class="">
													Trouble Shooting
													<span class="badgetext badge badge-pill badge-secondary mb-0">08</span>
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
							<div class="card-body">
								<div class="pb-3 border-bottom">
									<div class="mb-2"><a href="support.html"><span class=""><i class="fa fa-question-circle-o" aria-hidden="true"></i> How Can I Add another page in Template?</span></a></div>
									<span class="badge badge-primary"><i class="fa fa-eye"></i> 522</span>
									<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 23</span>
								</div>
								<div class="pb-3 pt-3 border-bottom">
									<div class="mb-2"><a href="support.html"><span class=""><i class="fa fa-question-circle-o" aria-hidden="true"></i> Move Detials From One Page to Another Page?</span></a></div>
									<span class="badge badge-primary"><i class="fa fa-eye"></i> 652</span>
									<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 54</span>
								</div>
								<div class="pt-3">
									<div class="mb-2"><a href="support.html"><span class=""><i class="fa fa-question-circle-o" aria-hidden="true"></i> How Can I Change My Details?</span></a></div>
									<span class="badge badge-primary"><i class="fa fa-eye"></i> 147</span>
									<span class="badge badge-success"><i class="fa fa-thumbs-up"></i> 14</span>
								</div>
							</div>
						</div>
					</div>
					<!--/Leftside Content-->						
					
					<div class="col-xl-9 col-lg-8 col-md-12">
						<div class="card mb-lg-0">
							<div class="card-header">
								<h3 class="card-title">Frequently Asked Questions / Settings</h3>
							</div>
							<div class="card-body">
								<div class="panel-group1" id="accordion2">
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse1" aria-expanded="false">How To Insert All The Plugins?</a>
											</h4>
										</div>
										<div id="collapse1" class="panel-collapse collapse show" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse2" aria-expanded="false">Can I use this Plugins in Another Template?</a>
											</h4>
										</div>
										<div id="collapse2" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse3" aria-expanded="false">How Can I Add another page in Template?</a>
											</h4>
										</div>
										<div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse4" aria-expanded="false">How Can I contact?</a>
											</h4>
										</div>
										<div id="collapse4" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse5" aria-expanded="false">How can I download This template?</a>
											</h4>
										</div>
										<div id="collapse5" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse6" aria-expanded="false">It is Easy to Customizable?</a>
											</h4>
										</div>
										<div id="collapse6" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse7" aria-expanded="false">What does it Cost to advertise?</a>
											</h4>
										</div>
										<div id="collapse7" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse8" aria-expanded="false">What Classifieds Categories do you offer?</a>
											</h4>
										</div>
										<div id="collapse8" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default mb-4">
										<div class="panel-heading1">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse9" aria-expanded="false">How do I pay for my classified ad?</a>
											</h4>
										</div>
										<div id="collapse9" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading1 ">
											<h4 class="panel-title1">
												<a class="accordion-toggle collapsed border" data-toggle="collapse" data-parent="#accordion2" href="#collapse10" aria-expanded="false">Do you offer frequency Discounts?</a>
											</h4>
										</div>
										<div id="collapse10" class="panel-collapse collapse" role="tabpanel" aria-expanded="false">
											<div class="panel-body border-top-0 text-justify">
												<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words </p>
												<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled.Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
											</div>
										</div>
									</div>
								</div>
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
		
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=utf-8" session="false" %>

<!doctype html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="UTF-8">
		<meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="msapplication-TileColor" content="#0f75ff">
		<meta name="theme-color" content="#2ddcd3">
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="mobile-web-app-capable" content="yes">
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<meta name="description" content="Pinlist – Directory, Classifieds and Jobs Multipurpose Bootstrap4 HTML5 Listing Template">
		<meta name="author" content="sprukotechnologies">
		<meta name="keywords" content="classifieds,real estate,education online classess,jobs,business directory,coupons,cars,e-commerce,market place,auctions,tours & travels,domain marketPlace,books listing,doctors listing,rating & reviews,iCO list,wedding,knowledge base,softwares,video listing,booking html template,bootstrap 4 html template,buy templates,directory listing html template,html and css website templates,html app template,html5 web templates,modern html templates,premium bootstrap templates,responsive ui,html template,html5 template,ecommerce html template,directory listing html template,html css js templates,search html template,best ui kits,bootstrap 4 ui kit,bootstrap kit,css ui kit,flat ui kit,html ui kit,kit ui,multipurpose website ui kit,ui kit template,uikit css,web ui kit,website ui kit,wireframe kit,wireframe ui kit,bootstrap ui kit,dashboard ui kit,flat ui,flat ui design,uikit">
		<link rel="icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

		<!-- Title -->
		<title>Pinlist - Multipurpose listing,Classifieds and Directory usages Big Bundle HTML Template</title>

		<!-- Bootstrap Css -->
		<link href="../plugins/bootstrap-4.1.3/css/bootstrap.min.css" rel="stylesheet" />

		<!-- Dashboard Css -->
		<link href="../css/dashboard.css" rel="stylesheet" />

		<!-- Font-awesome  Css -->
		<link rel="stylesheet" href="../fonts/fonts/font-awesome.min.css">

		<!--Horizontal Menu-->
		<link href="../plugins/Horizontal2/Horizontal-menu/dropdown-effects/fade-down.css" rel="stylesheet" />
		<link href="../plugins/Horizontal2/Horizontal-menu/horizontal.css" rel="stylesheet" />
		<link href="../plugins/Horizontal2/Horizontal-menu/color-skins/color.css" rel="stylesheet" />
		
		<!-- Date Picker Plugin -->
		<link href="../plugins/date-picker/spectrum.css" rel="stylesheet" />

		<!--Select2 Plugin -->
		<link href="../plugins/select2/select2.min.css" rel="stylesheet" />

		<!-- Cookie css -->
		<link href="../plugins/cookie/cookie.css" rel="stylesheet">

		<!-- Custom scroll bar css-->
		<link href="../plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet" />

		<!--Font icons-->
		<link href="../plugins/iconfonts/plugin.css" rel="stylesheet">
		<link href="../plugins/iconfonts/icons.css" rel="stylesheet">
	</head>
	<body>

		<!--Loader-->
		<div id="global-loader"><img src="../images/other/loader.svg" class="loader-img floating" alt=""></div>

		<!--Topbar-->
		<div class="header-main">
			<div class="top-bar">
				<div class="container">
					<div class="row">
						<div class="col-xl-8 col-lg-8 col-sm-4 col-7">
							<div class="top-bar-left d-flex">
								<div class="clearfix">
									<ul class="socials">
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-facebook"></i></a>
										</li>
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-twitter"></i></a>
										</li>
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-linkedin"></i></a>
										</li>
										<li>
											<a class="social-icon text-dark" href="#"><i class="fa fa-google-plus"></i></a>
										</li>
									</ul>
								</div>
								<div class="clearfix">
									<ul class="contact border-left">
										<li class="mr-5 d-lg-none">
											<a href="#" class="callnumber text-dark"><span><i class="fa fa-phone mr-1"></i>: +425 345 8765</span></a>
										</li>
										<li class="select-country mr-5">										
											<select class="form-control select2-flag-search" data-placeholder="Select Country">
												<option value="UM">United States of America</option>
												<option value="AF">Afghanistan</option>
												<option value="AL">Albania</option>
												<option value="AD">Andorra</option>
												<option value="AG">Antigua and Barbuda</option>
												<option value="AU">Australia</option>
												<option value="AM">Armenia</option>
												<option value="AO">Angola</option>
												<option value="AR">Argentina</option>
												<option value="AT">Austria</option>
												<option value="AZ">Azerbaijan</option>
												<option value="BA">Bosnia and Herzegovina</option>
												<option value="BB">Barbados</option>
												<option value="BD">Bangladesh</option>
												<option value="BE">Belgium</option>
												<option value="BF">Burkina Faso</option>
												<option value="BG">Bulgaria</option>
												<option value="BH">Bahrain</option>
												<option value="BJ">Benin</option>
												<option value="BN">Brunei</option>
												<option value="BO">Bolivia</option>
												<option value="BT">Bhutan</option>
												<option value="BY">Belarus</option>
												<option value="CD">Congo</option>
												<option value="CA">Canada</option>
												<option value="CF">Central African Republic</option>
												<option value="CI">Cote d'Ivoire</option>
												<option value="CL">Chile</option>
												<option value="CM">Cameroon</option>
												<option value="CN">China</option>
												<option value="CO">Colombia</option>
												<option value="CU">Cuba</option>
												<option value="CV">Cabo Verde</option>
												<option value="CY">Cyprus</option>
												<option value="DJ">Djibouti</option>
												<option value="DK">Denmark</option>
												<option value="DM">Dominica</option>
												<option value="DO">Dominican Republic</option>
												<option value="EC">Ecuador</option>
												<option value="EE">Estonia</option>
												<option value="ER">Eritrea</option>
												<option value="ET">Ethiopia</option>
												<option value="FI">Finland</option>
												<option value="FJ">Fiji</option>
												<option value="FR">France</option>
												<option value="GA">Gabon</option>
												<option value="GD">Grenada</option>
												<option value="GE">Georgia</option>
												<option value="GH">Ghana</option>
												<option value="GH">Ghana</option>
												<option value="HN">Honduras</option>
												<option value="HT">Haiti</option>
												<option value="HU">Hungary</option>
												<option value="ID">Indonesia</option>
												<option value="IE">Ireland</option>
												<option value="IL">Israel</option>
												<option value="IN">India</option>
												<option value="IQ">Iraq</option>
												<option value="IR">Iran</option>
												<option value="IS">Iceland</option>
												<option value="IT">Italy</option>
												<option value="JM">Jamaica</option>
												<option value="JO">Jordan</option>
												<option value="JP">Japan</option>
												<option value="KE">Kenya</option>
												<option value="KG">Kyrgyzstan</option>
												<option value="KI">Kiribati</option>
												<option value="KW">Kuwait</option>
												<option value="KZ">Kazakhstan</option>
												<option value="LA">Laos</option>
												<option value="LB">Lebanons</option>
												<option value="LI">Liechtenstein</option>
												<option value="LR">Liberia</option>
												<option value="LS">Lesotho</option>
												<option value="LT">Lithuania</option>
												<option value="LU">Luxembourg</option>
												<option value="LV">Latvia</option>
												<option value="LY">Libya</option>
												<option value="MA">Morocco</option>
												<option value="MC">Monaco</option>
												<option value="MD">Moldova</option>
												<option value="ME">Montenegro</option>
												<option value="MG">Madagascar</option>
												<option value="MH">Marshall Islands</option>
												<option value="MK">Macedonia (FYROM)</option>
												<option value="ML">Mali</option>
												<option value="MM">Myanmar (formerly Burma)</option>
												<option value="MN">Mongolia</option>
												<option value="MR">Mauritania</option>
												<option value="MT">Malta</option>
												<option value="MV">Maldives</option>
												<option value="MW">Malawi</option>
												<option value="MX">Mexico</option>
												<option value="MZ">Mozambique</option>
												<option value="NA">Namibia</option>
												<option value="NG">Nigeria</option>
												<option value="NO">Norway</option>
												<option value="NP">Nepal</option>
												<option value="NR">Nauru</option>
												<option value="NZ">New Zealand</option>
												<option value="OM">Oman</option>
												<option value="PA">Panama</option>
												<option value="PF">Paraguay</option>
												<option value="PG">Papua New Guinea</option>
												<option value="PH">Philippines</option>
												<option value="PK">Pakistan</option>
												<option value="PL">Poland</option>
												<option value="QA">Qatar</option>
												<option value="RO">Romania</option>
												<option value="RU">Russia</option>
												<option value="RW">Rwanda</option>
												<option value="SA">Saudi Arabia</option>
												<option value="SB">Solomon Islands</option>
												<option value="SC">Seychelles</option>
												<option value="SD">Sudan</option>
												<option value="SE">Sweden</option>
												<option value="SG">Singapore</option>
												<option value="TG">Togo</option>
												<option value="TH">Thailand</option>
												<option value="TJ">Tajikistan</option>
												<option value="TL">Timor-Leste</option>
												<option value="TM">Turkmenistan</option>
												<option value="TN">Tunisia</option>
												<option value="TO">Tonga</option>
												<option value="TR">Turkey</option>
												<option value="TT">Trinidad and Tobago</option>
												<option value="TW">Taiwan</option>
												<option value="UA">Ukraine</option>
												<option value="UG">Uganda</option>
												<option value="UY">Uruguay</option>
												<option value="UZ">Uzbekistan</option>
												<option value="VA">Vatican City (Holy See)</option>
												<option value="VE">Venezuela</option>
												<option value="VN">Vietnam</option>
												<option value="VU">Vanuatu</option>
												<option value="YE">Yemen</option>
												<option value="ZM">Zambia</option>
												<option value="ZW">Zimbabwe</option>
											</select>
										</li>
										<li class="dropdown mr-5">
											<a href="#" class="text-dark" data-toggle="dropdown"><span> Language <i class="fa fa-caret-down text-muted"></i></span> </a>
											<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
												<a href="#" class="dropdown-item" >
													English
												</a>
												<a class="dropdown-item" href="#">
													Arabic
												</a>
												<a class="dropdown-item" href="#">
													German
												</a>
												<a href="#" class="dropdown-item" >
													Greek
												</a>
												<a href="#" class="dropdown-item" >
													Spanish
												</a>
											</div>
										</li>
										<li class="dropdown">
											<a href="#" class="text-dark" data-toggle="dropdown"><span>Currency <i class="fa fa-caret-down text-muted"></i></span></a>
											<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
												<a href="#" class="dropdown-item" >
													USD
												</a>
												<a class="dropdown-item" href="#">
													EUR
												</a>
												<a class="dropdown-item" href="#">
													INR
												</a>
												<a href="#" class="dropdown-item" >
													GBP
												</a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-xl-4 col-lg-4 col-sm-8 col-5">
							<div class="top-bar-right">
								<ul class="custom">
									<li>
										<a href="register.html" class="text-dark"><i class="fa fa-user mr-1"></i> <span>Register</span></a>
									</li>
									<li>
										<a href="login.html" class="text-dark"><i class="fa fa-sign-in mr-1"></i> <span>Login</span></a>
									</li>
									<li class="dropdown">
										<a href="#" class="text-dark" data-toggle="dropdown"><i class="fa fa-home mr-1"></i><span> My Dashboard</span></a>
										<div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
											<a href="mydash.html" class="dropdown-item" >
												<i class="dropdown-icon si si-user"></i> My Profile
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-envelope"></i> Inbox
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-bell"></i> Notifications
											</a>
											<a href="mydash.html" class="dropdown-item" >
												<i class="dropdown-icon  si si-settings"></i> Account Settings
											</a>
											<a class="dropdown-item" href="#">
												<i class="dropdown-icon si si-power"></i> Log out
											</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Mobile Header -->
			<div class="sticky">
				<div class="horizontal-header clearfix ">
					<div class="container">
						<a id="horizontal-navtoggle" class="animated-arrow"><span></span></a>
						<span class="smllogo"><img src="../images/brand/logo1.png" width="120" alt=""/></span>
						<a href="tel:245-6325-3256" class="callusbtn"><i class="fa fa-phone" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<!-- Mobile Header -->

			<div class="sticky">
				<div class="horizontal-main clearfix">
					<div class="horizontal-mainwrapper container clearfix">
						<div class="desktoplogo">
							<a href="index.html"><img src="../images/brand/logo1.png" alt=""></a>
						</div>
						<!--Nav-->
						<nav class="horizontalMenu clearfix d-md-flex">
							<ul class="horizontalMenu-list">
								<li aria-haspopup="true"><a href="#">Home <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index.html">Classifieds</a></li>
														<li aria-haspopup="true"><a href="index2.html">Real Estate</a></li>
														<li aria-haspopup="true"><a href="index3.html">Education</a></li>
														<li aria-haspopup="true"><a href="index4.html">Jobs</a></li>
														<li aria-haspopup="true"><a href="index5.html">Business Directory</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index6.html">Coupons</a></li>
														<li aria-haspopup="true"><a href="index7.html">Cars</a></li>
														<li aria-haspopup="true"><a href="index8.html">E-Commerce</a></li>
														<li aria-haspopup="true"><a href="index9.html">Market Place</a></li>
														<li aria-haspopup="true"><a href="index10.html">Auction</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index11.html">Tours & Travels</a></li>
														<li aria-haspopup="true"><a href="index12.html">Domains</a></li>
														<li aria-haspopup="true"><a href="index13.html">Books</a></li>
														<li aria-haspopup="true"><a href="index14.html">Doctors</a></li>
														<li aria-haspopup="true"><a href="index15.html">Rating & Reviews</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="index16.html">ICO List</a></li>
														<li aria-haspopup="true"><a href="index17.html">Wedding</a></li>
														<li aria-haspopup="true"><a href="index18.html">Knowledge Base</a></li>
														<li aria-haspopup="true"><a href="index19.html">Softwares</a></li>
														<li aria-haspopup="true"><a href="index20.html">Video List</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="banner.html">Banner</a></li>
														<li aria-haspopup="true"><a href="domain-search.html">Video Banner</a></li>
														<li aria-haspopup="true"><a href="slider.html">Image Slider</a></li>
														<li aria-haspopup="true"><a href="intro-page.html">Intro Page</a></li>
														<li aria-haspopup="true"><a href="popup-login.html">Pop-up login</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li aria-haspopup="true"><a href="about.html">About Us </a></li>
								<li aria-haspopup="true"><a href="widgets.html">Widgets</a></li>
								<li aria-haspopup="true"><a href="#">Pages <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li class="title">Custom pages</li>
														<li>
															<a href="jobs-list.html">Jobs List</a>
														</li>
														<li>
															<a href="jobs-list-right.html">Jobs List Right</a>
														</li>
														<li>
															<a href="employer-list.html">Employer List </a>
														</li>
														<li>
															<a href="employer-list-right.html">Employer List Right</a>
														</li>
														<li>
															<a href="realestate-list.html">RealEstate List</a>
														</li>
														<li>
															<a href="realestate-list-right.html">RealEstate List Right</a>
														</li>
														<li>
															<a href="education-list.html">Education List</a>
														</li>
														<li>
															<a href="education-list-right.html">Education List Right</a>
														</li>
														<li>
															<a href="classifieds-list.html">Classifieds List</a>
														</li>
														<li>
															<a href="classifieds-list-right.html">Classifieds List Right</a>
														</li>
														<li>
															<a href="business-list.html">Business List</a>
														</li>
														<li>
															<a href="business-list-right.html">Business List Right</a>
														</li>
														<li>
															<a href="car-list.html">Cars List</a>
														</li>
														<li>
															<a href="car-list-right.html">Cars List Right</a>
														</li>
														<li>
															<a href="ecommerce-list.html">E-Commerce List</a>
														</li>
														<li>
															<a href="ecommerce-list-right.html">E-Commerce List Right</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title">Custom pages</li>
														<li>
															<a href="marketplace-list.html">Marketplace List</a>
														</li>
														<li>
															<a href="marketplace-list-right.html">Marketplace List Right</a>
														</li>
														<li>
															<a href="auction-list.html">Auction List</a>
														</li>
														<li>
															<a href="auction-list-right.html">Auction List Right</a>
														</li>
														<li>
															<a href="travel-list.html">Travel List Left</a>
														</li>
														<li>
															<a href="travel-list-right.html">Travel List Right</a>
														</li>
														<li>
															<a href="domain-list.html">Domain List Left</a>
														</li>
														<li>
															<a href="domain-list-right.html">Domain List Right</a>
														</li>
														<li>
															<a href="books-list.html">Books List Left</a>
														</li>
														<li>
															<a href="books-list-right.html">Books List Right</a>
														</li>
														<li>
															<a href="books-authorlist.html">Author List Left</a>
														</li>
														<li>
															<a href="books-authorlist-right.html">Author List Right</a>
														</li>
														<li>
															<a href="doctor-list.html">Doctors List Left</a>
														</li>
														<li>
															<a href="doctor-list-right.html">Doctors List Right</a>
														</li>
														<li>
															<a href="reviews-list.html">Reviews List</a>
														</li>
														<li>
															<a href="reviews-list-right.html">Reviews List Right</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title">Custom pages</li>
														<li>
															<a href="venue-list.html">Wedding Venue List left</a>
														</li>
														<li>
															<a href="venue-list-right.html">Wedding Venue List Right</a>
														</li>
														<li>
															<a href="support-forum.html">Forum</a>
														</li>
														<li>
															<a href="support-faq.html">FAQ</a>
														</li>
														<li>
															<a href="software-list.html">Software List</a>
														</li>
														<li>
															<a href="software-list-table.html">Software List Table</a>
														</li>
														<li>
															<a href="ico-list.html">ICO List</a>
														</li>
														<li>
															<a href="video-list.html">Video List Left </a>
														</li>
														<li>
															<a href="video-list-right.html">Video List Right</a>
														</li>
														<li>
															<a href="ad-list.html">Ad Listing</a>
														</li>
														<li>
															<a href="ad-list-right.html">Ad Listing Right</a>
														</li>
														<li>
															<a href="ad-details.html">Ad Details</a>
														</li>
														<li>
															<a href="ad-details-right.html">Ad Details Right</a>
														</li>
														<li>
															<a href="ad-posts.html">Ad Posts</a>
														</li>
														<li>
															<a href="ad-posts2.html">Ad Posts2</a>
														</li>
														<li>
															<a href="categories.html">Categories</a>
														</li>
													</ul>
													<ul class="col link-list">
														<li class="title">User pages</li>
														<li>
															<a href="classifieds-list-map.html">Classifieds Map list</a>
														</li>
														<li>
															<a href="classifieds-list-map2.html">Classifieds Map list 02</a>
														</li>
														<li>
															<a href="classifieds-list-map3.html">Classifieds Map style 03</a>
														</li>
														<li>
															<a href="jobs-list-map.html">Jobs Map list</a>
														</li>
														<li>
															<a href="jobs-list-map2.html">Jobs Map list 02</a>
														</li>
														<li>
															<a href="realestate-list-map.html">RealEstate Map list</a>
														</li>
														<li>
															<a href="realestate-list-map2.html">RealEstate Map list 02</a>
														</li>
														<li>
															<a href="business-list-map.html">Business Map list</a>
														</li>
														<li>
															<a href="business-list-map2.html">Business Map list 02</a>
														</li>
														<li>
															<a href="car-list-map.html">Cars Map list</a>
														</li>
														<li>
															<a href="car-list-map2.html">Cars  Map list 02</a>
														</li>

														<li>
															<a href="inovice.html">Invoice</a>
														</li>
														<li>
															<a href="usersall.html">User Lists</a>
														</li>
														<li>
															<a href="pricing.html">Pricing</a>
														</li>
														<li>
															<a href="faq.html">Faq</a>
														</li>
														<li>
															<a href="userprofile.html"> User Profile</a>
														</li>

													</ul>
													<ul class="col link-list">
														<li class="title">User pages</li>
														<li>
															<a href="typography.html">Typography</a>
														</li>
														<li><a href="underconstruction.html">Under Constructions</a></li>
														<li><a href="404.html">404</a></li>
														<li><a href="register.html">Register</a></li>
														<li><a href="login.html">Login</a></li>
														<li><a href="login-2.html">Login 02</a></li>
														<li><a href="forgot.html">Forgot Password</a></li>
														<li><a href="lockscreen.html">Lock Screen</a></li>
														<li><a href="header-style1.html">Header Style 01</a></li>
														<li><a href="header-style2.html">Header Style 02</a></li>
														<li><a href="header-style3.html">Header Style 03</a></li>
														<li><a href="header-style4.html">Header Style 04</a></li>
														<li><a href="footer-style.html">Footer Style 01</a></li>
														<li><a href="footer-style2.html">Footer Style 02</a></li>
														<li><a href="footer-style3.html">Footer Style 03</a></li>
														<li><a href="footer-style4.html">Footer Style 04</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li aria-haspopup="true"><a href="#">Blog <span class="fa fa-caret-down m-0"></span></a>
									<ul class="sub-menu">
										<li aria-haspopup="true"><a href="#">Blog Grid <i class="fa fa-angle-right float-right mt-1 d-none d-lg-block"></i></a>
											 <ul class="sub-menu">
												<li aria-haspopup="true"><a href="blog-grid.html">Blog Grid Left</a></li>
												<li aria-haspopup="true"><a href="blog-grid-right.html">Blog Grid Right</a></li>
												<li aria-haspopup="true"><a href="blog-grid-center.html">Blog Grid Center</a></li>
											</ul>
										</li>
										<li aria-haspopup="true"><a href="#">Blog List <i class="fa fa-angle-right float-right mt-1 d-none d-lg-block"></i></a>
											 <ul class="sub-menu">
												<li aria-haspopup="true"><a href="blog-list.html">Blog List Left</a></li>
												<li aria-haspopup="true"><a href="blog-list-right.html">Blog List Right</a></li>
												<li aria-haspopup="true"><a href="blog-list-center.html">Blog List Center</a></li>
											</ul>
										</li>
										<li aria-haspopup="true"><a href="#">Blog Details <i class="fa fa-angle-right float-right mt-1 d-none d-lg-block"></i></a>
											<ul class="sub-menu">
												<li aria-haspopup="true"><a href="blog-details.html">Blog Details Left</a></li>
												<li aria-haspopup="true"><a href="blog-details-right.html">Blog Details Right</a></li>
												<li aria-haspopup="true"><a href="blog-details-center.html">Blog Details Center</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li aria-haspopup="true"><a href="#">Categories <span class="fa fa-caret-down m-0"></span></a>
									<div class="horizontal-megamenu clearfix">
										<div class="container">
											<div class="megamenu-content">
												<div class="row">
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="realestate.html">RealEstate Left</a></li>
														<li aria-haspopup="true"><a href="realestate-right.html">RealEstate Right </a></li>
														<li aria-haspopup="true"><a href="jobs.html">Jobs Left</a></li>
														<li aria-haspopup="true"><a href="jobs-right.html">Jobs Right </a></li>
														<li aria-haspopup="true"><a href="education.html">Education Left</a></li>
														<li aria-haspopup="true"><a href="education-right.html">Education Right </a></li>
														<li aria-haspopup="true"><a href="classified.html">Classifieds Left</a></li>
														<li aria-haspopup="true"><a href="classified-right.html">Classifieds Rights </a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="employer.html">Employer Details</a></li>
														<li aria-haspopup="true"><a href="domain.html">Domain Left</a></li>
														<li aria-haspopup="true"><a href="domain-right.html">Domain Right</a></li>
														<li aria-haspopup="true"><a href="business.html">Business Directory Left</a></li>
														<li aria-haspopup="true"><a href="business-right.html">Business Directory Right </a></li>
														<li aria-haspopup="true"><a href="coupon-code.html">Coupons </a></li>
														<li aria-haspopup="true"><a href="car.html">Cars Left</a></li>
														<li aria-haspopup="true"><a href="car-right.html">Cars Right </a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="ecommerce.html">E-Commerce</a></li>
														<li aria-haspopup="true"><a href="marketplace.html">Marketplace Left</a></li>
														<li aria-haspopup="true"><a href="marketplace-right.html">Marketplace Right </a></li>
														<li aria-haspopup="true"><a href="auction.html">Auction</a></li>
														<li aria-haspopup="true"><a href="travel.html">Travel Left</a></li>
														<li aria-haspopup="true"><a href="travel-right.html">Travel Right</a></li>
														<li aria-haspopup="true"><a href="books.html">Books Left</a></li>
														<li aria-haspopup="true"><a href="books-right.html">Books Right</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="doctor.html">Doctors Left</a></li>
														<li aria-haspopup="true"><a href="doctor-right.html">Doctors Right</a></li>
														<li aria-haspopup="true"><a href="reviews.html">Reviews Left</a></li>
														<li aria-haspopup="true"><a href="reviews-right.html">Reviews Right</a></li>
														<li aria-haspopup="true"><a href="ico.html">ICO Left</a></li>
														<li aria-haspopup="true"><a href="ico-right.html">ICO Right</a></li>
														<li aria-haspopup="true"><a href="wedding.html">Wedding left</a></li>
													</ul>
													<ul class="col link-list">
														<li aria-haspopup="true"><a href="wedding-right.html">Wedding Right</a></li>
														<li aria-haspopup="true"><a href="support.html">Support Left</a></li>
														<li aria-haspopup="true"><a href="support-right.html">Support Right</a></li>
														<li aria-haspopup="true"><a href="software.html">Software Left</a></li>
														<li aria-haspopup="true"><a href="software-right.html">Software Right</a></li>
														<li aria-haspopup="true"><a href="video.html">Video Left </a></li>
														<li aria-haspopup="true"><a href="video-right.html">Video Right</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li aria-haspopup="true"><a href="contact.html"> Contact Us <span class="wsarrow"></span></a></li>
								<li aria-haspopup="true" class="d-lg-none mt-5 pb-5 mt-lg-0">
									<span><a class="btn btn-secondary" href="ad-posts.html">Post Free Ad</a></span>
								</li>
							</ul>
							<ul class="mb-0">
								<li aria-haspopup="true" class="mt-5 d-none d-lg-block ">
									<span><a class="btn btn-secondary" href="ad-posts.html">Post Free Ad</a></span>
								</li>
							</ul>
						</nav>
						<!--Nav-->
					</div>
				</div>
			</div>
		</div>

		<!--Breadcrumb-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1 class="">My Dashboard</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">My Dashboard</li>
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
									<a href="userprofile.html" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold">김소담</h4></a>
								</div>
							</div>
							<aside class="app-sidebar doc-sidebar my-dash">
								<div class="app-sidebar__user clearfix">
									<ul class="side-menu">
										<li class="slide">
											<a class="side-menu__item active" data-toggle="slide" href="#"><i class="side-menu__icon si si-user"></i><span class="side-menu__label">회원정보</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="mydash.html">프리랜서</a></li>
												<li><a class="slide-item" href="myprofile.html">프리랜서 프로필</a></li>
												<li><a class="slide-item " href="mydash_cor.html">기업</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-heart"></i><span class="side-menu__label">찜 목록</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="myfavorite.html">프로젝트 찜</a></li>
												<li><a class="slide-item" href="myfavorite_cor.html">프리랜서 찜</a></li>
												<li><a class="slide-item" href="myfavorite_market.html">마켓 찜</a></li>
											</ul>
										</li>
										<li class="slide">
											<a class="side-menu__item" data-toggle="slide" href="#"><i class="side-menu__icon si si-folder-alt"></i><span class="side-menu__label">마켓관리</span><i class="angle fa fa-angle-right"></i></a>
											<ul class="slide-menu">
												<li><a class="slide-item" href="managed-market.html">마켓관리</a></li>
												<li><a class="slide-item" href="managed_order.html">구매관리</a></li>
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
								<h3 class="card-title">프로필 등록하기</h3>
							</div>
							
							<div class="card-body">
								<div class="row">
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
										<label class="form-label">직종</label>
                                 			<select class="form-control">
                                    			<option selected> </option>
                                    			<option>개발</option>
                                    			<option>퍼블리싱</option>
                                    			<option>디자인</option>
                                   				 <option>기획</option>
                                   				 <option>기타</option>
                                			 </select>

										</div>
									</div>
									<div class="col-sm-6 col-md-6">
										<div class="form-group">
											<label class="form-label">경력</label>
											<input type="number" class="form-control" placeholder="경력">
										</div>
									</div>

									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
											<label class="form-label">키워드</label>
										</div>
									</div>	
									
						
							<div class="col-sm-6 col-md-12">
								<div class="form-group ">																							
								<div class="ads-tabs">
									<div class="tabs-menus">
										<!-- Tabs -->
										<ul class="nav panel-tabs">
										 	<li><a href="#tab1" class="active" data-toggle="tab">개발</a></li> 
											<li><a href="#tab2" data-toggle="tab">퍼블리싱</a></li>
											<li><a href="#tab3" data-toggle="tab">디자인</a></li>
											<li><a href="#tab4" data-toggle="tab">기획</a></li>
											<li><a href="#tab5" data-toggle="tab">기타</a></li>											
										</ul>
									</div>
									<div class="tab-content">
										<!-- tab 개발 시작   -->	
										<div class="tab-pane active table-responsive border-top userprof-tab" id="tab1">
											<!-- 개발자 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ java 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">JAVA</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">Front-end</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Back_End</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Java</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Spring</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Xplatform</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Miplantform</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Nexacro</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Proframe</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Maven</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Jenkins</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Sencha</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Trustform</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Tuxedo</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Gauce</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Pro*C</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">DecOn</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Thymeleaf</span>
														</label>
													</div>
												</div>
										<!------------------------ java 끝----------------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>
										<!------------------------ Mobile App 시작---------------------------------------------------->						
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">Mobile App</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Hybrid</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Android</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ios(Object-C)</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ios(Swift)</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">WebView</span>
														</label>
													</div>
												</div>			
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">IoT</span>
														</label>
													</div>	
												</div>	
											<!------------------------ Mobile App 끝---------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>
											<!------------------------ PHP/ASP 시작---------------------------------------------------->	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">PHP/ASP</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">PHP</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Laravel</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Codeigniter</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Symfony</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">WordPress</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ASP</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ZendFramework</span>
														</label>
													</div>	
												</div>	
											<!------------------------ PHP/ASP 끝---------------------------------------------------->												
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>								
											<!------------------------ NET 시작---------------------------------------------------->	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">NET</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">ASP.net</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">C</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">C++</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">C#</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MFC</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">OpenGL</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">VBA</span>
														</label>
													</div>														
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">DevExpress</span>
														</label>
													</div>	
												</div>												
											<!------------------------ NET 끝---------------------------------------------------->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>	
											<!------------------------ JavaScript 시작---------------------------------------------------->
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">JavaScrip</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">node.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">AngularJS</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">React.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Vue.js</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">jQuery</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">JavaScript</span>
														</label>
													</div>		
												</div>														
											<!------------------------ JavaScript 끝---------------------------------------------------->						
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>	
											<!------------------------ C/C++ 시작---------------------------------------------------->
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">C/C++</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Server</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">UNIX</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Embedded</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Firmware</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Aduino</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Qt</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">LabVIEW</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MetaLab</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Machine Vision</span>
														</label>
													</div>																																									
												</div>														
											
											<!------------------------ C/C++ 끝---------------------------------------------------->		
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>												
											<!------------------------DB 시작---------------------------------------------------->		
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label">DB</label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Oracle</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MSSQL</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MySQL</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MariaDB</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">MongoDB</span>
														</label>
													</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">CUBRID</span>
														</label>
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Tibero</span>
														</label>
													</div>	
													<div class="col-md-4">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Postgresql</span>
														</label>
													</div>																																									
												</div>												
											<!------------------------DB 끝---------------------------------------------------->															
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>			
											</div>
										</div>
										<!-- 개발자 끝  -->				
									</div>
								<!-- tab 개발 끝   -->
								
								<!-- tab 퍼블리셔 시작   -->	
									<div class="tab-pane  table-responsive border-top userprof-tab" id="tab2">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
									<!------------------------ 퍼블리셔 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">퍼블리셔</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">HTML5</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">CSS</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">ActionScript</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">AngularJS</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">React.js</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">Vue.js</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">jQuery</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">JavaScript</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">WordPress</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">BootStrap</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Photoshop</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Flash</span>
														</label>
														</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">웹접근성</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">웹표준</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">Git</span>
														</label>
													</div>
												</div>
												<!-- 선 -->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>								
												<!-- 선 끝-->			
											</div>
										</div>
										<!-- 개발자 끝  -->				
									</div> <!-- tab 퍼블리셔 끝   -->	
									
							<!-- tab 디자인 시작   -->	
									<div class="tab-pane table-responsive border-top userprof-tab" id="tab3">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 디자인 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">디자인</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">웹디자인</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">앱디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">게임디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">3D디자인</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">그래픽디자인</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">패키지디자인</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">아트 디렉션</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">애니메이션</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">로고브랜딩</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">판촉물디자인</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">출판/편집디자인</span>
														</label>
													</div>
													
												</div>
												<!-- 선 -->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>								
												<!-- 선 끝-->									
															
											</div>
										</div>
										<!-- 디자인 끝  -->				
									</div> <!-- tab 디자인 끝   -->
								<!-- tab 기획 시작   -->	
									<div class="tab-pane  table-responsive border-top userprof-tab" id="tab4">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
									<!------------------------ 기획 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">기획</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">웹기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">앱기획</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">컨설팅</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">제안</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">쇼핑몰</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">여행사</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">금융</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">증권</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">카드</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">물류</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">보험</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">대학</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">병원</span>
														</label>
													</div>													
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">회계</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">제조</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">건설</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">암호화폐</span>
														</label>
													</div>
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">PMO</span>
														</label>
													</div>													
												</div>
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">공공기관</span>
														</label>
													</div>
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">시스템분석/설계</span>
														</label>
													</div>												
												</div>
												<!-- 선 -->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>								
												<!-- 선 끝-->																															
															
											</div>
										</div>
										<!-- 기획 끝  -->				
									</div> <!-- tab 기획 끝   -->	
							<!-- tab 기타 시작   -->	
									<div class="tab-pane  table-responsive border-top userprof-tab" id="tab5">
											<!-- 퍼블리셔 시작  -->											
											<div class="col-sm-6 col-md-12">									
											<div class="form-group ">
											<!------------------------ 기타 시작----------------------------------------------------------->										
												<br/>
												<div class="row">									
													<div class="col-md-2">																								
													<label class="form-label">기타</label>										
												</div>
												
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
													<span class="custom-control-label">PM</span>
													</label>
												</div>
												<div class="col-md-2">											
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">PL</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">PMO</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">DA</span>
													</label>
												</div>
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">DBA</span>
													</label>
												</div>
												</div>	
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">TA</span>
													</label>
												</div>
												<div class="col-md-2">
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">AA</span>
													</label>
												</div>	
													
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">NA</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">SE</span>
													</label>
												</div>	
												<div class="col-md-2">	
													<label class="custom-control custom-checkbox">
														<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
														<span class="custom-control-label">QA</span>
													</label>
												</div>	
												</div>	
													
												<div class="row">
													<div class="col-md-2">											
														<label class="form-label"></label>										
													</div>	
													<div class="col-md-2">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">QC</span>
														</label>
													</div>
													<div class="col-md-6">	
														<label class="custom-control custom-checkbox">
															<input type="checkbox" class="custom-control-input" name="checkbox" value="checkbox">
															<span class="custom-control-label">시스템분석/설계</span>
														</label>
													</div>						
												</div>		
												<!-- 선 -->
												<div class="row">
													<div class="col-md-12">											
														<HR />									
													</div>	
												</div>								
												<!-- 선 끝-->								
															
											</div>
										</div>
										<!-- 기획 끝  -->				
									</div> <!-- tab 기획 끝   -->																		
																			
																									
									</div>								
								</div>								
							</div>	
							</div>
						
											

									<div class="col-md-12">
										<div class="form-group">
											<label class="form-label">주소</label>
											<div class="row gutters-xs">
												<div class="col">
													<input type="text" class="form-control" placeholder="Search for...">
												</div>
												<span class="col-auto">
													<button class="btn btn-secondary" type="button"><i class="fe fe-search"></i></button>
												</span>
											</div>
										</div>
									</div>
									<!--<div class="col-sm-6 col-md-4">
										<div class="form-group">
											<label class="form-label">업무가능여부</label>
											 <input type="text" class="form-control" placeholder="업무가능여부">											
										</div>										
									</div>-->
									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
										<div class="row">
										<div class="col-md-3">
											<label class="form-label">업무가능여부</label>
										</div>
										<div class="col-md-9">
											<label class="custom-switch">
												<input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input">
												<span class="custom-switch-indicator"></span>
												<span class="custom-switch-description">불가능/가능</span>
											</label>
										</div>
										</div>
										</div>
									</div>
									<div class="col-sm-6 col-md-12">
										<div class="form-group ">
										<div class="row">
												<div class="col-md-3">
													<label class="form-label">업무가능일</label>
												</div>
										<div class="col-md-9">
											<div class="wd-200 mg-b-30">
												<div class="input-group">
													<div class="input-group-prepend">
														<div class="input-group-text">
															<i class="fa fa-calendar tx-16 lh-0 op-6"></i>
														</div>
													</div><input class="form-control fc-datepicker" placeholder="MM/DD/YYYY" type="text">
												</div>
											</div>
										</div>
										</div>
										</div>
									</div>	

									<div class="col-sm-6 col-md-12">	
										<div class="row">
											<div class="col-md-3">
												<label class="form-label">업무장소</label>
											</div>
											<div class="col-md-9">
												  <select class="form-control">
	                                    			<option selected> </option>
	                                    			<option value="0">상주</option>
	                                    			<option value="1">반상주</option>
	                                   				 <option value="2">자택</option>
	                                   				 <option value="3">상관없음</option>
	                                			 </select>
											</div>
										</div>
									</div>
										

 

									<div class="col-md-12">
										<div class="form-group">
											<label class="form-label">자기소개</label>
											<textarea rows="5" class="form-control" placeholder=""></textarea>
										</div>
									</div>


											<div class="col-md-12">
											<div class="form-group ">
												<label class="form-label mt-2">첨부파일</label>
												<div class="custom-file">
													<input type="file" class="custom-file-input" name="example-file-input-custom">
													<label class="custom-file-label">Upload Files</label>
												</div>
											</div>
											</div>		

											<div class="col-md-12">
											<div class="form-group ">
											
												<div class="p-2 border mb-4">
												<div class="upload-images d-flex">
													<div>
														<img src="../images/faces/male/25.jpg" alt="img" class="w73 h73 border p-0">
													</div>
													<div class="ml-3 mt-2">
														<h6 class="mb-0 mt-3 font-weight-bold">25.jpg</h6>
														<small>4.5kb</small>
													</div>
													<div class="float-right ml-auto">
														<a href="#" class="float-right btn btn-icon btn-danger btn-sm mt-5"><i class="fa fa-trash-o"></i></a>
													</div>
												</div>
												</div>	
											</div>
											</div>
												
									
									</div>

									
								</div>
							</div>
							<div class="card-footer" align="right">
								<button type="submit" class="btn btn-primary">등록하기</button>	
								<a href="profilelist" class="btn btn-secondary icons">목록</a>						
							</div>

							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/User Dashboard-->
		

		<!-- Newsletter-->
		<section class="sptb bg-white border-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-xl-6 col-md-12">
						<div class="sub-newsletter">
							<h3 class="mb-2"><i class="fa fa-paper-plane-o mr-2"></i> Subscribe To Our Newsletter</h3>
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
						</div>
					</div>
					<div class="col-lg-5 col-xl-6 col-md-12">
						<div class="input-group sub-input mt-1">
							<input type="text" class="form-control input-lg " placeholder="Enter your Email">
							<div class="input-group-append ">
								<button type="button" class="btn btn-primary btn-lg br-tr-7 br-br-7">
									Subscribe
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Newsletter-->

		<!--Footer Section-->
		<section>
			<footer class="bg-dark text-white">
				<div class="footer-main">
					<div class="container">
						<div class="row">
							<div class="col-lg-2 col-md-12">
								<h6>Business Directory</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Company</a></li>
									<li><a href="#">Colleges</a></li>
									<li><a href="#">Hospital</a></li>
									<li><a href="#">Factories</a></li>
								</ul>
							</div>
							<div class="col-lg-2 col-md-12">
								<h6>Classifieds</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Real Estate</a></li>
									<li><a href="#">Computer</a></li>
									<li><a href="#">Clothing</a></li>
									<li><a href="#">Jobs</a></li>
								</ul>
							</div>
							<div class="col-lg-2 col-md-12">
								<h6>Resources</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Support</a></li>
									<li><a href="#">FAQ</a></li>
									<li><a href="#">Terms of Service</a></li>
									<li><a href="#">Contact Details</a></li>
								</ul>
							</div>
							<div class="col-lg-3 col-md-12">
								<h6>Popular Ads</h6>
								<ul class="list-unstyled mb-0">
									<li><a href="#">Educational college Ads</a></li>
									<li><a href="#">Free Lancer for Web Developer</a></li>
									<li><a href="#">2BHK Flat In Hyderabad</a></li>
									<li><a href="#">BPO Jobs In Bangalore</a></li>
								</ul>
							</div>
							<div class="col-lg-3 col-md-12">
								<h6 class="mb-2">Subscribe</h6>
								<div class="input-group">
									<input type="text" class="form-control br-tl-7 br-bl-7" placeholder="Email">
									<div class="input-group-append ">
										<button type="button" class="btn btn-primary br-tr-7 br-br-7">
											Subscribe
										</button>
									</div>
								</div>
								<h6 class="mb-2 mt-5">Payments</h6>
								<ul class="payments mb-0">
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-amex" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-visa" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></a>
									</li>
									<li>
										<a href="javascript:;" class="payments-icon"><i class="fa fa-cc-paypal" aria-hidden="true"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="bg-dark text-white p-0">
					<div class="container">
						<div class="row d-flex">
							<div class="col-lg-8 col-sm-12  mt-2 mb-2 text-left ">
								Copyright © 2019 <a href="#" class="fs-14 text-primary">Pinlist</a>. Designed by <a href="#" class="fs-14 text-primary">Spruko</a> All rights reserved.
							</div>
							<div class="col-lg-4 col-sm-12 ml-auto mb-2 mt-2">
								<ul class="social mb-0">
									<li>
										<a class="social-icon" href=""><i class="fa fa-facebook"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-twitter"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-rss"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-youtube"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-linkedin"></i></a>
									</li>
									<li>
										<a class="social-icon" href=""><i class="fa fa-google-plus"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="bg-dark text-white p-0 border-top">
					<div class="container">
						<div class="p-2 text-center footer-links">
							<a href="#" class="btn btn-link">How It Works</a>
							<a href="#" class="btn btn-link">About Us</a>
							<a href="#" class="btn btn-link">Pricing</a>
							<a href="#" class="btn btn-link">Ads Categories</a>
							<a href="#" class="btn btn-link">Privacy Policy</a>
							<a href="#" class="btn btn-link">Terms Of Conditions</a>
							<a href="#" class="btn btn-link">Blog</a>
							<a href="#" class="btn btn-link">Contact Us</a>
							<a href="#" class="btn btn-link">Premium Ad</a>
						</div>
					</div>
				</div>
			</footer>
		</section>
		<!--/Footer Section-->

		<!-- Back to top -->
		<a href="#top" id="back-to-top" ><i class="fa fa-rocket"></i></a>

		<!-- JQuery js-->
		<script src="../js/vendors/jquery-3.2.1.min.js"></script>

		<!-- Bootstrap js -->
		<script src="../plugins/bootstrap-4.1.3/popper.min.js"></script>
		<script src="../plugins/bootstrap-4.1.3/js/bootstrap.min.js"></script>

		<!--JQuery Sparkline Js-->
		<script src="../js/vendors/jquery.sparkline.min.js"></script>

		<!-- Circle Progress Js-->
		<script src="../js/vendors/circle-progress.min.js"></script>

		<!-- Star Rating Js-->
		<script src="../plugins/rating/jquery.rating-stars.js"></script>

		<!--Owl Carousel js -->
		<script src="../plugins/owl-carousel/owl.carousel.js"></script>

		<!--Horizontal Menu-->
		<script src="../plugins/Horizontal2/Horizontal-menu/horizontal.js"></script>

		<!--JQuery TouchSwipe js-->
		<script src="../js/jquery.touchSwipe.min.js"></script>

		<!--Select2 js -->
		<script src="../plugins/select2/select2.full.min.js"></script>
		<script src="../js/select2.js"></script>

		<!-- Cookie js -->
		<script src="../plugins/cookie/jquery.ihavecookies.js"></script>
		<script src="../plugins/cookie/cookie.js"></script>

		<!-- side-menu Js-->
		<script src="../plugins/toggle-sidebar/sidemenu.js"></script>

		<!-- Count Down-->
		<script src="../plugins/count-down/jquery.lwtCountdown-1.0.js"></script>

		<!-- Custom scroll bar Js-->
		<script src="../plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- sticky Js-->
		<script src="../js/sticky.js"></script>

		<!-- Custom Js-->
		<script src="../js/custom.js"></script>
		<script src="../js/custom2.js"></script>
		

		<!-- Datepicker js 날짜입력 -->
		<script src="../plugins/date-picker/spectrum.js"></script>
		<script src="../plugins/date-picker/jquery-ui.js"></script>
		<script src="../plugins/input-mask/jquery.maskedinput.js"></script>
		
		<!-- Inline js 날짜입력 -->
		<script src="../js/select2.js"></script>
		<script src="../js/formelements.js"></script>
	
		<!-- file uploads js -->
        <script src="../plugins/fileuploads/js/dropify.js"></script>	
	

	
	</body>
</html>
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
								<li aria-haspopup="true"><a href="#" class="active">Pages <span class="fa fa-caret-down m-0"></span></a>
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

		<!--Sliders Section-->
		<section>
			<div class="bannerimg cover-image bg-background3" data-image-src="../images/banners/banner2.jpg">
				<div class="header-text mb-0">
					<div class="container">
						<div class="text-center text-white ">
							<h1>Ad Post</h1>
							<ol class="breadcrumb text-center">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item"><a href="#">Pages</a></li>
								<li class="breadcrumb-item active text-white" aria-current="page">Ad Post</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/Sliders Section-->

		<!--Add posts-section-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-8">
						<div class="card mb-xl-0">
							<div class="card-header">
								<h3 class="card-title">Add Post</h3>
							</div>
							<div class="card-body">
								<form id="commentForm" method="get" class="form-horizontal mb-0">
									<div id="rootwizard" class="border pt-0">
										<ul class="nav nav-tabs nav-justified">
											<li class="nav-item"><a href="#first" data-toggle="tab" class="nav-link font-bold">Select category</a></li>
											<li class="nav-item"><a href="#second" data-toggle="tab" class="nav-link font-bold">Details</a></li>
											<li class="nav-item"><a href="#third" data-toggle="tab" class="nav-link font-bold">Personal Details</a></li>
											<li class="nav-item"><a href="#fourth" data-toggle="tab" class="nav-link font-bold">Payment</a></li>
										</ul>
										<div class="tab-content card-body mt-3 mb-0 b-0">
											<div class="tab-pane fade" id="first">
												<div class="control-group form-group">
													<div class="form-group">
														<label class="form-label text-dark">Ad Title</label>
														<input type="text" class="form-control required Title" placeholder="">
													</div>
												</div>
												<div class="control-group form-group">
													<div class="form-group">
														<label class="form-label text-dark">Category</label>
														<select class="form-control custom-select required category">
															<option value="0">Select Option</option>
															<option value="1">RealEstate</option>
															<option value="2">Restaurant</option>
															<option value="3">Health & Fitness</option>
															<option value="4">Travel</option>
															<option value="5">Computer</option>
															<option value="6">Electronics</option>
															<option value="7">Jobs</option>
															<option value="8">Beauty & Spa</option>
															<option value="9">Clothing</option>
															<option value="10">Home & Furniture</option>
															<option value="11">Vehicles</option>
															<option value="12">Education</option>
															<option value="13">Services</option>
															<option value="14">Events</option>
														</select>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="second">
												<div class="control-group form-group">
													<label class="form-label text-dark">Type of Ad</label>
													<div class="d-flex ad-post-details">
														<label class="custom-control custom-radio mb-2 mr-4 ">
															<input type="radio" class="custom-control-input" name="radios1" value="option1" checked="">
															<span class="custom-control-label"><a href="#" class="text-muted">I Want to Sell</a></span>
														</label>
														<label class="custom-control custom-radio  mb-2">
															<input type="radio" class="custom-control-input" name="radios1" value="option2" >
															<span class="custom-control-label"><a href="#" class="text-muted">I Want to Buy</a></span>
														</label>
													</div>
												</div>
												<div class="control-group form-group">
													<label class="form-label text-dark">Type of Condition</label>
													<div class="d-flex ad-post-details">
														<label class="custom-control custom-radio mb-2 mr-4">
															<input type="radio" class="custom-control-input" name="radios2" value="option1" checked="">
															<span class="custom-control-label"><a href="#" class="text-muted">New </a></span>
														</label>
														<label class="custom-control custom-radio  mb-2">
															<input type="radio" class="custom-control-input" name="radios2" value="option2" >
															<span class="custom-control-label"><a href="#" class="text-muted">Used</a></span>
														</label>
													</div>
												</div>
												<div class="control-group form-group">
													<label class="form-label text-dark">Description</label>
													<textarea class="form-control required" name="example-textarea-input" rows="6" placeholder="text here.."></textarea>
												</div>
												<div class="control-group form-group">
													<div class="custom-file">
														<input type="file" class="custom-file-input required" name="example-file-input-custom">
														<label class="custom-file-label">Upload Images</label>
													</div>
												</div>
												<div class="control-group form-group">
													<label class="form-label text-dark">Ad Post Package</label>
													<div class="d-md-flex ad-post-details">
														<label class="custom-control custom-radio mb-2 mr-4">
															<input type="radio" class="custom-control-input" name="radios1" value="option1" checked="">
															<span class="custom-control-label"><a href="#" class="text-muted">30 Days Free</a></span>
														</label>
														<label class="custom-control custom-radio  mb-2 mr-4">
															<input type="radio" class="custom-control-input" name="radios1" value="option2" >
															<span class="custom-control-label"><a href="#" class="text-muted">60 days / 20$</a></span>
														</label>
														<label class="custom-control custom-radio  mb-2 mr-4">
															<input type="radio" class="custom-control-input" name="radios1" value="option3" >
															<span class="custom-control-label"><a href="#" class="text-muted">6months / 50$</a></span>
														</label>
														<label class="custom-control custom-radio  mb-2">
															<input type="radio" class="custom-control-input" name="radios1" value="option4" >
															<span class="custom-control-label"><a href="#" class="text-muted">1 year / 80$</a></span>
														</label>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="third">
												<div class="control-group form-group">
													<label class="form-label">Name</label>
													<input type="text" class="form-control required" placeholder="Name">
												</div>
												<div class="control-group form-group">
													<label class="form-label">Email</label>
													<input type="email" class="form-control required" placeholder="Email Address">
												</div>
												<div class="control-group form-group">
													<label class="form-label">Phone Number</label>
													<input type="number" class="form-control required" placeholder="Number">
												</div>
												<div class="control-group form-group mb-0">
													<label class="form-label">Address</label>
													<input type="text" class="form-control required" placeholder="Address">
												</div>
											</div>
											<div class="tab-pane fade" id="fourth">
												<div class="panel panel-primary">
													<div class=" tab-menu-heading border-0 pl-0 pr-0 pt-0">
														<div class="tabs-menu1 ">
															<!-- Tabs -->
															<ul class="nav panel-tabs">
																<li><a href="#tab5" class="active" data-toggle="tab">Credit/ Debit Card</a></li>
																<li><a href="#tab6" data-toggle="tab">Pay-pal</a></li>
																<li><a href="#tab7" data-toggle="tab">Net Banking</a></li>
																<li><a href="#tab8" data-toggle="tab">Gift Voucher</a></li>
															</ul>
														</div>
													</div>
													<div class="panel-body tabs-menu-body pl-0 pr-0 border-0">
														<div class="tab-content">
															<div class="tab-pane active " id="tab5">
																<div class="form-group">
																	<label class="form-label" >CardHolder Name</label>
																	<input type="text" class="form-control" id="name1" placeholder="First Name">
																</div>
																<div class="form-group">
																	<label class="form-label">Card number</label>
																	<div class="input-group">
																		<input type="text" class="form-control" placeholder="Search for...">
																		<span class="input-group-append">
																			<button class="btn btn-info" type="button"><i class="fa fa-cc-visa"></i> &nbsp; <i class="fa fa-cc-amex"></i> &nbsp;
																			<i class="fa fa-cc-mastercard"></i></button>
																		</span>
																	</div>
																</div>
																<div class="row">
																	<div class="col-sm-8">
																		<div class="form-group mb-sm-0">
																			<label class="form-label">Expiration</label>
																			<div class="input-group">
																				<input type="number" class="form-control" placeholder="MM" name="expiremonth">
																				<input type="number" class="form-control" placeholder="YY" name="expireyear">
																			</div>
																		</div>
																	</div>
																	<div class="col-sm-4 ">
																		<div class="form-group mb-0">
																			<label class="form-label">CVV <i class="fa fa-question-circle"></i></label>
																			<input type="number" class="form-control" required="">
																		</div>
																	</div>
																</div>
															</div>
															<div class="tab-pane " id="tab6">
																<h6 class="font-weight-semibold">Paypal is easiest way to pay online</h6>
																<p><a href="#" class="btn btn-primary"><i class="fa fa-paypal"></i> Log in my Paypal</a></p>
																<p class="mb-0"><strong>Note:</strong> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
															</div>
															<div class="tab-pane " id="tab7">
																<div class="control-group form-group">
																	<div class="form-group">
																		<label class="form-label text-dark">All Banks</label>
																		<select class="form-control custom-select required category">
																			<option value="0">Select Bank</option>
																			<option value="1">Credit Agricole Group</option>
																			<option value="2">Bank of America</option>
																			<option value="3">Mitsubishi UFJ Financial Group</option>
																			<option value="4">BNP Paribas</option>
																			<option value="5">JPMorgan Chase & Co.</option>
																			<option value="6">HSBC Holdings</option>
																			<option value="7">Bank of China</option>
																			<option value="8">Agricultural Bank of China</option>
																			<option value="9">China Construction Bank Corp.</option>
																			<option value="10">Industrial & Commercial Bank of China, or ICBC</option>
																		</select>
																	</div>
																</div>
																<p><a href="#" class="btn btn-primary">Log in Bank</a></p>
															</div>
															<div class="tab-pane " id="tab8">
																<div class="form-group">
																	<label class="form-label">Gift Voucher</label>
																	<div class="input-group">
																		<input type="text" class="form-control" placeholder="Enter Your Gv Number">
																		<span class="input-group-append">
																			<button class="btn btn-info" type="button">
																			Apply</button>
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group row clearfix">
													<div class="col-lg-12">
														<div class="checkbox checkbox-info">
															<label class="custom-control mt-4 custom-checkbox">
																<input type="checkbox" class="custom-control-input" />
																<span class="custom-control-label text-dark pl-2">I agree with the Terms and Conditions.</span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<ul class="list-inline wizard mb-0 mt-4">
												<li class="previous list-inline-item"><a href="#" class="btn btn-secondary mb-0 waves-effect waves-light">Previous</a>
												</li>
												<li class="next list-inline-item float-right"><a href="#" class="btn btn-primary  mb-0 mr-2 waves-effect waves-light">Continue</a></li>
											</ul>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-xl-4">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Terms And Conditions</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec vertical-scroll mb-0">
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Money Not Refundable
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>You can renew your Premium ad after experted.
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are active for depend on package.
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Money Not Refundable
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>You can renew your Premium ad after experted.
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are active for depend on package.
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Money Not Refundable
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>You can renew your Premium ad after experted.
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are active for depend on package.
									</li>
								</ul>
							</div>
						</div>
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">Benefits Of Premium Ad</h3>
							</div>
							<div class="card-body">
								<ul class="list-unstyled widget-spec  mb-0">
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium Ads Active
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads are displayed on top
									</li>
									<li>
										<i class="fa fa-check text-success" aria-hidden="true"></i>Premium ads will be Show in Google results
									</li>
									<li class="ml-5 mb-0">
										<a href="tips.html"> View more..</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div> <!-- end row -->
			</div>
		</section>
		<!--/Add posts-section-->

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

		<!-- Form wizard js -->
        <script src="../plugins/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
        <script src="../plugins/jquery-validation/dist/jquery.validate.min.js"></script>
		<script src="../js/wizard.js"></script>

		<!-- Custom scroll bar Js-->
		<script src="../plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- sticky Js-->
		<script src="../js/sticky.js"></script>

		<!-- Vertical scroll bar Js-->
		<script src="../plugins/vertical-scroll/jquery.bootstrap.newsbox.js"></script>
		<script src="../plugins/vertical-scroll/vertical-scroll.js"></script>

		<!-- Swipe Js-->
		<script src="../js/swipe.js"></script>

		<!-- Custom Js-->
		<script src="../js/custom.js"></script>
		<script src="../js/custom2.js"></script>
	</body>
</html>
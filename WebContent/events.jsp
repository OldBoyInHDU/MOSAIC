<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>Musik | Web Application</title>
<meta name="description"
	content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="stylesheet" href="js/jPlayer/jplayer.flat.css"
	type="text/css" />
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="css/animate.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
<link rel="stylesheet" href="css/font.css" type="text/css" />
<link rel="stylesheet" href="css/app.css" type="text/css" />
<!--[if lt IE 9]>
    <script src="js/ie/html5shiv.js"></script>
    <script src="js/ie/respond.min.js"></script>
    <script src="js/ie/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
	<section class="vbox">
		<header
			class="bg-white-only header header-md navbar navbar-fixed-top-xs">
			<div class="navbar-header aside bg-primary nav-xs">
				<a class="btn btn-link visible-xs"
					data-toggle="class:nav-off-screen,open" data-target="#nav,html">
					<i class="icon-list"></i>
				</a> <a href="index.html" class="navbar-brand text-lt"> <i
					class="icon-earphones"></i> <img src="images/logo.png" alt="."
					class="hide"> <span class="hidden-nav-xs m-l-sm">Musik</span>
				</a> <a class="btn btn-link visible-xs" data-toggle="dropdown"
					data-target=".user"> <i class="icon-settings"></i>
				</a>
			</div>
			<ul class="nav navbar-nav hidden-xs">
				<li><a href="#nav,.navbar-header"
					data-toggle="class:nav-xs,nav-xs" class="text-muted"> <i
						class="fa fa-indent text"></i> <i class="fa fa-dedent text-active"></i>
				</a></li>
			</ul>
			<form
				class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs"
				role="search">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-btn">
							<button type="submit"
								class="btn btn-sm bg-white btn-icon rounded">
								<i class="fa fa-search"></i>
							</button>
						</span> <input type="text"
							class="form-control input-sm no-border rounded"
							placeholder="Search songs, albums...">
					</div>
				</div>
			</form>
			<div class="navbar-right ">
				<ul class="nav navbar-nav m-n hidden-xs nav-user user">
					<li class="hidden-xs"><a href="#" class="dropdown-toggle lt"
						data-toggle="dropdown"> <i class="icon-bell"></i> <span
							class="badge badge-sm up bg-danger count">2</span>
					</a>
						<section class="dropdown-menu aside-xl animated fadeInUp">
							<section class="panel bg-white">
								<div class="panel-heading b-light bg-light">
									<strong>You have <span class="count">2</span>
										notifications
									</strong>
								</div>
								<div class="list-group list-group-alt">
									<a href="#" class="media list-group-item"> <span
										class="pull-left thumb-sm"> <img src="images/a0.png"
											alt="..." class="img-circle">
									</span> <span class="media-body block m-b-none"> Use awesome
											animate.css<br> <small class="text-muted">10
												minutes ago</small>
									</span>
									</a> <a href="#" class="media list-group-item"> <span
										class="media-body block m-b-none"> 1.0 initial released<br>
											<small class="text-muted">1 hour ago</small>
									</span>
									</a>
								</div>
								<div class="panel-footer text-sm">
									<a href="#" class="pull-right"><i class="fa fa-cog"></i></a> <a
										href="#notes" data-toggle="class:show animated fadeInRight">See
										all the notifications</a>
								</div>
							</section>
						</section></li>
					<c:if test="${empty user}">
						<li class="hidden-xs"><a
							href="${pageContext.request.contextPath}/register.jsp"> <span>登录</span>
						</a></li>
						<li class="hidden-xs"><a
							href="${pageContext.request.contextPath}/register.jsp"> <span>注册</span>
						</a></li>
					</c:if>
					<c:if test="${!empty user}">
						<li class="hidden-xs"><a href="#"> <span>${user.username}</span>
						</a></li>
						<li class="hidden-xs"><a href="#"> <span>欢迎您</span>
						</a></li>
					</c:if>
					<!--         <li class="dropdown">
            <a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown">
              <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                <img src="images/a0.png" alt="...">
              </span>
              John.Smith <b class="caret"></b>
            </a>
            <ul class="dropdown-menu animated fadeInRight">            
              <li>
                <span class="arrow top"></span>
                <a href="#">Settings</a>
              </li>
              <li>
                <a href="profile.html">Profile</a>
              </li>
              <li>
                <a href="#">
                  <span class="badge bg-danger pull-right">3</span>
                  Notifications
                </a>
              </li>
              <li>
                <a href="docs.html">Help</a>
              </li>
              <li class="divider"></li>
              <li>
                <a href="modal.lockme.html" data-toggle="ajaxModal" >Logout</a>
              </li>
            </ul>
          </li> -->
				</ul>
			</div>
		</header>
		<section>
			<section class="hbox stretch">
				<!-- .aside -->
				<aside class="bg-black dk nav-xs aside hidden-print" id="nav">
					<section class="vbox">
						<section class="w-f-md scrollable">
							<div class="slim-scroll" data-height="auto"
								data-disable-fade-out="true" data-distance="0" data-size="10px"
								data-railOpacity="0.2">



								<!-- nav -->
								<nav class="nav-primary hidden-xs">
									<ul class="nav bg clearfix">
										<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
											Discover</li>
										<li><a href="${pageContext.request.contextPath}/index.jsp"> <i
												class="icon-disc icon text-success"></i> <span
												class="font-bold">What's new</span>
										</a></li>
										<li><a href="${pageContext.request.contextPath}/genres.jsp"> <i
												class="icon-music-tone-alt icon text-info"></i> <span
												class="font-bold">Genres</span>
										</a></li>
										<li><a href="${pageContext.request.contextPath}/events.jsp"> <i
												class="icon-drawer icon text-primary-lter"></i> <b
												class="badge bg-primary pull-right">6</b> <span
												class="font-bold">Events</span>
										</a></li>
										<li><a href="${pageContext.request.contextPath}/listen.jsp"> <i
												class="icon-list icon  text-info-dker"></i> <span
												class="font-bold">Listen</span>
										</a></li>
										<li><a href="${pageContext.request.contextPath}/video.jsp" data-target="#content"
											data-el="#bjax-el" data-replace="true"> <i
												class="icon-social-youtube icon  text-primary"></i> <span
												class="font-bold">Video</span>
										</a></li>
										<li class="m-b hidden-nav-xs"></li>
									</ul>
							<!-- 		<ul class="nav" data-ride="collapse">
										<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
											Interface</li>
										<li><a href="#" class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-angle-left text"></i> <i
													class="fa fa-angle-down text-active"></i>
											</span> <i class="icon-screen-desktop icon"> </i> <span>Layouts</span>
										</a>
											<ul class="nav dk text-sm">
												<li><a href="layout-color.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Color
															option</span>
												</a></li>
												<li><a href="layout-boxed.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Boxed
															layout</span>
												</a></li>
												<li><a href="layout-fluid.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Fluid
															layout</span>
												</a></li>
											</ul></li>
										<li><a href="#" class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-angle-left text"></i> <i
													class="fa fa-angle-down text-active"></i>
											</span> <i class="icon-chemistry icon"> </i> <span>UI Kit</span>
										</a>
											<ul class="nav dk text-sm">
												<li><a href="buttons.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Buttons</span>
												</a></li>
												<li><a href="icons.html" class="auto"> <b
														class="badge bg-info pull-right">369</b> <i
														class="fa fa-angle-right text-xs"></i> <span>Icons</span>
												</a></li>
												<li><a href="http://www.weidea.net" class="auto"> <b
														class="badge bg-info pull-right">369</b> <i
														class="fa fa-angle-right text-xs"></i> <span>More</span>
												</a></li>
												<li><a href="grid.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Grid</span>
												</a></li>
												<li><a href="widgets.html" class="auto"> <b
														class="badge bg-dark pull-right">8</b> <i
														class="fa fa-angle-right text-xs"></i> <span>Widgets</span>
												</a></li>
												<li><a href="components.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Components</span>
												</a></li>
												<li><a href="list.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>List
															group</span>
												</a></li>
												<li><a href="#table" class="auto"> <span
														class="pull-right text-muted"> <i
															class="fa fa-angle-left text"></i> <i
															class="fa fa-angle-down text-active"></i>
													</span> <i class="fa fa-angle-right text-xs"></i> <span>Table</span>
												</a>
													<ul class="nav dker">
														<li><a href="table-static.html"> <i
																class="fa fa-angle-right"></i> <span>Table static</span>
														</a></li>
														<li><a href="table-datatable.html"> <i
																class="fa fa-angle-right"></i> <span>Datatable</span>
														</a></li>
													</ul></li>
												<li><a href="#form" class="auto"> <span
														class="pull-right text-muted"> <i
															class="fa fa-angle-left text"></i> <i
															class="fa fa-angle-down text-active"></i>
													</span> <i class="fa fa-angle-right text-xs"></i> <span>Form</span>
												</a>
													<ul class="nav dker">
														<li><a href="form-elements.html"> <i
																class="fa fa-angle-right"></i> <span>Form
																	elements</span>
														</a></li>
														<li><a href="form-validation.html"> <i
																class="fa fa-angle-right"></i> <span>Form
																	validation</span>
														</a></li>
														<li><a href="form-wizard.html"> <i
																class="fa fa-angle-right"></i> <span>Form wizard</span>
														</a></li>
													</ul></li>
												<li><a href="chart.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Chart</span>
												</a></li>
												<li><a href="portlet.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Portlet</span>
												</a></li>
												<li><a href="timeline.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Timeline</span>
												</a></li>
											</ul></li>
										<li><a href="#" class="auto"> <span
												class="pull-right text-muted"> <i
													class="fa fa-angle-left text"></i> <i
													class="fa fa-angle-down text-active"></i>
											</span> <i class="icon-grid icon"> </i> <span>Pages</span>
										</a>
											<ul class="nav dk text-sm">
												<li><a href="profile.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Profile</span>
												</a></li>
												<li><a href="blog.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Blog</span>
												</a></li>
												<li><a href="invoice.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Invoice</span>
												</a></li>
												<li><a href="gmap.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Google
															Map</span>
												</a></li>
												<li><a href="jvectormap.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Vector
															Map</span>
												</a></li>
												<li><a href="signin.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Signin</span>
												</a></li>
												<li><a href="signup.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>Signup</span>
												</a></li>
												<li><a href="404.html" class="auto"> <i
														class="fa fa-angle-right text-xs"></i> <span>404</span>
												</a></li>
											</ul></li>
									</ul>
									<ul class="nav text-sm">
										<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
											<span class="pull-right"><a href="#"><i
													class="icon-plus i-lg"></i></a></span> Playlist
										</li>
										<li><a href="#"> <i class="icon-music-tone icon"></i>
												<span>Hip-Pop</span>
										</a></li>
										<li><a href="#"> <i
												class="icon-playlist icon text-success-lter"></i> <b
												class="badge bg-success dker pull-right">9</b> <span>Jazz</span>
										</a></li>
									</ul> -->
								</nav>
								<!-- / nav -->
							</div>
						</section>

						<footer class="footer hidden-xs no-padder text-center-nav-xs">
							<div class="bg hidden-xs ">
								<div class="dropdown dropup wrapper-sm clearfix">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										<span class="thumb-sm avatar pull-left m-l-xs"> <img
											src="images/a3.png" class="dker" alt="..."> <i
											class="on b-black"></i>
									</span> <span class="hidden-nav-xs clear"> <span
											class="block m-l"> <strong class="font-bold text-lt">John.Smith</strong>
												<b class="caret"></b>
										</span> <span class="text-muted text-xs block m-l">Art
												Director</span>
									</span>
									</a>
									<ul class="dropdown-menu animated fadeInRight aside text-left">
										<li><span class="arrow bottom hidden-nav-xs"></span> <a
											href="#">Settings</a></li>
										<li><a href="profile.html">Profile</a></li>
										<li><a href="#"> <span
												class="badge bg-danger pull-right">3</span> Notifications
										</a></li>
										<li><a href="docs.html">Help</a></li>
										<li class="divider"></li>
										<li><a href="modal.lockme.html" data-toggle="ajaxModal">Logout</a>
										</li>
									</ul>
								</div>
							</div>
						</footer>
					</section>
				</aside>
				<!-- /.aside -->
				<section id="content">
					<section class="vbox">
						<section class="scrollable">
							<div id="masonry" class="pos-rlt animated fadeInUpBig">
								<div class="item">
									<div class="carousel slide auto" data-interval="3000">
										<div class="carousel-inner">
											<div class="item active">
												<div
													class="item-overlay opacity animated fadeInDown wrapper bg-info">
													<p class="text-white">N.01</p>
													<div class="center text-center m-t-n">
														<a href="#"><i class="icon-control-play i-2x"></i></a>
													</div>
												</div>
												<div class="bottom wrapper bg-info gd">
													<div class="m-t m-b">
														<a href="#"
															class="b-b b-danger h2 text-u-c text-lt font-bold">Teideal</a>
													</div>
													<p class="hidden-xs">Morbi nec nunc condimentum,
														egestas dui nec, fermentum diam. Vivamus vel tincidunt
														libero, vitae elementum ligula</p>
												</div>
												<a href="#"><img src="images/m20.jpg" alt=""
													class="img-full"></a>
											</div>
											<div class="item">
												<div
													class="item-overlay opacity animated fadeInDown wrapper bg-info">
													<p class="text-white">N.02</p>
													<div class="center text-center m-t-n">
														<a href="#"><i class="icon-control-play i-2x"></i></a>
													</div>
												</div>
												<div class="bottom wrapper bg-info gd">
													<div class="m-t m-b">
														<a href="#"
															class="b-b b-warning h2 text-u-c text-lt font-bold">Tincidunt</a>
													</div>
													<p class="hidden-xs">Gestas dui nec, fermentum diam.
														Vivamus vel tincidunt libero, vitae ligula elementum</p>
												</div>
												<a href="#"><img src="images/m22.jpg" alt=""
													class="img-full"></a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="item-overlay gd animated fadeInUp wrapper bg-info">
										<p class="text-white">Watch later</p>
										<div class="center text-center m-t-n">
											<a href="#"><i class="icon-control-play i-2x"></i></a>
										</div>
									</div>
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Tincidunt</a>
										</div>
										<p class="hidden-xs">Vivamus vel tincidunt libero,
											lementum ligula vitae</p>
									</div>
									<a href="#"><img src="images/m31.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#"
												class="b-b b-warning h4 text-u-c text-lt font-bold">Duis</a>
										</div>
										<p class="hidden-xs">Tincidunt libero vitae elementum</p>
									</div>
									<a href="#"><img src="images/m10.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div
										class="item-overlay active bg-primary dker wrapper text-center">
										<div class="m-t m-b">
											<a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">lementum</a>
										</div>
										<p class="hidden-xs">lementum ligula vitae est quis congue
											ero</p>
									</div>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Diam</a>
										</div>
										<p class="hidden-xs">Con malesuada est, quis congue nibhs</p>
									</div>
									<a href="#"><img src="images/m4.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="carousel carousel-fade bg-info slide auto"
										data-interval="6000">
										<div class="carousel-inner">
											<div class="item active">
												<div class="item-overlay active dker wrapper text-center">
													<div class="m-t m-b">
														<a href="#"
															class="b-b b-info h4 text-u-c text-lt font-bold">Cosies</a>
													</div>
													<p class="hidden-xs">Duis non malesuada est, quis
														congue nibh</p>
												</div>
												<a href="#"><img src="images/m4.jpg" alt=""
													class="img-full"></a>
											</div>
											<div class="item">
												<div class="item-overlay active dk wrapper text-center">
													<div class="m-t m-b">
														<a href="#"
															class="b-b b-info h4 text-u-c text-lt font-bold">Malesuada</a>
													</div>
													<p class="hidden-xs">Aliquam sollicitudin venenatis
														congue nibh</p>
												</div>
												<a href="#"><img src="images/m4.jpg" alt=""
													class="img-full"></a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Vivamus</a>
										</div>
										<p class="hidden-xs">Morbi id neque quam. Aliquam
											sollicitudin venenatis ipsum</p>
									</div>
									<a href="#"><img src="images/m13.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#"
												class="b-b b-warning h4 text-u-c text-lt font-bold">Libero</a>
										</div>
										<p class="hidden-xs">Aliquam sollicitudin venenatis ipsum</p>
									</div>
									<a href="#"><img src="images/m30.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">habitant</a>
										</div>
										<p class="hidden-xs">Vel tincidunt libero, vitae ligula
											tristique</p>
									</div>
									<a href="#"><img src="images/m19.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div
										class="item-overlay active bg-success dker wrapper text-center">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Ligula</a>
										</div>
										<p class="hidden-xs">Sesuada est, quis congue tincidunt
											libero nibh ligula</p>
									</div>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Malesuada</a>
										</div>
										<p class="hidden-xs">Pellentesque habitant morbi tristique
											sodales</p>
									</div>
									<a href="#"><img src="images/m7.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Donec</a>
										</div>
										<p class="hidden-xs">Vestibulum ullamcorper</p>
									</div>
									<a href="#"><img src="images/m18.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#"
												class="b-b b-primary h4 text-u-c text-lt font-bold">Eleifend</a>
										</div>
										<p class="hidden-xs">Malesuada augue. Donec eleifend
											condimentum</p>
									</div>
									<a href="#"><img src="images/m32.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Sollicitudin
											</a>
										</div>
										<p class="hidden-xs">Mauris convallis mauris at
											pellentesque volutpat</p>
									</div>
									<a href="#"><img src="images/m40.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#"
												class="b-b b-warning h2 text-u-c text-lt font-bold">Senectus
											</a>
										</div>
										<p class="hidden-xs">Fermentum diam. Vivamus vel tincidunt
											libero, vitae elementum ligula</p>
									</div>
									<a href="#"><img src="images/m21.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Phasellus</a>
										</div>
										<p class="hidden-xs">Senectus et netus et malesuada fames</p>
									</div>
									<a href="#"><img src="images/m5.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Neque</a>
										</div>
										<p class="hidden-xs">Consectetur adipiscing elit. Morbi id
											neque quam</p>
									</div>
									<a href="#"><img src="images/a10.png" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Nisi
												ne</a>
										</div>
										<p class="hidden-xs">Orbi tristique senectus et netus et
											malesuada</p>
									</div>
									<a href="#"><img src="images/m4.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div
										class="item-overlay active bg-warning dker wrapper text-center">
										<div class="m-t m-b">
											<a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Morbi</a>
										</div>
										<p class="hidden-xs">Dolor sit amet, consectetur
											adipiscing elit.</p>
									</div>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a>
										</div>
										<p class="hidden-xs">Malesuada est, quis congue nibh</p>
									</div>
									<a href="#"><img src="images/m6.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="item-overlay active bg-info lt wrapper text-center">
										<div class="m-t m-b">
											<a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Csesoi</a>
										</div>
										<p class="hidden-xs">Dolor sit ectetur elit senectus et
											malesuada</p>
									</div>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Consectetur</a>
										</div>
										<p class="hidden-xs">Adipiscing elit senectus et netus
											mal.</p>
									</div>
									<a href="#"><img src="images/m42.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Morbi</a>
										</div>
										<p class="hidden-xs">Dolor sit amet, consectetur
											adipiscing elit.</p>
									</div>
									<a href="#"><img src="images/m9.jpg" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Soesle</a>
										</div>
										<p class="hidden-xs">Adipiscing elituis congue</p>
									</div>
									<a href="#"><img src="images/a7.png" alt=""
										class="img-full"></a>
								</div>
								<div class="item">
									<div class="bottom gd bg-info wrapper">
										<div class="m-t m-b">
											<a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a>
										</div>
										<p class="hidden-xs">Malesuada est, congue nibh quis
											elituis</p>
									</div>
									<a href="#"><img src="images/m12.jpg" alt=""
										class="img-full"></a>
								</div>
							</div>
						</section>
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
				</section>
			</section>
		</section>
	</section>
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.js"></script>
	<!-- App -->
	<script src="js/app.js"></script>
	<script src="js/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="js/masonry/tiles.min.js"></script>
	<script src="js/masonry/demo.js"></script>
	<script src="js/app.plugin.js"></script>
	<script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script type="text/javascript" src="js/jPlayer/demo.js"></script>

</body>
</html>
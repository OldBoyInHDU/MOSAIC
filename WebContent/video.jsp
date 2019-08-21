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
<link rel="stylesheet" href="static/css/jplayer.flat.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="static/css/animate.css" type="text/css" />
<link rel="stylesheet" href="static/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/simple-line-icons.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/font.css" type="text/css" />
<link rel="stylesheet" href="static/css/app.css" type="text/css" />
<!--[if lt IE 9]>
    <script src="static/js/html5shiv.js"></script>
    <script src="static/js/respond.min.js"></script>
    <script src="static/js/excanvas.js"></script>
  <![endif]-->
</head>
<body class="">
	<section class="vbox">
		<header
			class="bg-white-only header header-md navbar navbar-fixed-top-xs">
			<div class="navbar-header aside bg-info dk">
				<a class="btn btn-link visible-xs"
					data-toggle="class:nav-off-screen,open" data-target="#nav,html">
					<i class="icon-list"></i>

				</a> <a href="${pageContext.request.contextPath}/index.jsp"
					class="navbar-brand text-lt"> <i class="icon-earphones"></i> <img
					src="static/picture/logo.png" alt="." class="hide"> <span
					class="hidden-nav-xs m-l-sm">Musik</span>
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
										class="pull-left thumb-sm"> <img
											src="static/picture/a0.png" alt="..." class="img-circle">
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
					<!-- <li class="dropdown">
            <a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown">
              <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                <img src="static/picture/a0.png" alt="...">
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
				<aside class="bg-black dk aside hidden-print" id="nav">
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
										<li><a
											href="${pageContext.request.contextPath}/index.jsp"> <i
												class="icon-disc icon text-success"></i> <span
												class="font-bold">What's new</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/SongServlet?method=songType&type=%E6%89%80%E6%9C%89%E6%AD%8C%E6%9B%B2"> <i
												class="icon-music-tone-alt icon text-info"></i> <span
												class="font-bold">Genres</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/events.jsp"> <i
												class="icon-drawer icon text-primary-lter"></i> <b
												class="badge bg-primary pull-right">6</b> <span
												class="font-bold">Events</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/listen.jsp"> <i
												class="icon-list icon  text-info-dker"></i> <span
												class="font-bold">Listen</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/video.jsp"
											data-target="#content" data-el="#bjax-el" data-replace="true">
												<i class="icon-social-youtube icon  text-primary"></i> <span
												class="font-bold">Video</span>
										</a></li>
										<li class="m-b hidden-nav-xs"></li>
									</ul>
								</nav>
								<!-- / nav -->
							</div>
						</section>

						<footer class="footer hidden-xs no-padder text-center-nav-xs">
							<div class="bg hidden-xs ">
								<div class="dropdown dropup wrapper-sm clearfix">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										<span class="thumb-sm avatar pull-left m-l-xs"> <img
											src="static/picture/a3.png" class="dker" alt="..."> <i
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
					<section class="vbox" id="bjax-el">
						<section class="scrollable padder-lg">
							<h2 class="font-thin m-b">Video</h2>
							<div class="row row-sm">
								<div class="col-xs-12 col-sm-4">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<div class="top">
												<span class="badge bg-dark m-l-sm m-t-sm">03:20</span>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m40.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Tempered
												Song</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Miaow</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<div class="top">
												<span class="badge bg-dark m-l-sm m-t-sm">02:10</span>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m41.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Morbi
												id neque quam</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Phasellus</a>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-4">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<div class="top">
												<span class="badge bg-dark m-l-sm m-t-sm">05:40</span>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m42.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Aliquam
												sollicitudin venenatis ipsum</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Malesuada</a>
										</div>
									</div>
								</div>
							</div>
							<h3 class="font-thin m-b">Video List</h3>
							<div class="row row-sm">
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m40.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Tempered
												Song</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Miaow</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m41.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Morbi
												id neque quam</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Phasellus</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m42.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Aliquam
												sollicitudin venenatis ipsum</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Malesuada</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m43.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Citudin
												venenatis ipsum ac</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Volutpat</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m44.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Vestibulum
												ullamcorper sodales nisi</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Mauris Qiaos</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m40.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Mauris
												convallis mauris at</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Neque</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m45.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Sodales
												nisi nec condimentum</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Augue</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m44.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Nisi
												nec condimentum</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Miaow</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m43.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Phasellus
												at ultricies nequ</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Volutpat</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m42.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Quis
												malesuada augue</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Feugiat</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m41.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Ipsum
												ac feugiat</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Quam AC</a>
										</div>
									</div>
								</div>
								<div class="col-xs-6 col-sm-4 col-md-3">
									<div class="item">
										<div class="pos-rlt">
											<div class="item-overlay opacity r r-2x bg-black">
												<div class="center text-center m-t-n">
													<a href="video-detail.html"><i
														class="fa fa-play-circle i-2x"></i></a>
												</div>
											</div>
											<a href="video-detail.html"><img
												src="static/picture/m40.jpg" alt="" class="r r-2x img-full"></a>
										</div>
										<div class="padder-v">
											<a href="video-detail.html" class="text-ellipsis">Ullamcorper
												sodales nisi nec condimentu</a> <a href="video-detail.html"
												class="text-ellipsis text-xs text-muted">Convallis</a>
										</div>
									</div>
								</div>
							</div>
							<ul class="pagination pagination">
								<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
							</ul>
						</section>
					</section>
					<a href="#" class="hide nav-off-screen-block"
						data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
				</section>
			</section>
		</section>
	</section>
	<script src="static/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="static/js/bootstrap.js"></script>
	<!-- App -->
	<script src="static/js/app.js"></script>
	<script src="static/js/jquery.slimscroll.min.js"></script>
	<script src="static/js/app.plugin.js"></script>
	<script type="text/javascript" src="static/js/jquery.jplayer.min.js"></script>
	<script type="text/javascript" src="static/js/jplayer.playlist.min.js"></script>
	<script type="text/javascript" src="static/js/demo.js"></script>
</body>
</html>
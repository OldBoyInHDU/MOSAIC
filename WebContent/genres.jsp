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
<<<<<<< HEAD
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="css/animate.css" type="text/css" />
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="css/simple-line-icons.css" type="text/css" />
<link rel="stylesheet" href="css/font.css" type="text/css" />
<link rel="stylesheet" href="css/app.css" type="text/css" />
<script type="text/javascript">
function go(val) {
    $("#currentPage").val(parseInt($("#currentPage").val())+val);
    $("#page").submit();
}
</script>
=======
<link rel="stylesheet" href="static/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="static/css/animate.css" type="text/css" />
<link rel="stylesheet" href="static/css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/simple-line-icons.css"
	type="text/css" />
<link rel="stylesheet" href="static/css/font.css" type="text/css" />
<link rel="stylesheet" href="static/css/app.css" type="text/css" />
>>>>>>> refs/remotes/origin/master
<!--[if lt IE 9]>
    <script src="static/js/html5shiv.js"></script>
    <script src="static/js/respond.min.js"></script>
    <script src="static/js/excanvas.js"></script>
  <![endif]-->
  	<script>
	function go(val) {
        $("#currentPage").val(parseInt($("#currentPage").val())+val);
        $("#page").submit();
    }
	</script>
</head>
<body class="">
	<section class="vbox">
		<header
			class="bg-white-only header header-md navbar navbar-fixed-top-xs">
			<div class="navbar-header aside bg-info dk nav-xs">
				<a class="btn btn-link visible-xs"
					data-toggle="class:nav-off-screen,open" data-target="#nav,html">
					<i class="icon-list"></i>
<<<<<<< HEAD
				</a> <a href="index.jsp" class="navbar-brand text-lt"> <i
					class="icon-earphones"></i> <img src="images/logo.png" alt="."
					class="hide"> <span class="hidden-nav-xs m-l-sm">Musik</span>
=======
				</a> <a href="${pageContext.request.contextPath}/index.jsp"
					class="navbar-brand text-lt"> <i class="icon-earphones"></i> <img
					src="static/picture/logo.png" alt="." class="hide"> <span
					class="hidden-nav-xs m-l-sm">Musik</span>
>>>>>>> refs/remotes/origin/master
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
					<%--<li class="dropdown">
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
          </li>--%>
				</ul>
			</div>
		</header>
		<section>
			<section class="hbox stretch">
				<!-- .aside -->
				<aside class="bg-dark dk nav-xs aside hidden-print" id="nav">
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
												class="icon-disc icon  "></i> <span class="font-bold">What's
													new</span>
										</a></li>
										<li><a
<<<<<<< HEAD
											href="${pageContext.request.contextPath}/SongServlet?method=songType&type=%E6%89%80%E6%9C%89%E6%AD%8C%E6%9B%B2"> <i
												class="icon-music-tone-alt icon text-info"></i> <span
=======
											href="${pageContext.request.contextPath}/genres.jsp"> <i
												class="icon-music-tone-alt icon  "></i> <span
>>>>>>> refs/remotes/origin/master
												class="font-bold">Genres</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/events.jsp"> <i
												class="icon-drawer icon  "></i> <b
												class="badge bg-primary pull-right">6</b> <span
												class="font-bold">Events</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/listen.jsp"> <i
												class="icon-list icon   "></i> <span class="font-bold">Listen</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/video.jsp"
											data-target="#content" data-el="#bjax-el" data-replace="true">
												<i class="icon-social-youtube icon   "></i> <span
												class="font-bold">Video</span>
										</a></li>
										<li class="m-b hidden-nav-xs"></li>
									</ul>
									<!-- <ul class="nav" data-ride="collapse">
                    <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                      Interface
                    </li>
                    <li >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                        <i class="icon-screen-desktop icon">
                        </i>
                        <span>Layouts</span>
                      </a>
                      <ul class="nav dk text-sm">
                        <li >
                          <a href="layout-color.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Color option</span>
                          </a>
                        </li>
                        <li >
                          <a href="layout-boxed.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Boxed layout</span>
                          </a>
                        </li>
                        <li >
                          <a href="layout-fluid.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Fluid layout</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                        <i class="icon-chemistry icon">
                        </i>
                        <span>UI Kit</span>
                      </a>
                      <ul class="nav dk text-sm">
                        <li >
                          <a href="buttons.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Buttons</span>
                          </a>
                        </li>
                        <li >
                          <a href="icons.html" class="auto">                            
                            <b class="badge bg-info pull-right">369</b>                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Icons</span>
                          </a>
                        </li><li >
                          <a href="http://www.cssmoban.com" class="auto">                            
                            <b class="badge bg-info pull-right">369</b>                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>More</span>
                          </a>
                        </li>
                        <li >
                          <a href="grid.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Grid</span>
                          </a>
                        </li>
                        <li >
                          <a href="widgets.html" class="auto">                            
                            <b class="badge bg-dark pull-right">8</b>                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Widgets</span>
                          </a>
                        </li>
                        <li >
                          <a href="components.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Components</span>
                          </a>
                        </li>
                        <li >
                          <a href="list.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>List group</span>
                          </a>
                        </li>
                        <li >
                          <a href="#table" class="auto">                            
                            <span class="pull-right text-muted">
                              <i class="fa fa-angle-left text"></i>
                              <i class="fa fa-angle-down text-active"></i>
                            </span>                            
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Table</span>
                          </a>
                          <ul class="nav dker">
                            <li >
                              <a href="table-static.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Table static</span>
                              </a>
                            </li>
                            <li >
                              <a href="table-datatable.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Datatable</span>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li >
                          <a href="#form" class="auto">                            
                            <span class="pull-right text-muted">
                              <i class="fa fa-angle-left text"></i>
                              <i class="fa fa-angle-down text-active"></i>
                            </span>                            
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Form</span>
                          </a>
                          <ul class="nav dker">
                            <li >
                              <a href="form-elements.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Form elements</span>
                              </a>
                            </li>
                            <li >
                              <a href="form-validation.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Form validation</span>
                              </a>
                            </li>
                            <li >
                              <a href="form-wizard.html">
                                <i class="fa fa-angle-right"></i>
                                <span>Form wizard</span>
                              </a>
                            </li>
                          </ul>
                        </li>
                        <li >
                          <a href="chart.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Chart</span>
                          </a>
                        </li>
                        <li >
                          <a href="portlet.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Portlet</span>
                          </a>
                        </li>
                        <li >
                          <a href="timeline.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Timeline</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li >
                      <a href="#" class="auto">
                        <span class="pull-right text-muted">
                          <i class="fa fa-angle-left text"></i>
                          <i class="fa fa-angle-down text-active"></i>
                        </span>
                        <i class="icon-grid icon">
                        </i>
                        <span>Pages</span>
                      </a>
                      <ul class="nav dk text-sm">
                        <li >
                          <a href="profile.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Profile</span>
                          </a>
                        </li>
                        <li >
                          <a href="blog.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Blog</span>
                          </a>
                        </li>
                        <li >
                          <a href="invoice.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Invoice</span>
                          </a>
                        </li>
                        <li >
                          <a href="gmap.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Google Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="jvectormap.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Vector Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="signin.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Signin</span>
                          </a>
                        </li>
                        <li >
                          <a href="signup.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>Signup</span>
                          </a>
                        </li>
                        <li >
                          <a href="404.html" class="auto">                                                        
                            <i class="fa fa-angle-right text-xs"></i>

                            <span>404</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                  <ul class="nav text-sm">
                    <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                      <span class="pull-right"><a href="#"><i class="icon-plus i-lg"></i></a></span>
                      Playlist
                    </li>
                    <li>
                      <a href="#">
                        <i class="icon-music-tone icon"></i>
                        <span>Hip-Pop</span>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="icon-playlist icon text-success-lter"></i>
                        <b class="badge bg-success dker pull-right">9</b>
                        <span>Jazz</span>
                      </a>
                    </li>
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
					<section class="vbox">
					<section class="w-f-md" id="bjax-target">
							<section class="hbox stretch">
								<!-- side content -->
								<aside class="aside bg-light dk" id="sidebar">
									<section class="vbox animated fadeInUp">
										<section class="scrollable hover">
<<<<<<< HEAD
											<div class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none auto">
											<form action="${pageContext.request.contextPath }/SongServlet" id="songType">
												<input type="hidden" name="method" value="songType">
												<a href="genres.html"> 
												<button name="type" value="所有歌曲" class="list-group-item" style="width:100%">全部</button>
												</a> 
												<a href="genres.html">
												<button name="type" value="为情所困" class="list-group-item" style="width:100%">为情所困</button>
												</a> 
												<a href="genres.html">
												<button name="type" value="欢乐颂歌" class="list-group-item" style="width:100%">欢乐颂歌</button>
												</a> 
												<a href="genres.html" >
												<button name="type" value="心潮澎湃" class="list-group-item" style="width:100%">心潮澎湃</button>
												</a>  
											
											</form>
=======
											<div
												class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none auto">
												<form action="${pageContext.request.contextPath }/SongServlet" >
												<input type="hidden" name="method" value="songsType" >
												<a href="genres.jsp" >
													<button class="list-group-item" name="type" value="All" style="width:200px">
													All
													</button>
												</a> 
												<a href="genres.jsp">
													<button class="list-group-item" name="type" value="情歌" style="width:200px">
													1
													</button>
												</a> 
												<a href="genres.jsp" >
													<button class="list-group-item" name="type" value="欢快" style="width:200px">
													2
													</button>
												</a> 
												<a href="genres.jsp" >
													<button class="list-group-item" name="type" value="激情" style="width:200px">
													3
													</button>
												</a> 
												
												</form>
>>>>>>> refs/remotes/origin/master
											</div>
										</section>
									</section>
								</aside>
								<!-- / side content -->
								<section>
									<section class="vbox">
										<section class="scrollable padder-lg">
<<<<<<< HEAD
											<h2 class="font-thin m-b">${type }</h2>
											<div class="row row-sm" id="songType">
											<c:forEach items="${pageBean.list }" var="song">
											
=======
											<h2 class="font-thin m-b">Acoustic</h2>
											<c:forEach items="${pageBean.list}" var="song">
											<div class="row row-sm">
>>>>>>> refs/remotes/origin/master
												<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
													<div class="item">
														<div class="pos-rlt">
															<div class="item-overlay opacity r r-2x bg-black">
																<div class="center text-center m-t-n">
<<<<<<< HEAD
																	<a href="${pageContext.request.contextPath }/AddSongServlet?songid=${song.songid}"><i class="fa fa-play-circle i-2x"></i></a>
=======
																	<a href="${song.songurl}"><i class="fa fa-play-circle i-2x"></i></a>
>>>>>>> refs/remotes/origin/master
																</div>
															</div>
<<<<<<< HEAD
															<a href="track-detail.html"><img src="${pageContext.request.contextPath }${song.imgurl }"
																alt="" class="r r-2x img-full" style="height:250px"></a>
=======
															<a href="track-detail.html"><img
																src="${song.imgurl}" alt=""
																class="r r-2x img-full"></a>
>>>>>>> refs/remotes/origin/master
														</div>
														<div class="padder-v">
															<a href="track-detail.html" data-bjax
																data-target="#bjax-target" data-el="#bjax-el"
<<<<<<< HEAD
																data-replace="true" class="text-ellipsis">${song.name }</a> <a href="track-detail.html" data-bjax
																data-target="#bjax-target" data-el="#bjax-el"
																data-replace="true"
																class="text-ellipsis text-xs text-muted">${song.artist }</a>
														</div>
													</div>
												</div>
											
											</c:forEach>
=======
																data-replace="true" class="text-ellipsis">${song.name}</a> 
															<a href="track-detail.html" data-bjax
																data-target="#bjax-target" data-el="#bjax-el"
																data-replace="true"
																class="text-ellipsis text-xs text-muted">${song.artist}</a>
														</div>
													</div>
												</div>
>>>>>>> refs/remotes/origin/master
											</div>
<<<<<<< HEAD
											<form action="${pageContext.request.contextPath }/SongServlet"  id="page">
											<input type="hidden" name="method" value="songType">
											<input type="hidden" name="type" value="${type }">
=======
											</c:forEach>
>>>>>>> refs/remotes/origin/master
											<ul class="pagination pagination">
<<<<<<< HEAD
												<li><a href="javascript:void(0)" onclick="go(-1)"><i class="fa fa-chevron-left"></i></a></li>
												<c:forEach begin="1" end="${pageBean.totalPage }" step="1" var="i">
												<li><a href="javascript:void(0)"><input type="submit" id="currentPage" name="currentPage" value="${i }"></a></li>
												</c:forEach>
												<li><a href="javascript:void(0)"  onclick="go(1)"><i class="fa fa-chevron-right"></i></a></li>
=======
												<li><a href="javascript:void(0)" onclick="go(-1)"><i class="fa fa-chevron-left" ></i></a></li>
												<li><B>${pageBean.currentPage}</B></li>
												<li><a href="javascript:void(0)" onclick="go(1)"><i class="fa fa-chevron-right" ></i></a></li>
>>>>>>> refs/remotes/origin/master
											</ul>
											</form>
										</section>
									</section>
								</section>
							</section>
						</section>
						
						<footer class="footer bg-info dker">
							<div id="jp_container_N">
								<div class="jp-type-playlist">
									<div id="jplayer_N" class="jp-jplayer hide"></div>
									<div class="jp-gui">
										<div class="jp-video-play hide">
											<a class="jp-video-play-icon">play</a>
										</div>
										<div class="jp-interface">
											<div class="jp-controls">
												<div>
													<a class="jp-previous"><i
														class="icon-control-rewind i-lg"></i></a>
												</div>
												<div>
													<a class="jp-play"><i class="icon-control-play i-2x"></i></a>
													<a class="jp-pause hid"><i
														class="icon-control-pause i-2x"></i></a>
												</div>
												<div>
													<a class="jp-next"><i class="icon-control-forward i-lg"></i></a>
												</div>
												<div class="hide">
													<a class="jp-stop"><i class="fa fa-stop"></i></a>
												</div>
												<div>
													<a class="" data-toggle="dropdown" data-target="#playlist"><i
														class="icon-list"></i></a>
												</div>
												<div class="jp-progress hidden-xs">
													<div class="jp-seek-bar dk">
														<div class="jp-play-bar bg-info"></div>
														<div class="jp-title text-lt">
															<ul>
																<li></li>
															</ul>
														</div>
													</div>
												</div>
												<div
													class="hidden-xs hidden-sm jp-current-time text-xs text-muted"></div>
												<div
													class="hidden-xs hidden-sm jp-duration text-xs text-muted"></div>
												<div class="hidden-xs hidden-sm">
													<a class="jp-mute" title="mute"><i
														class="icon-volume-2"></i></a> <a class="jp-unmute hid"
														title="unmute"><i class="icon-volume-off"></i></a>
												</div>
												<div class="hidden-xs hidden-sm jp-volume">
													<div class="jp-volume-bar dk">
														<div class="jp-volume-bar-value lter"></div>
													</div>
												</div>
												<div>
													<a class="jp-shuffle" title="shuffle"><i
														class="icon-shuffle text-muted"></i></a> <a
														class="jp-shuffle-off hid" title="shuffle off"><i
														class="icon-shuffle text-lt"></i></a>
												</div>
												<div>
													<a class="jp-repeat" title="repeat"><i
														class="icon-loop text-muted"></i></a> <a
														class="jp-repeat-off hid" title="repeat off"><i
														class="icon-loop text-lt"></i></a>
												</div>
												<div class="hide">
													<a class="jp-full-screen" title="full screen"><i
														class="fa fa-expand"></i></a> <a class="jp-restore-screen"
														title="restore screen"><i
														class="fa fa-compress text-lt"></i></a>
												</div>
											</div>
										</div>
									</div>
									<div class="jp-playlist dropup" id="playlist">
										<ul class="dropdown-menu aside-xl dker">
											<!-- The method Playlist.displayPlaylist() uses this unordered list -->
											<li class="list-group-item"></li>
										</ul>
									</div>
									<div class="jp-no-solution hide">
										<span>Update Required</span> To play the media you will need
										to either update your browser to a recent version or update
										your <a href="http://get.adobe.com/flashplayer/"
											target="_blank">Flash plugin</a>.
									</div>
								</div>
							</div>
						</footer>
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
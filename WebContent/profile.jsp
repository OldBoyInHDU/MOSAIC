<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>MOSAIC</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <link rel="stylesheet" href="js/jPlayer/jplayer.flat.css" type="text/css" />
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
    <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
      <div class="navbar-header aside bg-info dk">
        <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
          <i class="icon-list"></i>
        </a>
        <a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand text-lt">
          <i class="icon-earphones"></i>
          <img src="images/logo.png" alt="." class="hide">
          <span class="hidden-nav-xs m-l-sm">Musik</span>
        </a>
        <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
          <i class="icon-settings"></i>
        </a>
      </div>      <ul class="nav navbar-nav hidden-xs">
        <li>
          <a href="#nav,.navbar-header" data-toggle="class:nav-xs,nav-xs" class="text-muted">
            <i class="fa fa-indent text"></i>
            <i class="fa fa-dedent text-active"></i>
          </a>
        </li>
      </ul>
      <form class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs" role="search">
        <div class="form-group">
          <div class="input-group">
            <span class="input-group-btn">
              <button type="submit" class="btn btn-sm bg-white btn-icon rounded"><i class="fa fa-search"></i></button>
            </span>
            <input type="text" class="form-control input-sm no-border rounded" placeholder="Search songs, albums...">
          </div>
        </div>
      </form>
      <div class="navbar-right ">
        <ul class="nav navbar-nav m-n hidden-xs nav-user user">
          <li class="hidden-xs">
            <a href="#" class="dropdown-toggle lt" data-toggle="dropdown">
              <i class="icon-bell"></i>
              <span class="badge badge-sm up bg-danger count">2</span>
            </a>
            <section class="dropdown-menu aside-xl animated fadeInUp">
              <section class="panel bg-white">
                <div class="panel-heading b-light bg-light">
                  <strong>You have <span class="count">2</span> notifications</strong>
                </div>
                <div class="list-group list-group-alt">
                  <a href="#" class="media list-group-item">
                    <span class="pull-left thumb-sm">
                      <img src="images/head.jpg" alt="..." class="img-circle">
                    </span>
                    <span class="media-body block m-b-none">
                      Use awesome animate.css<br>
                      <small class="text-muted">10 minutes ago</small>
                    </span>
                  </a>
                  <a href="#" class="media list-group-item">
                    <span class="media-body block m-b-none">
                      1.0 initial released<br>
                      <small class="text-muted">1 hour ago</small>
                    </span>
                  </a>
                </div>
                <div class="panel-footer text-sm">
                  <a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
                  <a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
                </div>
              </section>
            </section>
          </li>
          <c:if test="${empty user}">
						<li class="hidden-xs"><a
							href="${pageContext.request.contextPath}/signin.jsp"> <span>登录</span>
						</a></li>
						<li class="hidden-xs"><a
							href="${pageContext.request.contextPath}/signup.jsp"> <span>注册</span>
						</a></li>
					</c:if>
					<c:if test="${!empty user}">
						<li class="hidden-xs"><a href="${pageContext.request.contextPath}/profile.jsp"> <span>${user.username}</span>
						</a></li>
						<li class="hidden-xs"><a href="#"> <span>欢迎您</span>
						</a></li>
					</c:if>
        </ul>
      </div>      
    </header>
    <section>
      <section class="hbox stretch">
        <!-- .aside -->
        <aside class="bg-black dk aside hidden-print" id="nav">          
          <section class="vbox">
            <section class="w-f-md scrollable">
              <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">
                


                <!-- nav -->                 
                <nav class="nav-primary hidden-xs">
                  <ul class="nav bg clearfix">
                    <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                      Discover
                    </li>
                    <li><a
											href="${pageContext.request.contextPath}/index.jsp"> <i
												class="icon-disc icon  "></i> <span class="font-bold">What's
													new</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/genres.jsp">
												<i class="icon-music-tone-alt icon text-info"></i> <span
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
                </nav>
                <!-- / nav -->
              </div>
            </section>
            
            <footer class="footer hidden-xs no-padder text-center-nav-xs">
              <div class="bg hidden-xs ">
                </div>            </footer>
          </section>
        </aside>
        <!-- /.aside -->
        <section id="content">
          <section class="vbox">
            <section class="scrollable">
              <section class="hbox stretch">
                <aside class="aside-lg bg-light lter b-r">
                  <section class="vbox">
                    <section class="scrollable">
                      <div class="wrapper">
                        <div class="text-center m-b m-t">
                          <a href="#" class="thumb-lg">
                            <img src="images/head.jpg" class="img-circle">
                          </a>
                          <div>
                            <div class="h3 m-t-xs m-b-xs">${user.username }</div>
                            <small class="text-muted"><i class="fa fa-map-marker"></i> Hangzhou, China</small>
                          </div>                
                        </div>
                        <div class="panel wrapper">
                          <div class="row text-center">
                            <div class="col-xs-6">
                              <a href="#">
                                <span class="m-b-xs h4 block">245</span>
                                <small class="text-muted">Followers</small>
                              </a>
                            </div>
                            <div class="col-xs-6">
                              <a href="#">
                                <span class="m-b-xs h4 block">55</span>
                                <small class="text-muted">Following</small>
                              </a>
                            </div>
                          </div>
                        </div>
                        <div class="btn-group btn-group-justified m-b">
                          <a class="btn btn-success btn-rounded" data-toggle="button">
                            <span class="text">
                              <i class="fa fa-eye"></i> Follow
                            </span>
                            <span class="text-active">
                              <i class="fa fa-eye"></i> Following
                            </span>
                          </a>
                          <a class="btn btn-dark btn-rounded">
                            <i class="fa fa-comment-o"></i> Chat
                          </a>
                        </div>
                        <div>
                          <small class="text-uc text-xs text-muted">about me</small>
                          <p>在读学生</p>
                          <small class="text-uc text-xs text-muted">info</small>
                          <p>来自南部的一个小城市，个性不张扬，讨厌随波逐流。</p>
                          <div class="line"></div>
                          <small class="text-uc text-xs text-muted">联系方式</small>
                          <p class="m-t-sm">
                            <a href="#" class="btn btn-rounded btn-twitter btn-icon"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="btn btn-rounded btn-facebook btn-icon"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="btn btn-rounded btn-gplus btn-icon"><i class="fa fa-google-plus"></i></a>
                          </p>
                        </div>
                      </div>
                    </section>
                  </section>
                </aside>
                <aside class="bg-white">
                  <section class="vbox">
                    <header class="header bg-light lt">
                      <ul class="nav nav-tabs nav-white">
                        <li class="active"><a href="#activity" data-toggle="tab">收藏歌曲</a></li>
                        <li class=""><a href="#events" data-toggle="tab">留言板</a></li>
                        <li class=""><a href="#interaction" data-toggle="tab">交流</a></li>
                      </ul>
                    </header>
                    <section class="scrollable">
                      <div class="tab-content">
                        <div class="tab-pane active" id="activity">
                          <ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg no-border">
                            
                            <c:forEach items="${likeSongList }" var="likeSong">
                            <li class="list-group-item">
                              <a href="#" class="thumb-sm pull-left m-r-sm">
                                <img src="${song.imgurl }" class="img-circle">
                              </a>
                              <a href="#" class="clear">
                                <!-- <small class="pull-right">3 minuts ago</small> -->
                                <strong class="block">${likeSong.name }</strong>
                                <small>${likeSong.artist } </small>
                              </a>
                            </li>
                            </c:forEach>
                            	
                          </ul>
                        </div>
                        <div class="tab-pane" id="events">
                          <div class="text-center wrapper">
                            <!-- <i class="fa fa-spinner fa fa-spin fa fa-large"></i> -->
                            <ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg no-border">
                            
                            <c:forEach items="${messages }" var="message">
                            <li class="list-group-item">
                              <a href="#" class="thumb-sm pull-left m-r-sm">
                                <img src="images/zzxx.png" class="img-circle">
                              </a>
                              <a href="#" class="clear">
                                <!-- <small class="pull-right">3 minuts ago</small> -->
                                <strong class="block">${message.message_content }</strong>
                                <%-- <small>${likeSong.artist } </small> --%>
                              </a>
                            </li>
                            </c:forEach>
                            	
                          </ul>
                          </div>
                        </div>
                        <div class="tab-pane" id="interaction">
                          <div class="text-center wrapper">
                            <!-- <i class="fa fa-spinner fa fa-spin fa fa-large"></i> -->
                            <ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg no-border">
                            
                            <c:forEach items="${tweets }" var="tweet">
                            <li class="list-group-item">
                              <a href="#" class="thumb-sm pull-left m-r-sm">
                                <img src="images/zzxx.png" class="img-circle">
                              </a>
                              <a href="#" class="clear">
                                <!-- <small class="pull-right">3 minuts ago</small> -->
                                <strong class="block">${tweet.tweets }</strong>
                                <%-- <small>${likeSong.artist } </small> --%>
                              </a>
                            </li>
                            </c:forEach>
                            	
                          </ul>
                          </div>
                        </div>
                      </div>
                    </section>
                  </section>
                </aside>
                <!-- <aside class="col-lg-3 b-l">
                  <section class="vbox">
                    <section class="scrollable padder-v">
                      <div class="panel">
                        <h4 class="font-thin padder">最新动态</h4>
                        <ul class="list-group">
                          <li class="list-group-item">
                              <p>感谢 <a href="#" class="text-info">@蒋文超</a> 和<a href="#" class="text-info">@陈孝伟</a> 在数据库方面的付出 </p>
                              <small class="block text-muted"><i class="fa fa-clock-o"></i> 2 minuts ago</small>
                          </li>
                          <li class="list-group-item">
                              <p>感谢 <a href="#" class="text-info">@戴思颖</a>  在Service业务层的付出 </p>
                              <small class="block text-muted"><i class="fa fa-clock-o"></i> 1 hour ago</small>
                          </li>
                          <li class="list-group-item">                     
                              <p>感谢 <a href="#" class="text-info">@孙凯浩</a> 和<a href="#" class="text-info">@黄桁</a> 在前端页面展示方面的付出 </p>
                              <small class="block text-muted"><i class="fa fa-clock-o"></i> 2 hours ago</small>
                          </li>
                        </ul>
                      </div>
                      <div class="panel clearfix">
                        <div class="panel-body">
                          <a href="#" class="thumb pull-left m-r">
                            <img src="images/huang.jpg" class="img-circle">
                          </a>
                          <div class="clear">
                            <a href="http://rukihuang.xyz/" class="text-info">广告位招租 </i></a>
                            <small class="block text-muted">非诚勿扰</small>
                            <a href="https://blog.csdn.net/weixin_43508544" class="btn btn-xs btn-success m-t-xs">赶紧点击</a>
                          </div>
                        </div>
                      </div>
                    </section>
                  </section>              
                </aside> -->
                <!-- side content -->
						<aside class="aside-md bg-light dk" id="sidebar">
							<section class="vbox animated fadeInRight">
								<section class="w-f-md scrollable hover">
									<h4 class="font-thin m-l-md m-t">用户列表</h4>
									<ul class="list-group no-bg no-borders auto m-t-n-xxs">
									<c:if test="${empty user}">
									<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												登陆后获得用户列表
										</span>
										</li>
								</c:if>
								<c:if test="${!empty user}">
								<c:forEach items="${AllUsers}" var="users">
									
										<li class="list-group-item"><span
											class="pull-left thumb-xs m-t-xs avatar m-l-xs m-r-sm">
												<img src="images/zzxx.png" alt="..."> <i
												class="away b-light right sm"></i>
										</span>
											<div class="clear">
												<div>
													<a href="#">${users.username }</a>
												</div>
												<small class="text-muted">${users.email }</small>
											</div></li>
									
									</c:forEach>
									</c:if>		
									</ul>
								</section>
								
							</section>
						</aside>
						<!-- / side content -->
              </section>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
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
  <script src="js/charts/easypiechart/jquery.easy-pie-chart.js"></script>
  <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/demo.js"></script>

</body>
</html>
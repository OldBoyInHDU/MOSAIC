<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>
<meta charset="utf-8" />
<title>MOSICA</title>
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
			<div class="navbar-header aside bg-info nav-xs">
				<a class="btn btn-link visible-xs"
					data-toggle="class:nav-off-screen,open" data-target="#nav,html">
					<i class="icon-list"></i>
				</a> <a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand text-lt"> <i
					class="icon-earphones"></i> <img src="images/logo.png" alt="."
					class="hide"> <span class="hidden-nav-xs m-l-sm">MOSAIC</span>
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
						</span> 
						<input type="text"
							class="form-control input-sm no-border rounded"
							placeholder="Search songs, albums..." id="word" name="word">
						<div id="list" style="width:131px; border:1px solid gray; 
									background-color: white; position: absolute;top:28px; z-index: 1000; display: none">
						</div>
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
										<li><a
											href="${pageContext.request.contextPath}/index.jsp"> <i
												class="icon-disc icon text-success"></i> <span
												class="font-bold">What's new</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/genres.jsp">
												<i class="icon-music-tone-alt icon text-info"></i> <span
												class="font-bold">Genres</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/events.jsp"> <i
												class="icon-drawer icon text-primary-lter"></i> <b
												class="badge bg-primary pull-right"></b> <span
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
							</div>
						</footer>
					</section>
				</aside>
				<!-- /.aside -->
				<section id="content">
					<section class="hbox stretch">
						<section>
							<section class="vbox">
								<section class="scrollable padder-lg w-f-md" id="bjax-target">
									<a href="#" class="pull-right text-muted m-t-lg"
										data-toggle="class:fa-spin"><i
										class="icon-refresh i-lg  inline" id="refresh"></i></a>
									<h2 class="font-thin m-b">
										热门歌曲 <span class="musicbar animate inline m-l-sm"
											style="width: 20px; height: 20px"> <span
											class="bar1 a1 bg-primary lter"></span> <span
											class="bar2 a2 bg-info lt"></span> <span
											class="bar3 a3 bg-success"></span> <span
											class="bar4 a4 bg-warning dk"></span> <span
											class="bar5 a5 bg-danger dker"></span>
										</span>
									</h2>
									<div class="row row-sm" id="hotSong">
										<!-- <span id="test"></span> -->
										<c:forEach items="${hotSongList }" var="hotSong">
											<div class="col-xs-6 col-sm-4 col-md-3 col-lg-2" >
												<div class="item">
													<div class="pos-rlt">
														<div class="item-overlay opacity r r-2x bg-black">
															<div class="text-info padder m-t-sm text-sm">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star-o text-muted"></i>
															</div>
															<div class="center text-center m-t-n">
																<a href="#" data-toggle="class" id="link">
																<i class="icon-control-play i-2x text"></i>
																<i class="icon-control-pause i-2x text-active"></i></a>
															</div>
															<div class="bottom padder m-b-sm" >
																<a href="#" class="pull-right" data-toggle="class"> <i
																	class="fa fa-heart-o text"></i>
																	<i class="fa fa-heart text-active text-danger"></i>
																</a> <a href="#" data-toggle="class"> <i class="fa fa-plus-circle text"></i>
																<i class="fa fa-check-circle text-active text-info"></i>
																
																</a>
															</div>
														</div>
														<a href="#"><img
															src="${pageContext.request.contextPath }${hotSong.imgurl }"
															alt="" class="r r-2x img-full" style="height: 300px"></a>
													</div>
													<div class="padder-v">
														<a href="#" class="text-ellipsis">${hotSong.name }</a> <a
															href="#" class="text-ellipsis text-xs text-muted">${hotSong.artist }</a>
													</div>

												</div>
											</div>

										</c:forEach>
									</div>
									<div class="row">
										<div class="col-md-7">
											<h3 class="font-thin">新歌速递</h3>
											<div class="row row-sm">
												<c:forEach items="${newSongList }" var="newSong">

													<div class="col-xs-6 col-sm-3">
														<div class="item">
															<div class="pos-rlt">
																<div class="item-overlay opacity r r-2x bg-black">
																	<div class="center text-center m-t-n">
																		<a href="${pageContext.request.contextPath }/AddSongServlet?songid=${newSong.songid}"><i class="fa fa-play-circle i-2x"></i></a>
																	</div>
																</div>
																<a href="#"><img
																	src="${pageContext.request.contextPath }${newSong.imgurl }"
																	alt="" class="r r-2x img-full" style="height: 200px"></a>
															</div>

															<div class="padder-v">
																<a href="#" class="text-ellipsis">${newSong.name }</a> <a
																	href="#" class="text-ellipsis text-xs text-muted">${newSong.artist }</a>
															</div>

														</div>
													</div>
												</c:forEach>
											</div>
										</div>
										<div class="col-md-5">
											<h3 class="font-thin">歌曲榜单</h3>
											<div id="newSong"
												class="list-group bg-white list-group-lg no-bg auto">

												<c:forEach items="${newSongList }" var="newSong"
													varStatus="s">
													<a href="#" class="list-group-item clearfix"> <span
														class="pull-right h2 text-muted m-l">${s.index+1}</span> <span
														class="pull-left thumb-sm avatar m-r"> <img
															src="${pageContext.request.contextPath }${newSong.imgurl }"
															alt="..." style="height:35px">
													</span> <span class="clear"> <span>${newSong.name }</span>
															<small class="text-muted clear text-ellipsis">${newSong.artist }</small>
													</span>
													</a>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="row m-t-lg m-b-lg">
										
									</div>
								</section>
								<footer class="footer bg-dark">
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
															<a class="jp-next"><i
																class="icon-control-forward i-lg"></i></a>
														</div>
														<div class="hide">
															<a class="jp-stop"><i class="fa fa-stop"></i></a>
														</div>
														<div>
															<a class="" data-toggle="dropdown"
																data-target="#playlist"><i class="icon-list"></i></a>
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
						</section>
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
	<script src="js/app.plugin.js"></script>
	<script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
	<script type="text/javascript"
		src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script type="text/javascript"
		src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
		<!-- <script type="text/javascript" src="js/jPlayer/demo.js"></script> -->
<script type="text/javascript">	
	$(document).ready(function(){
		/* var song = ${song}; */
		
		/* var tempTitle = "${song.name}";
		var tempArtist = "${song.artist}";
		var tempMp3 = "${pageContext.request.contextPath}${song.songurl}";
		var tempPoster = "${pageContext.request.contextPath}${song.imgurl}";  */
		
		var songList = ${songList};
		console.log(songList);
		
  	myPlaylist = new jPlayerPlaylist({
    jPlayer: "#jplayer_N",
    cssSelectorAncestor: "#jp_container_N"
  },  /* [
    {
      title:"I'm Yours.mp3",
      artist:"Jason Mraz",
      mp3:"music/Jason Mraz - I'm Yours.mp3",
      poster: "images/m0.jpg"
    },
    {
      title:"${song.name}",
      artist:"${song.artist}",
      mp3:"${pageContext.request.contextPath}${song.songurl}",
      poster: "${pageContext.request.contextPath}${song.imgurl}"
    } 
  ]  */
  eval(songList)
  , {
    playlistOptions: {
      enableRemoveControls: true,
      autoPlay: false
    },
    swfPath: "js/jPlayer",
    supplied: "webmv, ogv, m4v, oga, mp3",
    smoothPlayBar: true,
    keyEnabled: true,
    audioFullScreen: false
  });
  
  $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').removeClass('animate');
    $('.jp-play-me').removeClass('active');
    $('.jp-play-me').parent('li').removeClass('active');
  });

  $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer,  function(){
    $('.musicbar').addClass('animate');
  });

  $(document).on('click', '.jp-play-me', function(e){
    e && e.preventDefault();
    var $this = $(e.target);
    if (!$this.is('a')) $this = $this.closest('a');

    $('.jp-play-me').not($this).removeClass('active');
    $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

    $this.toggleClass('active');
    $this.parent('li').toggleClass('active');
    if( !$this.hasClass('active') ){
      myPlaylist.pause();
    }else{
      var i = Math.floor(Math.random() * (1 + 7 - 1));
      myPlaylist.play(i);
    }
    
  });
  
 /*  var tempTitle = "${song.name}";
	var tempArtist = "${song.artist}";
	var tempMp3 = "${pageContext.request.contextPath}${song.songurl}";
	var tempPoster = "${pageContext.request.contextPath}${song.imgurl}"; */
 /*  myPlaylist.add({ 
		title:tempTitle, 
		artist:tempArtist, 
		mp3:tempMp3, 
		poster: tempPoster 
		});  */

});
	</script>	
<!-- <script>
		$(function() {
			 $.ajax({
				url : "${pageContext.request.contextPath}/SongServlet",
				data : {
					"method" : "hotSong",
					"num":"12"
				},
				dataType : "json"
			}); 
			$.ajax({
				url : "${pageContext.request.contextPath}/SongServlet",
				data : {
					"method" : "newSong",
					"num":"8"
				},
				dataType : "json"
			});
		});
	</script>  -->
	<script type="text/javascript">
								$(function(){
									$("#word").keyup(function(){
										// 局部刷新，想要获得商品名，显示到input下面添加新的列表
										$.get(
											"${pageContext.request.contextPath}/FindSongBySongNameServlet",
											{
												"word": $("#word").val()
											},
											function(data){
												$("#list").empty();
												for (var i = 0 ;i < data.length; i++) {
													if ( i > 7) {
														break;
													}
													/* $("#list").append("<div style='cursor:pointer' onmouseover='over(this)' onmouseout='out(this)' onclick='go(this)'>"+data[i].name+"</div>"); */
													$("#list").append("<a href='${pageContext.request.contextPath }/AddSongServlet?songid="+data[i].songid+"' ><div style='cursor:pointer' onmouseover='over(this)' onmouseout='out(this)' onclick='go(this)'>"+data[i].name+"</div></a>");
												}
												$("#list").css("display", "block");
											},
											"json"
										);
										/* $.get(
												"${pageContext.request.contextPath}/FindSongBySongArtistNameServlet",
												{
													"word": $("#word").val()
												},
												function(data){
													$("#list").empty();
													for (var i = 0 ;i < data.length; i++) {
														if ( i > 7) {
															break;
														}
														$("#list").append("<a href='${pageContext.request.contextPath }/AddSongServlet?songid="+data[i].songid+"' ><div style='cursor:pointer' onmouseover='over(this)' onmouseout='out(this)' onclick='go(this)'>"+data[i].name+"</div></a>");
														/* $("#list").append("<div style='cursor:pointer' onmouseover='over(this)' onmouseout='out(this)' onclick='go(this)'>"+data[i].name+"</div>"); */
													/*}
													$("#list").css("display", "block");
												},
												"json"
											); */
									});
								});
								function over(obj) {
									$(obj).css("background-color", "gray");
									}
									function out(obj) {
										$(obj).css("background-color", "white");
									}
									function go(obj) {
										$("#word").val($(obj).html());
										$("#list").css("display", "none");
									}
							</script>
<!-- 	<script type="text/javascript">
		list = new Array();
		$("#clickArea").click(function() {
			var val = $(this).val();
			// jquery方式发送ajax请求
			// $.ajax()
			// $.post()
			$.ajax({
				url : "${pageContext.request.contextPath }/AddSongServlet",
				data : {
					"songid" : val
				}, // 请求参数
				success : function(data) {
					list.add(data);
					console.log(list);
				},
				dataType : "json",
				type : "GET", // 默认get
				async : true
			// 默认异步true，false-同步
			});
		});
	</script> -->
<script>
	if($(".link").hasClass("active")){
		console.log($(".link").hasClass("active"));
	}else{
		console.log($(".link").hasClass(""));
	}
	

	
	
</script>

</body>
</html>
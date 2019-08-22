<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>Musik | Web Application</title>
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
            <input type="text" class="form-control input-sm no-border rounded" placeholder="Search songs, albums..." id="word" name="word">
           <div id="list" style="width:131px; border:1px solid gray; 
         background-color: white; position: absolute;top:28px; z-index: 1000; display: none">
      </div>         
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
                      <img src="images/a0.png" alt="..." class="img-circle">
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
							href="${pageContext.request.contextPath}/register.jsp"> <span>登录</span>
						</a></li>
						<li class="hidden-xs"><a
							href="${pageContext.request.contextPath}/register.jsp"> <span>注册</span>
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
												class="icon-disc icon text-success"></i> <span
												class="font-bold">What's new</span>
										</a></li>
										<li><a
											href="${pageContext.request.contextPath}/genres.jsp"> <i
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
                </div>            </footer>
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
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <div class="top">
                        <span class="badge bg-dark m-l-sm m-t-sm">03:20</span>
                      </div>
                      <a href="video-detail.html"><img src="images/m40.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Tempered Song</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Miaow</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <div class="top">
                        <span class="badge bg-dark m-l-sm m-t-sm">02:10</span>
                      </div>
                      <a href="video-detail.html"><img src="images/m41.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Morbi id neque quam</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Phasellus</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-4">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <div class="top">
                        <span class="badge bg-dark m-l-sm m-t-sm">05:40</span>
                      </div>
                      <a href="video-detail.html"><img src="images/m42.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Malesuada</a>
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
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m40.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Tempered Song</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Miaow</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m41.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Morbi id neque quam</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Phasellus</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m42.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Malesuada</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m43.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Citudin venenatis ipsum ac</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Volutpat</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m44.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Vestibulum ullamcorper sodales nisi</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Mauris Qiaos</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m40.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Mauris convallis mauris at</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Neque</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m45.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Sodales nisi nec condimentum</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Augue</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m44.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Nisi nec condimentum</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Miaow</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m43.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Phasellus at ultricies nequ</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Volutpat</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m42.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Quis malesuada augue</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Feugiat</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m41.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Ipsum ac feugiat</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Quam AC</a>
                    </div>
                  </div>
                </div>
                <div class="col-xs-6 col-sm-4 col-md-3">
                  <div class="item">
                    <div class="pos-rlt">
                      <div class="item-overlay opacity r r-2x bg-black">
                        <div class="center text-center m-t-n">
                          <a href="video-detail.html"><i class="fa fa-play-circle i-2x"></i></a>
                        </div>
                      </div>
                      <a href="video-detail.html"><img src="images/m40.jpg" alt="" class="r r-2x img-full"></a>
                    </div>
                    <div class="padder-v">
                      <a href="video-detail.html" class="text-ellipsis">Ullamcorper sodales nisi nec condimentu</a>
                      <a href="video-detail.html" class="text-ellipsis text-xs text-muted">Convallis</a>
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
    <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
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
										$.get(
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
													}
													$("#list").css("display", "block");
												},
												"json"
											);
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
</body>
</html>
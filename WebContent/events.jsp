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
      <div class="navbar-header aside bg-primary nav-xs">
        <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
          <i class="icon-list"></i>
        </a>
        <a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand text-lt">
          <i class="icon-earphones"></i>
          <img src="images/logo.png" alt="." class="hide">
          <span class="hidden-nav-xs m-l-sm">MOSAIC</span>
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
										<li><a href="${pageContext.request.contextPath}/genres.jsp"> <i
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
          <section class="vbox">
          <section class="scrollable">
            <div id="masonry" class="pos-rlt animated fadeInUpBig">
              <div class="item">
                <div class="carousel slide auto" data-interval="3000">
                  <div class="carousel-inner">
                    <div class="item active">
                      <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                        <p class="text-white">N.01</p>
                        <div class="center text-center m-t-n">
                          <a href="#"><i class="icon-control-play i-2x"></i></a>
                        </div>
                      </div>
                      <div class="bottom wrapper bg-info gd">
                        <div class="m-t m-b"><a href="#" class="b-b b-danger h2 text-u-c text-lt font-bold">《你给我听好》陈奕迅</a></div>
                        <p class="hidden-xs">渺小的控诉就是你想要的生活情调</p>
                      </div>
                      <a href="#"><img src="showimg/1.jpg" alt="" class="img-full"></a>
                    </div>
                    <div class="item">
                      <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                        <p class="text-white">N.02</p>
                        <div class="center text-center m-t-n">
                          <a href="#"><i class="icon-control-play i-2x"></i></a>
                        </div>
                      </div>
                      <div class="bottom wrapper bg-info gd">
                        <div class="m-t m-b"><a href="#" class="b-b b-warning h2 text-u-c text-lt font-bold">《裙下之臣》陈奕迅</a></div>
                        <p class="hidden-xs">为那转啊转啊的裙，死我都庆幸</p>
                      </div>
                      <a href="#"><img src="showimg/2.jpg" alt="" class="img-full" style="height:620px"></a>
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
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《一人有一个梦想》黎瑞恩</a></div>
                  <p class="hidden-xs">一人有一个梦想，两人热爱渐迷惘，三人有三种爱找各自理想</p>
                </div>
                <a href="#"><img src="showimg/3.jpg" alt="" class="img-full" style="height:620px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">《孙大剩》白亮/赵静</a></div>
                  <p class="hidden-xs">从小你就想当一个盖世英雄，逢人便说长大后要大闹天宫，可长大后却发现自己是那么平庸</p>
                </div>
                <a href="#"><img src="showimg/4.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-primary dker wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">lementum</a></div>
                  <p class="hidden-xs">lementum ligula vitae est quis congue ero</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《分裂》周杰伦</a></div>
                  <p class="hidden-xs">经过老伯的家，篮框变得好高</p>
                </div>
                <a href="#"><img src="showimg/5.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="carousel carousel-fade bg-info slide auto" data-interval="6000">
                  <div class="carousel-inner">
                    <div class="item active">
                      <div class="item-overlay active dker wrapper text-center">
                        <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《下一站茶山刘》房东的猫</a></div>
                        <p class="hidden-xs">前路不需太重的行囊，和过去和解吧</p>
                      </div>
                      <a href="#"><img src="showimg/6.jpg" alt="" class="img-full" style="height:310px"></a>
                    </div>
                    <div class="item">
                      <div class="item-overlay active dk wrapper text-center">
                        <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《青春大概》王上</a></div>
                        <p class="hidden-xs">在遗忘中不舍，醉醒交错，青春大概如你所说</p>
                      </div>
                      <a href="#"><img src="showimg/7.jpg" alt="" class="img-full" style="height:310px"></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《花解语》亦舒</a></div>
                  <p class="hidden-xs">算了，有期望，就活该失望</p>
                </div>
                <a href="#"><img src="showimg/8.jpg" alt="" class="img-full"style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">《记昨日书》伏仪</a></div>
                  <p class="hidden-xs">你可知这百年爱人只能陪半途,你且信这世上至多好景可虚度</p>
                </div>
                <a href="#"><img src="showimg/9.jpg" alt="" class="img-full" style="height:620px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《你在终点等我》王菲</a></div>
                  <p class="hidden-xs">所以好想送你一湾河岸，洗涤腐蚀心灵的遗憾</p>
                </div>
                <a href="#"><img src="showimg/10.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-success dker wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Ligula</a></div>
                  <p class="hidden-xs">Sesuada est, quis congue tincidunt libero nibh ligula</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《父亲写的散文诗》许飞</a></div>
                  <p class="hidden-xs">这是我父亲日记里的文字，这是他的青春留下留下来的散文诗</p>
                </div>
                <a href="#"><img src="showimg/11.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《喜欢》张悬</a></div>
                  <p class="hidden-xs">那生活还过分激动，没什么我已经以为能够把握</p>
                </div>
                <a href="#"><img src="showimg/12.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-primary h4 text-u-c text-lt font-bold">《沙龙》陈奕迅</a></div>
                  <p class="hidden-xs">其实人生并非虚耗，何来尘埃飞舞</p>
                </div>
                <a href="#"><img src="showimg/20.jpg" alt="" class="img-full" style="height:620px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《喜欢上你时的内心活动》陈绮贞 </a></div>
                  <p class="hidden-xs">你喜欢去哪，青海或三亚，冰岛或希腊，南美不去吗，沙漠你爱吗，我问太多了</p>
                </div>
                <a href="#"><img src="showimg/17.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-warning h2 text-u-c text-lt font-bold">《听见下雨的声音》周杰伦 </a></div>
                  <p class="hidden-xs">终于听见下雨的声音，于是我的世界被吵醒</p>
                </div>
                <a href="#"><img src="showimg/15.jpg" alt="" class="img-full" style="height:620px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《清风徐来》王菲</a></div>
                  <p class="hidden-xs">可能完美和完整，不是一回事情</p>
                </div>
                <a href="#"><img src="showimg/16.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">《一如少年》郑小辫儿</a></div>
                  <p class="hidden-xs">还能一如少年，不惧路远漂泊</p>
                </div>
                <a href="#"><img src="showimg/14.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《彩虹》布衣乐队</a></div>
                  <p class="hidden-xs">端起了这碗酒，就映出了你眉头</p>
                </div>
                <a href="#"><img src="showimg/18.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-warning dker wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Morbi</a></div>
                  <p class="hidden-xs">Dolor sit amet, consectetur adipiscing elit.</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《十万嬉皮》万能青年旅店</a></div>
                  <p class="hidden-xs">四体不勤，五谷不分，文不能测字，武不能防身</p>
                </div>
                <a href="#"><img src="showimg/19.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="item-overlay active bg-info lt wrapper text-center">
                  <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Csesoi</a></div>
                  <p class="hidden-xs">Dolor sit ectetur elit senectus et malesuada</p>
                </div>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《美好事物》房东的猫</a></div>
                  <p class="hidden-xs">别忧愁聚散，又何惧放胆</p>
                </div>
                <a href="#"><img src="showimg/13.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《等你下课》周杰伦</a></div>
                  <p class="hidden-xs">当你收到情书，也代表我已经走远</p>
                </div>
                <a href="#"><img src="showimg/21.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《任我行》陈奕迅</a></div>
                  <p class="hidden-xs">那时其实尝尽真正自由，但又感到没趣</p>
                </div>
                <a href="#"><img src="showimg/22.jpg" alt="" class="img-full" style="height:310px"></a>
              </div>
              <div class="item">
                <div class="bottom gd bg-info wrapper">
                  <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">《陀飞轮》</a></div>
                  <p class="hidden-xs">过去十八岁没戴表，不过有时间，够我没有后顾野性贪玩</p>
                </div>
                <a href="#"><img src="showimg/23.jpg" alt="" class="img-full" style="height:310px"	></a>
              </div>
            </div>
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
    <script src="js/masonry/tiles.min.js"></script>
  <script src="js/masonry/demo.js"></script>
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
</body>
</html>
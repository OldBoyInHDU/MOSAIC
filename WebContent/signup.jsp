<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="app">
<head>  
  <meta charset="utf-8" />
  <title>MOSICA</title>
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
<body class="bg-info dker">
  <section id="content" class="m-t-lg wrapper-md animated fadeInDown">
    <div class="container aside-xl">
      <a class="navbar-brand block" href="index.jsp"><span class="h1 font-bold">MOSICA</span></a>
      <section class="m-b-lg">
        <header class="wrapper text-center">
          <strong>寻找一段有意思的音乐之旅吧</strong>
        </header>
        <form action="${pageContext.request.contextPath}/UserServlet" method="post" id="regForm">
        <input type="hidden" name="method" value="register" >
          <div class="form-group">
            <input placeholder="用户名" class="form-control rounded input-lg text-center no-border" name="username" id="username" required="">
          </div>
          <div class="form-group">
            <input type="email" placeholder="邮箱" class="form-control rounded input-lg text-center no-border" name="email" id="email" required="">
          </div>
          <div class="form-group">
             <input type="password" placeholder="密码" class="form-control rounded input-lg text-center no-border" name="password" id="password" required="">
          </div>
          <div class="checkbox i-checks m-b">
            <label class="m-l">
              <input type="checkbox" checked=""><i></i> 同意 <a href="#">MOSICA音乐协议</a>
            </label>
          </div>
          <button type="submit" class="btn btn-lg btn-warning lt b-white b-2x btn-block btn-rounded"><i class="icon-arrow-right pull-right"></i><span class="m-r-n-lg">注册</span></button>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>已有账号?</small></p>
          <a href="signin.jsp" class="btn btn-lg btn-info btn-block btn-rounded">登录</a>
        </form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder clearfix">
      <p>
        <small>指针信息MOSICA制作小组<br>&copy; 2019</small>
      </p>
    </div>
  </footer>
  <!-- / footer -->
  <script src="js/jquery.min.js"></script>
  <!-- Bootstrap -->
  <script src="js/bootstrap.js"></script>
  <!-- App -->
  <script src="js/app.js"></script>  
  <script src="js/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/app.plugin.js"></script>
  <script type="text/javascript" src="js/jPlayer/jquery.jplayer.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/add-on/jplayer.playlist.min.js"></script>
  <script type="text/javascript" src="js/jPlayer/demo.js"></script>
<script type="text/javascript">
		$(function() {
			// 自定义校验规则
			$.validator.addMethod("checkUser",
					function(value, element, params) {
						var pass = false;
						// value：输入内容，需要给数据库对比
						$.ajax({
							url : "${pageContext.request.contextPath}/UserServlet",
							data : {
								"method":"userCheck",
								"email" : value
							},
							success : function(data) {
								// data.isExists -> true -> 校验不通过
								// data.isExists -> false -> 校验通过
								pass = !data.isExists;
							},
							dataType : "json",
							async : false
						// 必须同步
						});
						return pass; // 返回true表示校验通过
					});
			$("#regForm").validate({
				rules : {
					email : {
						required : true,
						minlength : 6,
						maxlength : 20,
						checkUser : true
					},
					username : {
						required : true,
						minlength : 3,
						maxlength : 12
					},
					password : {
						required : true,
						minlength : 6,
						maxlength : 20
					}
				},
				messages : {
					email : {
						required : "email不能为空",
						minlength : "email长度不能小于6",
						maxlength : "email长度不能大于20",
						checkUser : "email已存在"
					},
					username : {
						required : "用户名不能为空",
						minlength : "用户名长度不能小于3",
						maxlength : "用户名长度不能大于12"
					},
					password : {
						required : "密码不能为空",
						minlength : "密码长度不能小于6",
						maxlength : "密码长度不能大于20"
					}
				}
			});
		});
	</script>

	<script>
		$(function() {
			$("#email").onblur(function() {
				$.get("/CheckUserServlet", {
					"email" : $("#email").val()
				}, function(data) {
					if (data.isExists) {
						alert("已存在");
					} else {
						alert("未存在");
					}
				}, "json");
			});
		});
	</script>

</body>
</html>
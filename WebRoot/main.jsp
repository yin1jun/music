<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML5 >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>歌曲展示页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/music.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="shortcut icon" href="<%=basePath%>images/logo.png">
    
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="http://pagead2.googlesyndication.com/pub-config/r20160913/ca-pub-1542822386688301.js"></script>
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,400,300,600,700|Six+Caps' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link rel="preload" href="https://adservice.google.com/adsid/integrator.js?domain=demo.cssmoban.com" as="script">
	<script type="text/javascript" src="https://adservice.google.com/adsid/integrator.js?domain=demo.cssmoban.com"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	
	
	     <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
  </head>
  
 <body>
    <header>
    	  <div class="header-top">
		<div class="container">
			<div class="head-main">
				<img src="images/logo.png" style="height:100px;weight:100px; float:left;">
				<h1><a href="main.jsp">校园原创歌曲平台</a></h1>
			</div>
			
			<div class="hea-rgt">
				<a href="login.jsp">登录</a>
				<a href="reg.jsp">注册</a>
			</div>
			<div class="navigation">
				 <nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!--/.navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
					 <li class="active"><a href="main.jsp">原创音乐馆</a></li>
						<li><a href="#">MV</a></li>
						<li><a href="#">我的音乐</a></li>
					</ul>
				</div>
				<!--/.navbar-collapse-->
			</nav>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--start-header-->
	<div class="header">
		<div class="container">
			<div class="head">
				<div class="soc">
							<c:choose>
			       <c:when test="${customer.name ==null}">
			        	您还未登录,<a href="login.jsp">马上登录</a>
			       </c:when>
			       <c:otherwise>
			       	<c:out value="${customer.name}"></c:out>, 欢迎您!
			       </c:otherwise>
			     </c:choose>
				</div>
				<div class="header-right">
					<div class="search-bar">
					<s:form action="song/song_querySongs" method="post">
				      <input class="search" type="text" name="keywords" placeholder="请输入歌曲名称">
				      <s:submit  value=""></s:submit>
				      <!--  <s:submit value="查询" cssClass="btn btn-default"></s:submit>-->
				      </div>
				      </s:form>
					</div>
				</div>
				
					<div class="clearfix"></div>
			</div>
		</div>
	</div>	
	
	<!-- script-for-menu -->
		<script>
			$("span.menu").click(function(){
				$(" ul.navig").slideToggle("slow" , function(){
				});
			});
		</script>
	<!-- script-for-menu -->
				
        
    </header>    
		<div id="center">
		    <!-- banner-starts -->
			<div class="banner">
				<div class="container">
					<div class="banner-top">
						<section class="slider">
							
									
									<div id="myCarousel" class="carousel slide">
									    <!-- 轮播（Carousel）指标 -->
									    <ol class="carousel-indicators">
									        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									        <li data-target="#myCarousel" data-slide-to="1" ></li>
									        <li data-target="#myCarousel" data-slide-to="2"></li>
									    </ol>   
									    <!-- 轮播（Carousel）项目 -->
									    <div class="carousel-inner">
									        <div class="item active">
									            <img src="images/yiyangqianxi1.jpg" alt="First slide" style="margin:15px ;width:100%;height:600px">
									            <div class="carousel-caption">易烊千玺</div>
									        </div>
									        <div class="item">
									            <img src="images/wuyuetian.jpg" alt="Second slide" style="margin:15px ;width:100%;height:600px">
									            <div class="carousel-caption">五月天</div>
									        </div>
									        <div class="item">
									            <img src="images/taiyan.jpg" alt="Third slide" style="margin:15px ;width:100%;height:600px">
									            <div class="carousel-caption">泰妍</div>
									        </div>
									    </div>
										
									
							</div>
						</section>
					<div id="center">
    <!-- 导航栏以及搜索框 -->
        <div id="top">
            
                <!-- 导航栏 -->
                <div id="nav" class="fl">
                    <ul class="nav">
                        <li>
                            <div>
                                <a href="#">首页</a><span>|</span>
                                <a href="#">排行榜</a><span>|</span>
                                <a href="#">歌单广场</a><span>|</span>
                                <a href="#">电台</a><span>|</span>
                                <a href="#">歌手</a><span>|</span>
                                <a href="#">专辑</a>
                            </div>
                        </li>
                        <li>
                           
                            <div>
                                <a href="#">MV推荐</a><span>|</span>
                                <a href="#">MV排行榜</a><span>|</span>
                                <a href="#">MV库</a><span>|</span>
                                <a href="#">音乐现场</a><span>|</span>
                                <a href="#">MV专题</a><span>|</span>
                                <a href="#">巅峰榜盛典</a>
                            </div>
                        </li>
                        <li>
                           
                            <div>
                                <a href="#">主题</a><span>|</span>
                                <a href="#">歌单</a><span>|</span>
                                <a href="#">MV收藏</a><span>|</span>
                                <a href="#">听众</a><span>|</span>
                                <a href="#">收听</a>
                            </div>
                        </li>
                       
                    </ul>
                </div>
                <!-- 搜索 -->
                、
            </div>
        </div>
        <!-- 内容区 -->
				<p class="footer-p">Copyright &copy; 2018. All rights reserved. </p>
					</div>
				</div>
			</div>		
			<!--banner-end-->
		    
              
    </body>
</html>
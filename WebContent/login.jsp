<!DOCTYPE html>
<html lang="en">
<head>
<title>出差管理系统界面</title>
<!-- meta tags -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //meta tags -->
<!-- Custom Theme files -->
<link href="./new_main/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="./new_main/css/style.css" type="text/css" rel="stylesheet"
	media="all">
<!-- //Custom Theme files -->
<!-- js -->
<script src="./new_main/js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- web-fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Stint+Ultra+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!-- //web-fonts -->
<!-- animate -->
<script src="./new_main/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- //end-animate -->
</head>
<body>
	<!-- banner -->
	<div id="home" class="agileits-banner">
		<div class="bnr-agileinfo">
			<div class="banner-top">
				<div class="container">
					<div class="col-md-6 banner-top-left wow slideInDown animated"
						data-wow-delay=".5s">
						<ul class="w3layouts-icons">
							<li><a href="#"> </a></li>
							<li><a href="#" class="fb"> </a></li>
							<li><a href="#" class="in"> </a></li>
							<li><a href="#" class="dott"> </a></li>
						</ul>
					</div>
					<div class="col-md-6 banner-top-right wow slideInDown animated"
						data-wow-delay=".5s">
						<p>
							<span class="glyphicon glyphicon-earphone"></span> +12306
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="banner-w3text">
				<h1 class="wow slideInRight animated" data-wow-delay=".5s">
					<a href="login.jsp">素质出差</a>
				</h1>
				<p class="wow slideInLeft animated" data-wow-delay=".5s">Quality
					Travel</p>
			</div>
			<!-- navigation -->
			<div class="top-nav wow">
				<div class="container">
					<div class="navbar-header w3llogo">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">Menu</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<div class="menu">
							<ul class="nav navbar">
								<li class="menu-item menu-item-current"><a href="#home"
									class="menu-link scroll">主页</a></li>
								<li class="menu-item"><a href="#about"
									class="menu-link scroll" data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">关于我们</a></li>
								<li class="menu-item"><a href="#services"
									class="menu-link scroll" data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">服务</a></li>
								<li class="menu-item"><a href="#work"
									class="menu-link scroll" data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">工作</a></li>
								<!--  <li class="menu-item"><a href="#gallery" class="menu-link scroll" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">展示</a></li>-->
								<li class="menu-item"><a href="#contact"
									class="menu-link scroll" data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">员工登录</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<script src="./new_main/js/classie.js"></script>
						<script>
							(function() {
								[].slice
										.call(
												document
														.querySelectorAll('.menu'))
										.forEach(
												function(menu) {
													var menuItems = menu
															.querySelectorAll('.menu-link'), setCurrent = function(
															ev) {
														ev.preventDefault();

														var item = ev.target.parentNode; // li

														// return if already current
														if (classie
																.has(item,
																		'menu-item-current')) {
															return false;
														}
														// remove current
														classie
																.remove(
																		menu
																				.querySelector('.menu-item-current'),
																		'menu-item-current');
														// set current
														classie
																.add(item,
																		'menu-item-current');
													};

													[].slice
															.call(menuItems)
															.forEach(
																	function(el) {
																		el
																				.addEventListener(
																						'click',
																						setCurrent);
																	});
												});
							})(window);
						</script>
					</div>
					<!-- script-for sticky-nav -->
					<script>
						$(document).ready(function() {
							var navoffeset = $(".top-nav").offset().top;
							$(window).scroll(function() {
								var scrollpos = $(window).scrollTop();
								if (scrollpos >= navoffeset) {
									$(".top-nav").addClass("fixed");
								} else {
									$(".top-nav").removeClass("fixed");
								}
							});

						});
					</script>
					<!-- //script-for sticky-nav -->
				</div>
			</div>
			<!-- //navigation -->
		</div>
	</div>
	<!-- //banner -->
	<!-- welcome -->
	<div class="welcome" id="about">
		<div class="container">
			<h2 class="title wow bounceIn animated" data-wow-delay=".5s">欢迎来到出差公司</h2>
			<div class="col-md-4 welcome-left wow slideInLeft animated"
				data-wow-delay=".5s">
				<img src="./new_main/images/12.jpg" alt="" />
			</div>
			<div class="col-md-8 welcome-right wow slideInRight animated"
				data-wow-delay=".5s">
				<h5>01</h5>
				<h4>关于我们</h4>
				<p>我们是素质出差团体，为公司内出差人员提供最好的服务系统，请公司员工素质出差，我们为您素质管理出差信息！</p>
			</div>
			<div class="clearfix"></div>
			<div class="col-md-7 welcome-bottom-left wow slideInLeft animated"
				data-wow-delay=".5s">
				<img src="./new_main/images/img2.jpg" alt="" />
				<h5>02</h5>
				<h4>我们的团队</h4>
				<p>
					团队名称：出差了。<br>团队精英人士：杨科，王思红，刘宇晨，王浩冉
				</p>
			</div>
			<div class="col-md-5 welcome-bottom-right wow slideInRight animated"
				data-wow-delay=".5s">
				<div class="welcome-grid-left">
					<img src="./new_main/images/img3.jpg" alt="" />
				</div>
				<div class="welcome-grid-right">
					<h5>03</h5>
					<h4>我们的工作</h4>
					<p>为每一位出差人员和管理人员提供最优质的服务系统。</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //welcome -->
	<!-- services -->
	<div class="welcome wthree-services" id="services">
		<div class="container">
			<h3 class="title wow fadeInDown animated" data-wow-delay=".5s">我们的服务</h3>
			<div class="services-info w3-agile">
				<div class="col-md-4 services-grids wow zoomIn animated"
					data-wow-delay=".5s">
					<div class="seragile-info">
						<div class="icon-holder">
							<span class="glyphicon glyphicon-briefcase"></span>
						</div>
						<h4 class="heading">出差信息单</h4>
						<p class="text">可以在该系统中完成出差信息相关提交</p>
					</div>
				</div>
				<div class="col-md-4 services-grids wow zoomIn animated"
					data-wow-delay=".5s">
					<div class="seragile-info">
						<div class="icon-holder">
							<span class="glyphicon glyphicon-check"></span>
						</div>
						<h4 class="heading">出差信息审批</h4>
						<p class="text">可以在该系统中完成出差信息相关审批</p>
					</div>
				</div>
				<div class="col-md-4 services-grids wow zoomIn animated"
					data-wow-delay=".5s">
					<div class="seragile-info">
						<div class="icon-holder">
							<span class="glyphicon glyphicon-globe"></span>
						</div>
						<h4 class="heading">全球出差服务</h4>
						<p class="text">在全球各地都可以查询自己的出差信息需求</p>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //services -->
	<!-- work -->
	<div class="welcome work-w3-agileits" id="work">
		<div class="container">
			<div class="work-info">
				<div class="col-md-3 work-grids work-grd1 wow slideInLeft animated"
					data-wow-delay=".5s">
					<h3 class="title">工作</h3>
					<p>维护出差管理系统，管理出差信息数据库，及时反馈信息。</p>
					<ul>
						<li><span class="glyphicon glyphicon-ok-circle"></span> 维护</li>
						<li><span class="glyphicon glyphicon-ok-circle"></span> 管理</li>
						<li><span class="glyphicon glyphicon-ok-circle"></span> 反馈</li>
						<li><span class="glyphicon glyphicon-ok-circle"></span> 更新</li>
					</ul>
				</div>
				<div
					class="col-md-3 work-grids agileits-w3layouts wow zoomIn animated"
					data-wow-delay=".5s">
					<img src="./new_main/images/img4.jpg" alt="" />
					<div class="img-caption">
						<div class="img-text">
							<h4>服务体验</h4>
							<p>获取上下级体验系统感受，及时反馈需求。</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 work-grids agileits-w3layouts wow zoomIn animated"
					data-wow-delay=".5s">
					<img src="./new_main/images/img5.jpg" alt="" />
					<div class="img-caption">
						<div class="img-text">
							<h4>更新讨论</h4>
							<p>时刻关注用户粘度，更新用户需求功能 。</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-3 agileits-w3layouts work-grids wow zoomIn animated"
					data-wow-delay=".5s">
					<img src="./new_main/images/img6.jpg" alt="" />
					<div class="img-caption">
						<div class="img-text">
							<h4>信息维护</h4>
							<p>对用户的出差信息进行汇总分类维护。</p>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //work -->

	<!-- slid -->
	<div class="slid-w3-agile">
		<div class="container">
			<h5 class="wow bounceIn animated" data-wow-delay=".5s">工作时间:</h5>
			<h3 class="wow slideInDown animated" data-wow-delay=".6s">
				周一 —— 周六 8:00 a.m – 9:00 p.m <br> 周日 10 a.m – 4 p.m
			</h3>
			<p class="agileits wow fadeInUp animated" data-wow-delay=".5s">有事情请到青岛中国石油大学找我们，且需要在工作时间，其余时间不予服务。</p>
		</div>
	</div>
	<div class="contact-form" id="contact">
		<h3 class="title wow fadeInDown animated" data-wow-delay=".5s">员工登录</h3>
		<p>请填写员工个人账户信息，注意大小写区分</p>
		<form  class="wow fadeInUp animated" action="LoginServlt"  method="post">
			 <input type="text" name="username" placeholder="用户名" required=""><br>
			 <input type="password" name="password" placeholder="密码" autocomplete="off" required=""><br>
			<br> <input type="submit" value="登录">
		</form>
	</div>
	<!-- //contact -->
	<!-- footer -->
	<div class="welcome footer agile">
		<div class="container">
			<div class="col-md-4 footer-grids wow fadeInLeft animated"
				data-wow-delay=".5s">
				<h3>公司简介</h3>
				<p>公司目前位于全球500强之内，与全球各地需要出差办事的公司均有合作，欢迎投资加盟。</p>
			</div>
			<div class="col-md-3 footer-grids wow fadeInLeft animated"
				data-wow-delay=".5s">
				<h3>联系我们</h3>
				<p>
					分公司分布于Canada<br> 和New York City USA.<br> Office : +00
					31415926<br> Support to : <a href="mailto:info@example.com">mail@example.com</a>
				</p>
			</div>
			<div class="col-md-5 footer-grids wow fadeInRight animated"
				data-wow-delay=".5s">
				<h3>发送你的邮箱</h3>
				<form action="#" method="post">
					<input type="text" class="email" name="Email" placeholder="Email"
						required=""> <input type="submit" value="提交">
				</form>
			</div>
			<div class="clearfix"></div>
			<div class="footer-copy wow slideInUp animated" data-wow-delay=".5s">
				<p>
					美ICP备31415926号 &copy; 2018.出差有限公司 -如有不明 <a
						href="http://www.baidu.com/" target="_yellow" title="百度一下"><u>百度一下</u></a>
				</p>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<!-- start-smooth-scrolling -->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="./new_main/js/bootstrap.js"></script>
</body>
</html>
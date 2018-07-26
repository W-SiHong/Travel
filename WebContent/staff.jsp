<!DOCTYPE html>
<%@page import="Bean.User"%>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>主界面</title>
<link rel="stylesheet" href="frame/layui/css/layui.css">
<link rel="stylesheet" href="frame/static/css/style.css">
<link rel="icon" href="frame/static/image/code.png">

</head>
<body>
	<!-- layout admin -->
	<div class="layui-layout layui-layout-admin">
		<!-- 添加skin-1类可手动修改主题为纯白，添加skin-2类可手动修改主题为蓝白 -->
		<!-- header -->
		<div class="layui-header my-header">
			<a href="login.jsp"> <img class="my-header-logo"
				src="./frame/layui/images/face/logo.jpg" alt="logo">
				<div class="my-header-logo">出差管理系统</div>
			</a>
			<div class="my-header-btn">
				<button class="layui-btn layui-btn-small btn-nav">
					<i class="layui-icon">&#xe65f;</i>
				</button>
			</div>

			<!-- 顶部左侧添加选项卡监听 -->
			<ul class="layui-nav" lay-filter="side-top-left">
				<li class="layui-nav-item"><a href="javascript:;"
					href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></li>
				<li class="layui-nav-item"><a href="javascript:;"><i
						class="layui-icon">&#xe621;</i>功能</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:;" href-url="demo/btn.html"><i
								class="layui-icon">&#xe621;</i>按钮</a>
						</dd>
						<dd>
							<a href="javascript:;" href-url="demo/form.html"><i
								class="layui-icon">&#xe621;</i>表单</a>
						</dd>
					</dl></li>
			</ul>

			<!-- 顶部右侧添加选项卡监听 -->
			<ul class="layui-nav my-header-user-nav" lay-filter="side-top-right">
				<li class="layui-nav-item"><a class="name" href="javascript:;"><i
						class="layui-icon">&#xe629;</i>主题</a>
					<dl class="layui-nav-child">
						<dd data-skin="0">
							<a href="javascript:;">默认</a>
						</dd>
						<dd data-skin="1">
							<a href="javascript:;">纯白</a>
						</dd>
						<dd data-skin="2">
							<a href="javascript:;">蓝白</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item">
					<%
						User user = (User) request.getAttribute("user");
					%> <a class="name" href="javascript:;"><img
						src="frame/static/image/code.png" alt="logo">你好，<%=user.getRealname()%>
				</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="login.jsp"><i class="layui-icon">&#x1006;</i>退出登录</a>
						</dd>
					</dl>
				</li>
			</ul>

		</div>
		<!-- side -->
		<div class="layui-side my-side">
			<div class="layui-side-scroll">
				<!-- 左侧主菜单添加选项卡监听 -->
				<ul class="layui-nav layui-nav-tree" lay-filter="side-main">
					<li class="layui-nav-item  layui-nav-itemed"><a
						href="javascript:;"><i class="layui-icon">&#xe620;</i>功能</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" href-url="demo/form.jsp"><i
									class="layui-icon">&#xe621;</i>表单1</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/form2.jsp"><i
									class="layui-icon">&#xe621;</i>表单2</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/form3.jsp"><i
									class="layui-icon">&#xe621;</i>表单3</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/table.html"><i
									class="layui-icon">&#xe621;</i>表格</a>
							</dd>

							<dd>
								<a href="javascript:;" href-url="demo/tab-card.html"><i
									class="layui-icon">&#xe621;</i>选项卡</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/progress-bar.html"><i
									class="layui-icon">&#xe621;</i>进度条</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/folding-panel.html"><i
									class="layui-icon">&#xe621;</i>折叠面板</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/auxiliar.html"><i
									class="layui-icon">&#xe621;</i>辅助元素</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item"><a href="javascript:;"><i
							class="layui-icon">&#xe628;</i>扩展</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;" href-url="demo/login.html"><i
									class="layui-icon">&#xe621;</i>登录</a>
							</dd>
							<!--    <dd><a href="javascript:;" href-url="demo/register.html"><i class="layui-icon">&#xe621;</i>注册页</a></dd>
                        <dd><a href="javascript:;" href-url="demo/login2.html"><i class="layui-icon">&#xe621;</i>登录页2</a></dd>-->
							<dd>
								<a href="javascript:;" href-url="demo/map.html"><i
									class="layui-icon">&#xe621;</i>图表</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/add-edit.html"><i
									class="layui-icon">&#xe621;</i>添加-修改</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/data-table.html"><i
									class="layui-icon">&#xe621;</i>员工表单审批 表格</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/tree-table.html"><i
									class="layui-icon">&#xe621;</i>Tree table树表格页</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/404.html"><i
									class="layui-icon">&#xe621;</i>404页</a>
							</dd>
							<dd>
								<a href="javascript:;" href-url="demo/tips.html"><i
									class="layui-icon">&#xe621;</i>提示页</a>
							</dd>
						</dl></li>

				</ul>

			</div>
		</div>
		<!-- body -->
		<div class="layui-body my-body">
			<div class="layui-tab layui-tab-card my-tab" lay-filter="card"
				lay-allowClose="true">
				<ul class="layui-tab-title">
					<li class="layui-this" lay-id="1"><span><i
							class="layui-icon">&#xe638;</i>欢迎页</span></li>
				</ul>
				<div class="layui-tab-content">
					<div class="layui-tab-item layui-show">
						<iframe id="iframe" src="demo/welcome.jsp" frameborder="0"></iframe>
					</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		<div class="layui-footer my-footer"></div>
	</div>



	<!-- 右键菜单 -->
	<div class="my-dblclick-box none">
		<table class="layui-tab dblclick-tab">
			<tr class="card-refresh">
				<td><i class="layui-icon">&#x1002;</i>刷新当前标签</td>
			</tr>
			<tr class="card-close">
				<td><i class="layui-icon">&#x1006;</i>关闭当前标签</td>
			</tr>
			<tr class="card-close-all">
				<td><i class="layui-icon">&#x1006;</i>关闭所有标签</td>
			</tr>
		</table>
	</div>

	<script type="text/javascript" src="frame/layui/layui.js"></script>
	<script type="text/javascript" src="frame/static/js/vip_comm.js"></script>
	<script type="text/javascript">
		layui.use([ 'layer', 'vip_nav' ], function() {

			// 操作对象
			var layer = layui.layer, vipNav = layui.vip_nav, $ = layui.jquery;

			// 顶部左侧菜单生成 [请求地址,过滤ID,是否展开,携带参数]
			vipNav
					.top_left('json/nav_top_left2.json', 'side-top-left',
							false);
			// 主体菜单生成 [请求地址,过滤ID,是否展开,携带参数]
			vipNav.main('json/nav_main2.json', 'side-main', true);

			// you code ...

		});
	</script>
</body>
</html>
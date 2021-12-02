<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/regNLogin.css">
	<script type="text/javascript" src="js/login.js"></script>
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
		<!-----------------------------------Header wrap---------------------------------->
		<div>
		<ul class="header">
			<li>欢迎来到 摩娜国际</li>
	
			<li class="header2"><a href="register.jsp">注册</a></li>
			<li class="header2"> | </li>
			<li class="header2"><a href="login.jsp">登录</a></li>
		</ul>
		</div>
	
		<!--------------------------Company Icon & Search Bar wrap------------------------>
		
		<div class="searchWrap">
			<div class="search logo">
				<img alt="" src="img/moona logo.jpg">
			</div>
			<div class="search bar">
				<div class="barwrap">
					<form action="" method="post">
						<img src="img/searchIcon.PNG" alt="" id="iconImg">
						<input type="text" name="srchProducts" placeholder="请输入产品名称" id="srchtext">
						<input type="submit" value="搜索" id="srchsubmit">
					</form>
				</div>
			</div>
		</div>
		
	
		<!---------------------------------Navigator wrap-------------------------------->
		<div class="navBarContainer">		
			<ul class="nav">
				<li class="allProducts">所有产品分类</li>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="special.jsp">特价专区</a></li>
				<li><a href="fruitsOfSeason.jsp">纽澳当季水果</a></li>
				<li><a href="customerService.jsp">联系客服</a></li>
				<li><a href="customerInfo.jsp">会员信息</a></li>
			</ul>
		</div>
		
	
		<!----------------------------------------Products link & login wrap------------------------------------------->
		<!--------------------------------Product catalog--------------------------->
		<div class="productsArea">
			<div class="productsCatalog">		
				<ul class="productsNav">
					<li><a href="">奶粉母婴</a></li>
					<li><a href="">美妆个护</a></li>
					<li><a href="">营养保健</a></li>
					<li><a href="">服饰玩具</a></li>
					<li><a href="">美味零食</a></li>
					<li><a href="">生活用品</a></li>
				</ul>	
			</div>
				
		<!------------------------------Login----------------------------->
		<div class="login_wrap">
			<div id="login_title">
				<p>会员登录
			</div>
				
			<div id="login_table">
				<div id="log">
					<form name="login_form" action="LoginServlet" method="post">
						<table align="center">
	
							<tr>
								<td width="120">用户名</td>
								<td><input type="text" name="login_name" class="inp" placeholder="请输入用户名" /></td>
							</tr>
								
							<tr>
								<td>密码</td>
								<td><input type="password" name="login_pswd" class="inp" placeholder="请输入密码" /></td>
							</tr>
						        
							<tr>
								<td></td>
								<td colspan="2"><input type="submit" class="login_button" value="登录" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
			
	</div>

</body>
</html>
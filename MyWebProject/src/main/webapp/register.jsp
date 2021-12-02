<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/regNLogin.css">
	<script type="text/javascript" src="js/reg.js"></script>
	<title>Insert title here</title>
</head>
<body>
		<!-----------------------------------Header---------------------------------->
		<div>
		<ul class="header">
			<li>欢迎来到 摩娜国际</li>
	
			<li class="header2"><a href="register.jsp">注册</a></li>
			<li class="header2"> | </li>
			<li class="header2"><a href="login.jsp">登录</a></li>
		</ul>
		</div>
	
		<!--------------------------Company Icon & Search Bar------------------------>
		
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
					<div class="search Cart">
						Shopping Cart
					</div>
		</div>
		
	
		<!---------------------------------Navigator-------------------------------->
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
				
				<!-------------------Scrolling Image----------------->
			<div class="registerWrap">
			
				<div id="title">
					<p>新用户注册
				</div>
				
				<div id="register_table">
					<div id="reg">
					    <form name="register_form" action="RegisterServlet" method="post" onsubmit="return validationOfReg()">
					        <table align="center">
						         <tr>
						         <td>用户名</td>
						         <td><input type="text" name="username" /></td>
						         </tr>
						         
						         <tr>
						         <td>密码</td>
						         <td><input type="password" name="pswd" /></td>
						         </tr>
						         <tr>
						         <td>确认密码</td>
						         <td><input type="password" name="confirmPswd" /></td>
						         </tr>
						         <tr>
						         <td>收件地址</td>
						         <td><input type="text" name="addr" /></td>
						         </tr>
						         <tr>
						         <td>电话号码</td>
						         <td><input type="text" oninput="value=value.replace(/[^\d]/g,'')" name="mobile" /></td>
						         </tr>
						         <tr>
						         <td></td>
						         </tr>
						         <tr>
						         <td></td>
						         <td><input type="submit" id="reg_button" value="注册"></input></td>
						         </tr>
					        </table>
					    </form>
				    </div>
			    </div>

			</div>
		</div>



</body>
</html>
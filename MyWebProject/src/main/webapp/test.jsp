<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>定位</title>
	</head>
	<style>
	/*定位*/
 
	div.pos_relative{
 
		/*下面是一个基于static的绝对定位*/
		/*position:absolute;*/
 
		/*下面是一个基于浏览器窗口的绝对定位*/
		/*position:fixed;
		left:100px;
		top:150px;*/
 
		/*下面是一个相对定位*/
		position:relative;
		left:20px;
		top:10px;
		width:500px;
		height:500px;
		background-color:black;
		color:white;
		text-align:center;
	}
	div.pos_abs{
		position:absolute;
		left:50px;
		top:70px;
		border:2px solid black;
		width:200px;
		height:200px;
		background: white;
		color:black;
	}
	div{
		width:500;
		height:500px;
		border:2px solid black;
	}
	</style>
	<body>
		<div class="pos_relative">
			这是一个定位的父盒子
			<div class="pos_abs">
			(子盒子)子盒子会跟着父盒子一起变动,通过子绝父相,将两盒子的相对位置绑定.
			</div>
		</div>
		
		<div>此盒子用来撑开页面高度</div>
		<div>此盒子用来撑开页面高度</div>
	</body>



</html>
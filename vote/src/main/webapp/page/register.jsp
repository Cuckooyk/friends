<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注 册</title>
<link type="text/css" rel="stylesheet" href="/vote/css/style.css" />
</head>
<body>
<div id="header" class="wrap">
	<img src="/vote/images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="search">
	<!--  
		<form method="get" action="index.html">
			<input type="text" name="keywords" class="input-text" /><input type="submit" name="submit" class="input-button" value="" />
		</form>
	-->	
	</div>
</div>
<div id="register" class="box">
	<h2>新用户注册</h2>
	<div class="content">
	   <form method="post" action="doregister.action">
			<dl>
				<dt>用户ID</dt>
				<dd><input type="text" class="input-text" name="userId" value=""/></dd>
				<dt>用户名</dt>
				<dd><input type="text" class="input-text" name="userName" value=""/></dd>
				<dt>密码</dt>
				<dd><input type="password" class="input-text" name="password" value=""/></dd>
				<dt>确认密码</dt>
				<dd><input type="password" class="input-text" name="confirmPassword" value=""/></dd>
				<dt></dt>
				<dd><input type="submit" class="input-button"  value="" /></dd>
			</dl>
		</form>
		<div class="error"></div>
		<div class="error"></div>
	</div>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>参与投票</title>
<link type="text/css" rel="stylesheet" href="/vote/css/style.css" />

</head>
<body>

<div id="header" class="wrap">
	<img src="/vote/images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="profile">
		您好   ${sessionScope.user.userName }
		<span class="return"><a href="subject_list.action">返回列表</a></span>
		<span class="addnew"><a href="Subject_add.action">添加新投票</a></span>
		<span class="modify"><a href="Subject!modify.action">维护</a></span>
		
	</div>
	<div class="search">
		<form method="post" action="Subject!search.action">
			<input type="text" name="keywords" class="input-text" value=""/><input type="submit" name="submit" class="input-button" value="" />
		</form>
	</div>
</div>

<div id="vote" class="wrap">
	<h2>参与投票</h2>
	<ul class="list">
		<li>
			<h4>${sessionScope.option.title }</h4>
			<p class="info">共有 ${sessionScope.option.optionCount} 个选项，已有 ${sessionScope.option.userCount } 个网友参与了投票。</p>
			<label style="color:red">${sessionScope.saveMsg }</label>
			<form method="post" action="Vote_save.action">
			    <input type="hidden" name="vsid" value="${sessionScope.option.id }"/> 
			    <input type="hidden" name="userId" value=" ${sessionScope.user.userId }"/> 
				<ol>
				 	<c:set var="chioce" value="${sessionScope.option.type eq 1 ? 'radio' : 'checkbox'}"/>
				   	<c:forEach items="${sessionScope.option.options}" var="p" varStatus="s">
						<li><input type="${chioce}" name="voId"  value="${p.id}"/>${p.name }</li>
				  	</c:forEach>
				</ol>
				<p class="voteView"><input type="image" src="/vote/images/button_vote.gif" /><a href="View_view.action?vsid=${sessionScope.option.id }"><img src="/vote/images/button_view.gif" /></a></p>
			</form>
		</li>
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>

</body>
	
</html>


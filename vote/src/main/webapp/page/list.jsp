<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>投票列表</title>
<link type="text/css" rel="stylesheet" href="/vote/css/style.css" />
</head>
<body>
<div id="header" class="wrap">
	<img src="/vote/images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="profile">
		<c:choose>
			<c:when test="${sessionScope.user.userName eq null }">
				<a href='page/login.jsp'>&nbsp;登录</a>
			</c:when>
			<c:otherwise>您好   ${sessionScope.user.userName }</c:otherwise>
		</c:choose>
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
	<h2>投票列表</h2>
	<ul class="list">
		<c:forEach items="${sessionScope.subjects}" var="s" varStatus="status">
	
	<li <c:if test="${status.index % 2 == 0}"> class="odd" </c:if> >
			<h4>				
				<a href="View_view.action?vsid=${s.id }">${s.title }</a>
			</h4>
			<div class="join"><a href="View_vote.action?vsid=${s.id }">我要参与</a></div>
			<p class="info">共有 ${s.optionCount } 个选项，已有  ${s.userCount }个网友参与了投票。</p>
		</li>
		</c:forEach>
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
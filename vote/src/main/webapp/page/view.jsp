<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
	<h2>查看投票</h2>
	<ul class="list">
		<li>
			<h4>${sessionScope.options.title }</h4>
			<p class="info">共有 ${sessionScope.options.optionCount } 个选项，已有 ${sessionScope.options.userCount } 个网友参与了投票。</p>
				<ol>
				   <c:forEach items="${sessionScope.options.count }" var="c">
					<li>
						<div class="rate">
							<div class="ratebg"><div class="percent" style='width:
							  <c:choose>
									<c:when test="${sessionScope.options.userCount == 0 }">0</c:when>
									<c:otherwise><fmt:formatNumber value="${c/sessionScope.options.userCount }" type="percent" maxFractionDigits="2"/></c:otherwise>
							</c:choose>'></div></div>
							<p>${c}票<span>(
								<c:choose>
									<c:when test="${sessionScope.options.userCount == 0 }">0</c:when>
									<c:otherwise><fmt:formatNumber value="${c/sessionScope.options.userCount }" type="percent" maxFractionDigits="2"/></c:otherwise>
								</c:choose>)</span></p>
						</div>
					</li>
				   </c:forEach>
				  	
				</ol>
				<div class="goback"><a href="View_vote.action?vsid=${sessionScope.options.id }">返回投票列表</a></div>
		</li>
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>

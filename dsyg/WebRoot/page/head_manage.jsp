<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script type="text/javascript">
	function goHome() {
		window.location.href = '<c:url value="/managehome/showManageHomeAction.action"></c:url>';
	}
</script>
<div class="user_bg">
	<div class="user">
		<span>用户名：<%=session.getAttribute("user_name")%></span>
		<span>登录时间：<%=session.getAttribute("login_time")%></span>
		<a class="fr mgl5" href="<c:url value="/manage/manageLogoutAction.action"></c:url>">退出</a>	
		<a class="fr" href="<c:url value="/managehome/showManageHomeAction.action"></c:url>">返回首页</a>			
	</div>
</div>
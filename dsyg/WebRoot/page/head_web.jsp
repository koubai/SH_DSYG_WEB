<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script type="text/javascript">
	function manageLogout() {
		//window.location.href = '<c:url value="/manage/manageLogoutAction.action"></c:url>';
	}
</script>
<div id="top">
	<div class="top">
		<div class="menu">
			<ul>
				<li><a href="<c:url value="/home/goHomeAction.action"></c:url>">首页</a></li>
				<li><a href="<c:url value="/search/showSearchAction.action"></c:url>">产品信息</a></li>
				<li><a href="#">相关技术情报</a></li>
				<li><a href="<c:url value="/home/showCompanyInfoAction.action"></c:url>">公司信息</a></li>
				<li><a href="<c:url value="/home/showCompanyNewAction.action"></c:url>">公司新闻</a></li>
				<li><a href="#">咨询信息Q/A</a></li>
				<li><a href="#">案例介绍</a></li>
				<li><a href="<c:url value="/search/showSearchWarehouseAction.action"></c:url>">库存信息</a></li>
				<li><a href="<c:url value="/home/showOnlineAction.action"></c:url>">线上购买</a></li>
			</ul>
		</div>
		<div class="logo">
			<a href="<c:url value="/home/goHomeAction.action"></c:url>"></a>			
		</div>
	</div>
</div>
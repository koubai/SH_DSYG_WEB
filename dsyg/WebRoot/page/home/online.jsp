<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="keywords" content="东升盈港" />
<meta name="description" content="东升盈港" />
<meta name="author" content="javascript:" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script src="<%=request.getContextPath()%>/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/loopedslider.min.js" type="text/javascript"></script>
<title>线上购买</title>
<script type="text/javascript">
</script>
</head>
<body>
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
		<div class="test fr">试运行中...</div>
	</div>
</div>
<div class="main">
	<div class="product_header">
		<div class="pagekv">
			<img src="<%=request.getContextPath()%>/images/banner3.png" />
		</div>
	</div>
	<div class="content">
		<h1 align="center" style="height:100px; line-height:100px;">建设中...</h1>					
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

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
<meta http-equiv="x-ua-compatible" content="ie=7" /> 
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script src="<%=request.getContextPath()%>/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/loopedslider.min.js" type="text/javascript"></script>
<title>
<s:if test="newsDetail != null">
新闻明细-<s:property value="newsDetail.title"/>
</s:if>
<s:else>
新闻明细
</s:else>
</title>
<script type="text/javascript">
</script>
</head>
<body>
<jsp:include page="../head_web.jsp" flush="true" />
<div class="main">
	<div class="product_header">
		<div class="pagekv">
			<img src="<%=request.getContextPath()%>/images/news_bg.png" />
		</div>
	</div>
	<div class="page_main">
		<br />
		<br />
		<br />
		<br />
		<s:if test="newsDetail == null">
			没有该新闻
		</s:if>
		<s:else>
			此页面是新闻明细页面，等待新闻格式页面<br />
			此页面是新闻明细页面，等待新闻格式页面<br />
			此页面是新闻明细页面，等待新闻格式页面<br />
			此页面是新闻明细页面，等待新闻格式页面<br />
			此页面是新闻明细页面，等待新闻格式页面<br />
			此页面是新闻明细页面，等待新闻格式页面<br />
			此页面是新闻明细页面，等待新闻格式页面<br />
		</s:else>
		<br />
		<br />
		<br />
		<br />
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

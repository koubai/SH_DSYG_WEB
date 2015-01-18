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
<title>公司新闻</title>
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
		<div class="page_item">
			<div class="pro_img">
				<img src="<%=request.getContextPath()%>/images/news.jpg" alt="新闻">
			</div>
			<div class="pro_adress">
				<a href="../index.html">首页 </a> &gt; 新闻</div>
		</div>
		<div class="item_line">
			<img src="<%=request.getContextPath()%>/images/page_line.jpg">
		</div>
		<div class="pro_content">
			<div class="pro_list">
				<ul>
					<s:iterator id="yearList" value="yearList" status="st1">
						<li>
							<s:if test='%{yearList[#st1.index] == newsYear}'>
								<a href="<c:url value="/home/showCompanyNewAction.action"><c:param name="newsYear" value="${yearList[st1.index]}"></c:param></c:url>" style="font-size:16px;"><font color="red"><s:property />年</font></a>
							</s:if>
							<s:else>
								<a href="<c:url value="/home/showCompanyNewAction.action"><c:param name="newsYear" value="${yearList[st1.index]}"></c:param></c:url>" style="font-size:16px;"><s:property />年</a>
							</s:else>
						</li>
					</s:iterator>
				</ul>
			</div>
			<div class="news_details">
				<p>
					<img src="<%=request.getContextPath()%>/images/news_news.jpg" alt="新闻">
				</p>
				<ul>
					<s:iterator id="homeNewsList" value="homeNewsList" status="st1">
						<li>
							<span class="span_width"><s:property value="newsdate"/></span>
							<span class="news_distance">
							<span class="news_span"></span>
							<a target="_blank" href="<c:url value="/home/showNewsDetailAction.action"><c:param name="newsDetailId" value="${id}"></c:param></c:url>"><s:property value="title"/></a>
							</span>
						</li>
					</s:iterator>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="h80"></div>
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

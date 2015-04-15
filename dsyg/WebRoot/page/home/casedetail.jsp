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
<title>
<s:if test="caseDetail != null">
东升盈港-案例明细-<s:property value="caseDetail.title"/>
</s:if>
<s:else>
东升盈港-案例明细
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
			<img src="<%=request.getContextPath()%>/images/banner7.png" />
		</div>
	</div>
	<div class="page_main">
		<div class="page_item">
			<div class="pro_img">
				案例介绍
			</div>
			<div class="pro_adress">
				<a href="#">首页 </a> &gt; <a href="#"> 案例介绍</a> &gt; 案例详情 
			</div>
		</div>
		<div class="item_line">
			<img src="<%=request.getContextPath()%>/images/page_line.jpg">
		</div>
		<div class="pro_content">
			<div class="pro_list">
			</div>
			<div class="news_details">
				<p class="news_tit"><s:property value="caseDetail.title"/></p>
				<p class="wire_content">
					<s:if test='caseDetail.pic01 != null && caseDetail.pic01 != ""'>
						<a href="<s:property value="caseDetail.casePicUrl"/><s:property value="caseDetail.pic01"/>"><img alt="" src="<s:property value="caseDetail.casePicUrl"/><s:property value="caseDetail.pic01"/>" height="226" > 
					</s:if>
				</p>
				<div class="newscontent">
					<p>${caseDetail.data}</p>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

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
<title>东升盈港-总经理致辞</title>
<script type="text/javascript">
</script>
</head>
<body>
<jsp:include page="../head_web.jsp" flush="true" />
<div class="main">
	<div class="product_header">
		<div class="pagekv">
			<img src="<%=request.getContextPath()%>/images/banner1.png" />
		</div>
	</div>
	<div class="page_main">
		<div class="page_item">
			<div class="pro_img">
				<img src="<%=request.getContextPath()%>/images/company.jpg" alt="公司概要">
			</div>
			<div class="pro_adress">
				<a href="#">首页 </a> &gt; <a href="#">公司概要</a> &gt; 总经理致辞
			</div>
		</div>
		<div class="item_line">
			<img src="<%=request.getContextPath()%>/images/page_line.jpg">
		</div>
		<div class="pro_content">
			<div class="pro_list">
				<ul>
					<li id="list1">
						<a href="<c:url value="/home/showCompanyInfoAction.action"></c:url>">公司简介</a>
					</li>
					<li id="list2">
						<a href="<c:url value="/home/showCompanySpeechAction.action"></c:url>" class="cur">总经理致辞</a>
					</li>
					<li id="list3">
						<a href="<c:url value="/home/showCompanyHistoryAction.action"></c:url>">历史</a>
					</li>
					<li id="list4">
						<a href="<c:url value="/home/showCompanyDistributionAction.action"></c:url>">公司分布</a>
					</li>
					<li id="list5">
						<a href="<c:url value="/home/showCompanyRecruitAction.action"></c:url>">招聘信息</a>
					</li>
				</ul>
			</div>
			<div class="company">
				<p>
					<img alt="董事长发言" src="<%=request.getContextPath()%>/images/ceo.jpg"> 
				</p>
				<p class="wire_content">
					<img alt="董事长 " src="<%=request.getContextPath()%>/images/chief.jpg" height="209" width="621"> 
				</p>
				<p>
				<span style=" font-family:微软雅黑; font-size:15px; color: #666666">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp做为一家著名品牌的专业代理商，背靠住友电工强大产品的综合优势。二十多年来，在中国经济强劲增长的背景下，东升盈港公司脚踏实地地稳步发展、前进着。
				</span>
				</p>
				<p>
				<span style=" font-family:微软雅黑; font-size:15px; color: #666666">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2014年我们荣获《住友电工优秀海外代理商》荣誉和奖杯，这是对东升公司二十多年来努力的肯定，是对住友电工二十多年来支持、帮助的回报，更是对我们公司今后二十年、三十年的期待，我们将一如既往地努力工作，积极配合住友电工的市场发展策略，努力工作，锐意进取！
				</span>
				</p>
				<p>
				<span style=" font-family:微软雅黑; font-size:15px; color: #666666">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp谢谢广大用户多年来的支持！
				</span>
				</p>
				<p>
				<span style=" font-family:微软雅黑; font-size:15px; color: #666666">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp谢谢住友电工多年来的支持！
				</span>
				</p>
				<p>
				<span style=" font-family:微软雅黑; font-size:15px; color: #666666">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp谢谢东升盈港全体员工多年来的努力！
				</span>
				</p>
				<p>
				<span style=" font-family:微软雅黑; font-size:15px; color: #666666">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp徐敏嘉
				</span>
				</p>
				<p>
				<span style=" font-family:微软雅黑; font-size:15px; color: #666666">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2015年3月31日
				</span>
				</p>
				</div>
			<div class="clear"></div>
			<div class="h80"></div>
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

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
<title>公司历史</title>
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
				<a href="#">首页 </a> &gt; <a href="#">公司概要</a> &gt; 历史
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
						<a href="<c:url value="/home/showCompanySpeechAction.action"></c:url>">总经理致辞</a>
					</li>
					<li id="list3">
						<a href="<c:url value="/home/showCompanyHistoryAction.action"></c:url>" class="cur">历史</a>
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
			  <p><img alt="历史" src="<%=request.getContextPath()%>/images/history.jpg" width="76" height="24"> </p>
			  <div class="history">
				<dl>
				  <dt><span class="zs"></span>1994 - 2014</dt>
					<dd style="display: block;"> 
						<table class="ke-zeroborder" border="0" cellpadding="5">
							<tbody>
								<tr class="alt-row">
									<td>
										1994年8月
									</td>
									<td>
										上海東升盈港贸易有限责任公司成立。
									</td>
								</tr>
								<tr>
									<td>
										1994年10月
									</td>
									<td>
										成为住友电工产品中国华东地区产品经销商。
									</td>
								</tr>
								<tr class="alt-row">
									<td>
										2001年3月
									</td>
									<td>
										上海東升盈港企业发展有限公司成立。
									</td>
								</tr>
								<tr>
									<td>
										2001年10月
									</td>
									<td>
										正式成为住友电工产品中国华东地区产品代理商。
									</td>
								</tr>
								<tr class="alt-row">
									<td>
										2004年8月
									</td>
									<td>
										全资购入上海市控江路760号（800M2）作为公司营业总部及经营场地。
									</td>
								</tr>
								<tr>
									<td>
										2007年3月
									</td>
									<td>
										深圳東升盈港科技有限公司成立。
									</td>
								</tr>
								<tr class="alt-row">
									<td>
										2007年8月
									</td>
									<td>
東升盈港出资投资上海金东唐科技股份有限公司，成为该公司控股股东。JDT于2014年8月挂牌新三板（股票代码：831089）。
									</td>
								</tr>
								<tr>
									<td>
										2014年7月
									</td>
									<td>
										上海東升盈港企业发展有限公司成为首届住友电工产品大中华区代理商。
									</td>
								</tr>
							</tbody>
			</table>
		<br> </dd>
			 </dd>
				</dl>
			  </div>
			</div>
			<div class="clear"></div>
			<div class="h80"></div>
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

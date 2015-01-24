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
<title>公司信息</title>
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
				<a href="#">首页 </a> &gt; <a href="#">公司概要</a> &gt; 公司简介
			</div>
		</div>
		<div class="item_line">
			<img src="<%=request.getContextPath()%>/images/page_line.jpg">
		</div>
		<div class="pro_content">
			<div class="pro_list">
				<ul>
					<li id="list1">
						<a href="<c:url value="/home/showCompanyInfoAction.action"></c:url>" class="cur">公司简介</a>
					</li>
					<li id="list2">
						<a href="<c:url value="/home/showCompanySpeechAction.action"></c:url>">总经理致辞</a>
					</li>
					<li id="list3">
						<a href="<c:url value="/home/showCompanyHistoryAction.action"></c:url>">历史</a>
					</li>
					<li id="list4">
						<a href="<c:url value="/home/showCompanyDistributionAction.action"></c:url>">公司分布</a>
					</li>
					<li id="list5">
						<a href="#">招聘信息</a>
					</li>
				</ul>
			</div>
			<div class="capital">
				<p class="wire_content">
					<img alt="经营理念" src="<%=request.getContextPath()%>/images/mimg1.jpg" height="226" width="639"> 
				</p>
				<div class="capital_heights">
				</div>
				<div class="capital_details">
					<p class="basic_rules">
						经营基本方针
					</p>
					<ul>
						<h3>
							東升盈港为了实现经营理念，以下述方针为准则，开展经营活动。
						</h3>
						<li>
							通过新发明的想法以及不懈的努力提高企业的效率，为全世界的顾客提供最大化的价值。
						</li>
						<li>
							在遵守法律和地域文化前提下展开企业活动，为社会发展贡献力量。
						</li>
						<li>
							把环境和安全作为最优先的企业活动，为实现繁荣社会作出贡献。
						</li>
						<li>
							为开放公平交易作出努力，为共发展共繁荣作出贡献。
						</li>
						<li>
							尊重人才，创造最大化发挥个人和团队能力的公司环境，为每个人的梦想作出贡献。
						</li>
					</ul>
				</div>
				<div class="capital_heights2">
				</div>
				<p class="tabletit">
					公司简介
				</p>
			  <div class="cap_table">
					<table class="ke-zeroborder" cellpadding="0" cellspacing="0" border="0" width="660">
						<tbody>
							<tr>
								<td class="cap_tab1">
									名称									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">上海東升盈港贸易有限责任公司</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									所在地									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">上海市杨浦区控江路760号</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									成立时间（注册）									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">1994年7月29日</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									资本金									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">人民币50万元整</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									联系方式（总公司）									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">电话：021－65388038－0（总机）<br />传真：021－65387551</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									电邮方式									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">Mail：---@---.com<br /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="cap_table" style="margin-top:10px;">
					<table class="ke-zeroborder" cellpadding="0" cellspacing="0" border="0" width="660">
						<tbody>
							<tr>
								<td class="cap_tab1">
									名称									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">上海東升盈港企业发展有限公司</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									所在地									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">上海市杨浦区控江路760号</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									成立时间（注册）									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">2001年3月22日</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									资本金									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">人民币500万元整</td>
							</tr>
							<tr>
								<td class="cap_tab1">出资方</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">上海東升盈港贸易有限公司100%出资</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									联系方式									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">电话：021－65388038－0（总机）<br />传真：021－65387551</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									电邮方式									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">Mail：---@---.com<br /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="cap_table" style="margin-top:10px;">
					<table class="ke-zeroborder" cellpadding="0" cellspacing="0" border="0" width="660">
						<tbody>
							<tr>
								<td class="cap_tab1">
									名称									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">深圳東升盈港企业发展有限公司</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									所在地									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">广东省深圳市西乡镇宝民二路臣田综合楼8号</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									成立时间（注册）									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">2007年7月3日</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									资本金									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">人民币150万元整</td>
							</tr>
							<tr>
								<td class="cap_tab1">出资方</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">上海東升盈港贸易有限公司100%出资</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									联系方式									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">电话：0755－61524301－0（总机）<br />传真：0755－61524300</td>
							</tr>
							<tr>
								<td class="cap_tab1">
									电邮方式									</td>
								<td class="cap_tab3">
									<br>									</td>
								<td class="cap_tab2">Mail：---@---.com<br /></td>
							</tr>
						</tbody>
					</table>
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

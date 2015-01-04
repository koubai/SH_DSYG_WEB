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
<title>公司分布</title>
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
				<img src="<%=request.getContextPath()%>/images/company.jpg" alt="公司概要">
			</div>
			<div class="pro_adress">
				<a href="#">首页 </a> &gt; <a href="#">公司概要</a> &gt; 公司分布
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
						<a href="<c:url value="/home/showCompanyHistoryAction.action"></c:url>">历史</a>
					</li>
					<li id="list4">
						<a href="<c:url value="/home/showCompanyDistributionAction.action"></c:url>" class="cur">公司分布</a>
					</li>
				</ul>
			</div>
			<div class="capital">
				<script type="text/javascript" src="../js/map.js"></script>
				<p><img src="<%=request.getContextPath()%>/images/company_path.jpg" alt="公司分布" height="18" width="94"></p>
				<div class="cap_map">
				<p><img src="<%=request.getContextPath()%>/images/imgmap.jpg" alt="公司分布" usemap="#Map" border="0" height="550" width="651"></p>
				
				<p class="pop1">
					<img src="<%=request.getContextPath()%>/images/pop1.png"> 
				</p>
				<p class="pop2">
					<img src="<%=request.getContextPath()%>/images/pop2.png"> 
				</p>
				<p class="pop3">
					<img src="<%=request.getContextPath()%>/images/pop3.png"> 
				</p>
				<p class="pop4">
					<img src="<%=request.getContextPath()%>/images/pop4.png"> 
				</p>
				<p class="pop5">
					<img src="<%=request.getContextPath()%>/images/pop5.png"> 
				</p>
				<p class="pop6">
					<img src="<%=request.getContextPath()%>/images/pop6.png"> 
				</p>
				<p class="pop7">
					<img src="<%=request.getContextPath()%>/images/pop7.png"> 
				</p>
				<p class="pop8">
					<img src="<%=request.getContextPath()%>/images/pop8.png"> 
				</p>
				<p class="pop9">
					<img src="<%=request.getContextPath()%>/images/pop9.png"> 
				</p>
				<p class="pop10">
					<img src="<%=request.getContextPath()%>/images/pop10.png"> 
				</p>
				<p class="pop11">
					<img src="<%=request.getContextPath()%>/images/pop11.png"> 
				</p>
				<p class="pop12">
					<img src="<%=request.getContextPath()%>/images/pop12.png"> 
				</p>
				<p class="pop13">
					<img src="<%=request.getContextPath()%>/images/pop13.png"> 
				</p>
				<p class="pop14">
					<img src="<%=request.getContextPath()%>/images/pop14.png"> 
				</p>
				<p class="pop15">
					<img src="<%=request.getContextPath()%>/images/pop15.png"> 
				</p>
				<p class="pop16">
					<img src="<%=request.getContextPath()%>/images/pop16.png"> 
				</p>
				<p class="pop17">
					<img src="<%=request.getContextPath()%>/images/pop17.png"> 
				</p>
				<p class="pop18">
					<img src="<%=request.getContextPath()%>/images/pop18.png"> 
				</p>
				<p class="pop19">
					<img src="<%=request.getContextPath()%>/images/pop19.png"> 
				</p>
				<p class="pop20">
					<img src="<%=request.getContextPath()%>/images/pop20.png"> 
				</p>
				<p class="pop21">
					<img src="<%=request.getContextPath()%>/images/pop21.png"> 
				</p>
				<p class="pop22">
					<img src="<%=request.getContextPath()%>/images/pop22.png"> 
				</p>
				<p class="pop23">
					<img src="<%=request.getContextPath()%>/images/pop23.png"> 
				</p>
				<p class="pop24">
					<img src="<%=request.getContextPath()%>/images/pop24.png"> 
				</p>
				<p class="pop25">
					<img src="<%=request.getContextPath()%>/images/pop25.png"> 
				</p>
				<div class="company_list">
					<div class="list1">
						<ul>
							<li>
								<img alt="（中国）投资有限公司" src="<%=request.getContextPath()%>/images/pic1.jpg" height="80" width="176"> 
							</li>
							<li class="comp_name">
								東升盈港（中国）投资有限公司
							</li>
							<li class="comp_con">
								上海市嘉定区银翔路655号蓝天创业大厦17楼
							</li>
							<li class="comp_con">
								成立时间：2006年11月
							</li>
							<li class="comp_con">
								业务范围：中国事业统括管理，线束，连接器，端子等销售，线束部品开发设计
							</li>
							<li class="comp_con">
								Tel: 86-21-6989-4747
							</li>
							<li class="comp_con">
								邮编：201802
							</li>
						</ul>
					</div>
					<div class="list2">
						<ul>
							<li>
								<img alt="東升盈港（中国）投资有限公司（天津支店）" src="<%=request.getContextPath()%>/images/pic2.jpg" height="80" width="176"> 
							</li>
							<li class="comp_name">
								東升盈港（中国）投资有限公司（天津支店）
							</li>
							<li class="comp_con">
								天津市天津经济技术开发区洞庭路138号研修栋
							</li>
							<li class="comp_con">
								成立时间：2007年9月
							</li>
							<li class="comp_con">
								业务范围：车用线束销售，开发设计
							</li>
							<li class="comp_con">
								Tel: 86-22-2532-3538
							</li>
							<li class="comp_con">
								邮编：300457
							</li>
						</ul>
					</div>
					<div class="list1">
						<ul>
							<li>
								<img alt="東升盈港（中国）投资有限公司（广州支店）" src="<%=request.getContextPath()%>/images/pic3.jpg" height="80" width="176"> 
							</li>
							<li class="comp_name">
								東升盈港（中国）投资有限公司（广州支店）
							</li>
							<li class="comp_con">
								广州市天河区天河路208号粤海天河城大厦1108-11室
							</li>
							<li class="comp_con">
								成立时间：2007年10月
							</li>
							<li class="comp_con">
								业务范围：车用线束销售，开发设计
							</li>
							<li class="comp_con">
								Tel: 86-20-8558-4747
							</li>
							<li class="comp_con">
								邮编：510620
							</li>
						</ul>
					</div>
				</div>
				<div class="comp_dash">
				</div>
				<div class="company_list">
					<div class="list1">
						<ul>
							<li>
								<img alt="東升盈港（中国）投资有限公司（北京事务所）" src="<%=request.getContextPath()%>/images/pic4.jpg" height="80" width="176"> 
							</li>
							<li class="comp_name">
								東升盈港（中国）投资有限公司（北京事务所）
							</li>
							<li class="comp_con">
								北京市朝阳区建国门外大街26号长富宫办公楼2层209室
							</li>
							<li class="comp_con">
								成立时间：2011年05月
							</li>
							<li class="comp_con">
								业务范围：法务
							</li>
							<li class="comp_con">
								Tel: 86-10-6513-4747
							</li>
							<li class="comp_con">
								邮编：100022
							</li>
						</ul>
					</div>
					<div class="list2">
						<ul>
							<li>
								<img alt="東升盈港（中国）投资有限公司（武汉事务所）" src="<%=request.getContextPath()%>/images/pic5.jpg" height="80" width="177"> 
							</li>
							<li class="comp_name">
								東升盈港（中国）投资有限公司（武汉事务所）
							</li>
							<li class="comp_con">
								武汉市江汉区中山大道818号平安大厦21楼G6-G7
							</li>
							<li class="comp_con">
								成立时间：2012年06月
							</li>
							<li class="comp_con">
								业务范围：车用线束销售
							</li>
							<li class="comp_con">
								Tel: 86-27-8288-8747
							</li>
							<li class="comp_con">
								邮编：430000
							</li>
						</ul>
					</div>
					<div class="list1">
						<ul>
							<li>
								<img alt="東升盈港（中国）投资有限公司（长春事务所）" src="<%=request.getContextPath()%>/images/pic6.jpg" height="80" width="176"> 
							</li>
							<li class="comp_name">
								東升盈港（中国）投资有限公司（长春事务所）
							</li>
							<li class="comp_con">
								中国长春市西安大路727号中银大厦A座2008单元
							</li>
							<li class="comp_con">
								成立时间：2011年04月
							</li>
							<li class="comp_con">
								业务范围：车用线束销售
							</li>
							<li class="comp_con">
								Tel: 86-431-8896-5183
							</li>
							<li class="comp_con">
								邮编：130061
							</li>
						</ul>
					</div>
					<div class="company_list">
						<div class="comp_dash">
						</div>
						<div class="list1">
							<ul>
								<li>
									<img alt="東升盈港（中国）投资有限公司（重庆事务所）" src="<%=request.getContextPath()%>/images/pic33.jpg" height="80" width="176"> 
								</li>
								<li class="comp_name">
									東升盈港（中国）投资有限公司（重庆事务所）
								</li>
								<li class="comp_con">
									中国重庆市江北区观音桥西环路8号朗晴广场B塔21F-2
								</li>
								<li class="comp_con">
									成立时间：2014年4月
								</li>
								<li class="comp_con">
									业务范围：车用线束销售
								</li>
								<li class="comp_con">
									Tel: 86-23-6885-3101
								</li>
								<li class="comp_con">
									邮编：400020
								</li>
							</ul>
						</div>
						<div class="list2">
							<ul>
								<li>
									<img alt="上海東升盈港贸易有限公司" src="<%=request.getContextPath()%>/images/pic22.jpg" height="80" width="176"> 
								</li>
								<li class="comp_name">
									上海東升盈港贸易有限公司
								</li>
								<li class="comp_con">
									中国上海市长宁区天山路600弄1号2304室
								</li>
								<li class="comp_con">
									成立时间：2009年2月
								</li>
								<li class="comp_con">
									业务范围：销售，制造，开发
								</li>
								<li class="comp_con">
									Tel: 86-21-6126-3832
								</li>
								<li class="comp_con">
									邮编：200051
								</li>
							</ul>
						</div>
						<div class="list1">
							<ul>
								<li>
									<img alt="杭州相良塑料有限公司" src="<%=request.getContextPath()%>/images/pic30.jpg" height="80" width="176"> 
								</li>
								<li class="comp_name">
									杭州相良塑料有限公司
								</li>
								<li class="comp_con">
									中国浙江省杭州经济技术开发区4号大街3号
								</li>
								<li class="comp_con">
									成立时间：1995年
								</li>
								<li class="comp_con">
									业务范围：车用部品制造
								</li>
								<li class="comp_con">
									Tel: 86-571-8691-0132
								</li>
								<li class="comp_con">
									邮编：310018
								</li>
							</ul>
						</div>
					</div>
					<div class="comp_dash">
					</div>
				</div> 
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

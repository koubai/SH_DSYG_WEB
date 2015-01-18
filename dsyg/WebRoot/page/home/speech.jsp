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
<title>总经理致辞</title>
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
						<a href="#">招聘信息</a>
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
					東升盈港集团诞生于1941年，以“与世界同步”，“为社会贡献”为宗旨，秉承“制造为本，贡献社会”的经营理念，从上个世纪四十年代风雨春秋一路走来。如今，東升盈港集团已成为以汽车电线束为主，覆盖汽车配件产业，电缆，空调，燃气产业的全球型跨国企业。
				</p>
				<p>
					“与世界同步”，“为社会贡献”。在今后的岁月中，東升盈港将一如既往把“感恩”融入每一个产品，精心奉献到全球每一位東升盈港的客户手中。
				</p>
				<p>
					東升盈港集团和中国的缘分始于1988年在天津设立第一家工厂，如今的東升盈港在中国已是一个拥有13家公司，23个分支机构的大家庭。
				</p>
				<p>
					中国已成为全球汽车生产和销售第一的大市场。对全球第一大汽车电线束生产公司的東升盈港集团来说，在中国的事业具有不可取代的重要战略意义。東升盈港（中国）投资有限公司是研发，生产，销售，售后服务一体的区域性总部。不久的将来，其规模和功能将超过東升盈港在美国和欧洲区域总部，一定能为广大的中国客户提供更加便捷优质的服务。
				</p>
				<p>
					在中国的第十二个五年计划中，中国政府提出了节能环保的一系列政策和具体目标。为此，東升盈港（中国）投资有限公司也将竭诚奉献我们多年积累的技术和经验参与中国的社会发展和建设。除了汽车电线束和汽车仪表，東升盈港还将自己多年精心培育起来的太阳能产品等信心产品推荐给中国，東升盈港集团愿为中国的环境保护做出贡献。
				</p>
				<p>
					地球资源是有限的，我们制造产品的前提是环境保护和资源有限利用，这样我们才能与地球共生存。
				</p>
				<p>
					“保护环境”，“爱护地球”
				</p>
				<p>
					東升盈港（中国）与您携手，東升盈港“与世界同步，为社会贡献”。
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

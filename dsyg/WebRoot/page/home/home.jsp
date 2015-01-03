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
<title>首页</title>
<script type="text/javascript">
	$(function(){
		$('#newsSlider').loopedSlider({
			autoStart: 2000
		});
		$('.validate_Slider').loopedSlider({
			autoStart: 2000
		});
		$("#enter_lab").click(function(){
			window.location=$(this).find("a").attr("href"); return false;
		});
	});
</script>
</head>
<body>
<jsp:include page="../head_web.jsp" flush="true" />
<div id="main" class="banner_bg">
	<div class="main">
		<div class="content">
			<div class="banner">
				<div class="product_bg">
				</div>
				<div class="products">
					<table width="80%" border="0" cellpadding="0" cellspacing="10">
`						<tr><s:iterator id="homeGoodsList" value="homeGoodsList" status="st1"><s:if test="#st1.index < 3">
							<td width="33.3%"><a href="<c:url value="/search/showSearchAction.action"></c:url>">
								<div class="product">
									<p><s:property value="fieldname"/></p>
									<p class="arial"><s:property value="mean"/></p>
								</div>	</a>					
							</td>
						</s:if></s:iterator></tr>
						<tr><s:iterator id="homeGoodsList" value="homeGoodsList" status="st1"><s:if test="#st1.index >= 3">
							<td width="33.3%"><a href="<c:url value="/search/showSearchAction.action"></c:url>">
								<div class="product">
									<p><s:property value="fieldname"/></p>
									<p class="arial"><s:property value="mean"/></p>
								</div>	</a>					
							</td>
						</s:if></s:iterator></tr>
					</table>
				</div>
			</div>
			<div class="bottom_c">
				<div class="news">
					<div class="tittle">
						<h3>公司新闻</h3>
						<h3>News</h3>
					</div>
					<div class="news_c">
						<div class="news_c_l">
						</div>
						<div class="news_c_c">
							<ul>
								<s:iterator id="homeNewsList" value="homeNewsList" status="st">
									<li><span><s:property value="newsdate"/></span><a target="_blank" href="<c:url value="/home/showNewsDetailAction.action"><c:param name="newsDetailId" value="${id}"></c:param></c:url>"><s:property value="title"/></a></li>
								</s:iterator>
							</ul>
						</div>
						<div class="news_c_r">
						</div>
					</div>
				</div>
				<div class="video">
					<div id="newsSlider">
						<div class="container">
							<ul class="slides" style="width: 1950px; left: -975x;">
								<li style="position: absolute; left: 0px; display: block;"><a href="#"><img src="<%=request.getContextPath()%>/images/1.jpg"></a></li>
								<li style="position: absolute; left:325px; display: block;"><a href="#"><img src="<%=request.getContextPath()%>/images/2.jpg"></a></li>
								<li style="position: absolute; left: 650px; display: block;"><a href="#"><img src="<%=request.getContextPath()%>/images/3.jpg"></a></li>								
								<li style="position: absolute; left: 975px; display: block;"><a href="#"><img src="<%=request.getContextPath()%>/images/4.jpg"></a></li>
								<li style="position: absolute; left: 1300px; display: block;"><a href="#"><img src="<%=request.getContextPath()%>/images/5.jpg"></a></li>
								<li style="position: absolute; left: -325px; display: block;"><a href="#"><img src="<%=request.getContextPath()%>/images/6.jpg"></a></li>
							</ul>
						</div>
						<div class="validate_Slider"></div>
						<ul class="pagination">
						  <li class=""><a href="#" rel="1">1</a></li>
						  <li class=""><a href="#" rel="2">2</a></li>
						  <li class=""><a href="#" rel="3">3</a></li>
						  <li class=""><a href="#" rel="4">4</a></li>
						  <li class=""><a href="#" rel="5">5</a></li>
						  <li class=""><a href="#" rel="6">6</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"></script>
<title>东升盈港-产品检索列表</title>
<script type="text/javascript">
function turn(id) {
	var totalPage = "${page.totalPage}";
	var turnPage = $("#" +id).val();
	//判断是否输入页码
	if ('' != turnPage) {
		//判断页码是否是大于0的数字
		if(!iscInteger(turnPage)){
			alert("页码必须是大于0的整数！");
			$("#" +id).focus();
			return;
		}
		turnPage = parseInt(turnPage);
		if(turnPage < 1){
			alert("页码必须是大于0的整数！");
			$("#" +id).focus();
			return;
		}
		//判断页码大小是否正确
		if(turnPage > parseInt(totalPage)){
			alert("页码不能超过最大页数！");
			$("#" +id).focus();
			return;
		}
		//换页
		var p = turnPage - 1;
		window.location.href = '<%=request.getContextPath()%>' + "/searchlist" + "${listUrl}" + "_p" + p + ".shtml";
	} else {
		alert("页码不能为空！");
		$("#" +id).focus();
		return;
	}
}
</script>
</head>
<body>
<jsp:include page="../head_web.jsp" flush="true" />
<div id="main">
	<div class="main">
		<div class="header_bg">
			<div class="content">
				<div class="product_search">
					<div class="tittle">
					</div>
					<div class="search_result">
						<a class="return fr" href="<c:url value="/search/showSearchAction.action"></c:url>">返回</a>					
					</div>
					<div class="page">
						<span>第${page.startIndex + 1}页/共${page.totalPage==0?1:page.totalPage}页　共${page.totalCount}条记录</span>
						<span>跳转到第<input class="num" id="pagenum1" type="text" maxlength="6" />页</span><a href="javascript:void(0);" onclick="turn('pagenum1');">跳转</a>　　
						<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p0.shtml">首页</a>
						<s:if test="%{page.startIndex <= 0}">
							<a href="javascript:void(0);">上一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p${page.previousIndex}.shtml">上一页</a>
						</s:else>
						<s:if test="%{page.nextIndex > page.totalPage - 1}">
							<a href="javascript:void(0);">下一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p${page.nextIndex}.shtml">下一页</a>
						</s:else>
						<s:if test="%{page.totalPage > 0}">
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p${page.totalPage - 1}.shtml">末页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p0.shtml">末页</a>
						</s:else>
					</div>
					<table class="product_tab" width="100%" border="1" cellspacing="5" cellpadding="10">
						<tr class="tab_tittle">
							<td>&nbsp;</td>
							<td>品牌</td>
							<td>产品类型</td>
							<td>产品名称</td>
							<!--
							<td>颜色</td>
							-->
							<s:if test='goodsId == "01" || goodsId == "02"'>
								<s:if test='featureList.size() > 0'>
									<s:iterator value="featureList" id="featureList" status="st1">
										<td><s:property value="name"/></td>
									</s:iterator>
								</s:if>
							</s:if>
						</tr>
						<s:iterator value="product01List" id="product01List" status="st2">
							<s:if test="#st2.odd==true">
								<tr>
							</s:if>
							<s:else>
								<tr class="bg2">
							</s:else>
								<td><s:property value="page.pageSize * (page.nextIndex - 1) + #st2.index + 1"/></td>
								<td><s:property value="item08"/></td>
								<td>
									<s:iterator id="goodsList" value="goodsList" status="st3">
										<s:if test="%{goodsList[#st3.index].code == product01List[#st2.index].fieldcode}">
											<s:property value="fieldname"/>
										</s:if>
									</s:iterator>
								</td>
								<td>
									<!--
									<a type="application/pdf" href="<c:url value="/home/showPdfAction.action"><c:param name="pdfFileName" value="${pdfpath}"></c:param></c:url>" target="parent"><s:property value="nameno"/></a>
									-->
									<a href="<s:property value="pdfurl"/><s:property value="pdfpath"/>" target="_blank"><s:property value="nameno"/></a>
									<!--<a type="application/pdf" href="<c:url value="/home/showPdfAction.action"><c:param name="pdfFileName" value="${pdfpath}"></c:param></c:url>" target=""><s:property value="nameno"/></a>-->
								</td>
								<!--
								<td>
									<s:iterator value="colorList" id="colorList" status="st1">
										<s:if test="%{colorList[#st1.index].code == product01List[#st2.index].color1}">
											<s:property value="fieldname"/>
										</s:if>
									</s:iterator>
								</td>
								-->
								<s:if test='goodsId == "01"'>
									<s:iterator value="featureList" id="featureList" status="st4">
										<s:if test='#st4.index == 3 && featureList[#st4.index].codename == "code01_item04" && (item04 == null || item04 == "")'>
											<td>无</td>
										</s:if>
										<s:else>
											<s:iterator value="dictList" id="dictList" status="st5">
												<s:if test="%{dictList[#st5.index].code == item01 && #st4.index == 0}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item02 && #st4.index == 1}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item03 && #st4.index == 2}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item04 && #st4.index == 3}">
													<td><s:property value="fieldname"/></td>
												</s:if>
											</s:iterator>
										</s:else>
									</s:iterator>
								</s:if>
								<s:elseif test='goodsId == "02"'>
									<s:iterator value="featureList" id="featureList" status="st4">
										<s:if test='#st4.index == 5 && featureList[#st4.index].codename == "code02_item06" && (item06 == null || item06 == "")'>
											<td>无</td>
										</s:if>
										<s:else>
											<s:iterator value="dictList" id="dictList" status="st5">
												<s:if test="%{dictList[#st5.index].code == item01 && #st4.index == 0}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item02 && #st4.index == 1}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item03 && #st4.index == 2}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item04 && #st4.index == 3}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item05 && #st4.index == 4}">
													<td><s:property value="fieldname"/></td>
												</s:if>
												<s:if test="%{dictList[#st5.index].code == item06 && #st4.index == 5}">
													<td><s:property value="fieldname"/></td>
												</s:if>
											</s:iterator>
										</s:else>
									</s:iterator>
								</s:elseif>
							</tr>
						</s:iterator>
					</table>
					<div class="page">
						<span>第${page.startIndex + 1}页/共${page.totalPage==0?1:page.totalPage}页　共${page.totalCount}条记录</span>
						<span>跳转到第<input class="num" id="pagenum2" type="text" maxlength="6"/>页</span><a href="javascript:void(0);" onclick="turn('pagenum2');">跳转</a>　　
						<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p0.shtml">首页</a>
						<s:if test="%{page.startIndex <= 0}">
							<a href="javascript:void(0);">上一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p${page.previousIndex}.shtml">上一页</a>
						</s:else>
						<s:if test="%{page.nextIndex > page.totalPage - 1}">
							<a href="javascript:void(0);">下一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p${page.nextIndex}.shtml">下一页</a>
						</s:else>
						<s:if test="%{page.totalPage > 0}">
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p${page.totalPage - 1}.shtml">末页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchlist<s:property value="listUrl"/>_p0.shtml">末页</a>
						</s:else>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

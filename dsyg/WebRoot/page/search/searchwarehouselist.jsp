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
<title>库存检索列表</title>
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
		window.location.href = '<%=request.getContextPath()%>' + "/searchwarehouse" + "${listUrl}" + "_p" + p + ".shtml";
	} else {
		alert("页码不能为空！");
		$("#" +id).focus();
		return;
	}
}

function search() {
	var producttype = $("#producttype").val().trim();
	var productname = $("#productname").val().trim();
	var url = "";
	if(producttype != "") {
		url = "_g" + producttype;
	}
	if(productname != "") {
		url = "_kw" + productname;
	}
	window.location.href = '<%=request.getContextPath()%>' + "/searchwarehouse" + url + "_p0" + ".shtml";
}
</script>
</head>
<body>
<jsp:include page="../head_web.jsp" flush="true" />
<div id="main">
	<s:hidden name="producttype" id="producttype"/>
	<div class="main">
		<div class="header_bg">
			<div class="content">
				<div class="product_search">
					<div class="tittle">
					</div>
					<table width="80%" border="0" cellpadding="0" cellspacing="5">
						<tr><s:iterator id="goodsList" value="goodsList" status="st1"><s:if test="#st1.index < 3">
							<s:if test="%{goodsList[#st1.index].code == producttype}">
								<td width="33.3%"><a href="#">
									<div class="product product_cur">
										<p><s:property value="fieldname"/></p>
										<p class="arial"><s:property value="mean"/></p>
									</div>	</a>
								</td>
							</s:if>
							<s:else>
								<td width="33.3%"><a href="<c:url value="/search/searchWarehouseListAction.action"><c:param name="producttype" value="${code}"></c:param><c:param name="startIndex" value="${startIndex}"></c:param></c:url>">
									<div class="product">
										<p><s:property value="fieldname"/></p>
										<p class="arial"><s:property value="mean"/></p>
									</div>	</a>
								</td>
							</s:else>
						</s:if></s:iterator></tr>
						<tr><s:iterator id="goodsList" value="goodsList" status="st1"><s:if test="#st1.index >= 3">
							<s:if test="%{goodsList[#st1.index].code == producttype}">
								<td width="33.3%"><a href="#">
									<div class="product product_cur">
										<p><s:property value="fieldname"/></p>
										<p class="arial"><s:property value="mean"/></p>
									</div>	</a>
								</td>
							</s:if>
							<s:else>
								<td width="33.3%"><a href="<c:url value="/search/searchWarehouseListAction.action"><c:param name="producttype" value="${code}"></c:param><c:param name="startIndex" value="${startIndex}"></c:param></c:url>">
									<div class="product">
										<p><s:property value="fieldname"/></p>
										<p class="arial"><s:property value="mean"/></p>
									</div>	</a>
								</td>
							</s:else>
						</s:if></s:iterator></tr>
					</table>
					<div class="inventory_search">
						<s:textfield name="productname" id="productname" cssClass="keyword" maxlength="16" theme="simple"></s:textfield>
						<input type="button" class="search_btn" value="检索" onclick="search();" />
					</div>
					<div class="page">
						<span>第${page.startIndex + 1}页/共${page.totalPage==0?1:page.totalPage}页　共${page.totalCount}条记录</span>
						<span>跳转到第<input class="num" id="pagenum1" type="text" maxlength="6" />页</span><a href="javascript:void(0);" onclick="turn('pagenum1');">跳转</a>　　
						<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p0.shtml">首页</a>
						<s:if test="%{page.startIndex <= 0}">
							<a href="javascript:void(0);">上一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p${page.previousIndex}.shtml">上一页</a>
						</s:else>
						<s:if test="%{page.nextIndex > page.totalPage - 1}">
							<a href="javascript:void(0);">下一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p${page.nextIndex}.shtml">下一页</a>
						</s:else>
						<s:if test="%{page.totalPage > 0}">
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p${page.totalPage - 1}.shtml">末页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p0.shtml">末页</a>
						</s:else>
					</div>
					<table class="product_tab" width="100%" border="1" cellspacing="5" cellpadding="10">
						<tr class="tab_tittle">
							<td>&nbsp;</td>
							<td>产品名称</td>
							<td>产品类型</td>
							<td>入库</td>
							<td>出库</td>
							<td>定单单位</td>
							<td>送货期</td>
						</tr>
						<s:iterator value="searchWarehouseList" id="searchWarehouseList" status="st2">
							<s:if test="#st2.odd==true">
								<tr>
							</s:if>
							<s:else>
								<tr class="bg2">
							</s:else>
								<td><s:property value="page.pageSize * (page.nextIndex - 1) + #st2.index + 1"/></td>
								<td>
									<s:property value="productname"/>
								</td>
								<td>
									<s:iterator id="goodsList" value="goodsList" status="st3">
										<s:if test="%{goodsList[#st3.index].code == searchWarehouseList[#st2.index].producttype}">
											<s:property value="fieldname"/>
										</s:if>
									</s:iterator>
								</td>
								<td><s:property value="item01"/></td>
								<td><s:property value="item02"/></td>
								<td><s:property value="item03"/></td>
								<td><s:property value="item04"/></td>
							</tr>
						</s:iterator>
					</table>
					<div class="page">
						<span>第${page.startIndex + 1}页/共${page.totalPage==0?1:page.totalPage}页　共${page.totalCount}条记录</span>
						<span>跳转到第<input class="num" id="pagenum2" type="text" maxlength="6"/>页</span><a href="javascript:void(0);" onclick="turn('pagenum2');">跳转</a>　　
						<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p0.shtml">首页</a>
						<s:if test="%{page.startIndex <= 0}">
							<a href="javascript:void(0);">上一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p${page.previousIndex}.shtml">上一页</a>
						</s:else>
						<s:if test="%{page.nextIndex > page.totalPage - 1}">
							<a href="javascript:void(0);">下一页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p${page.nextIndex}.shtml">下一页</a>
						</s:else>
						<s:if test="%{page.totalPage > 0}">
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p${page.totalPage - 1}.shtml">末页</a>
						</s:if>
						<s:else>
							<a href="<%=request.getContextPath()%>/searchwarehouse<s:property value="listUrl"/>_p0.shtml">末页</a>
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

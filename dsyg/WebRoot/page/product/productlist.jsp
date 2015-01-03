<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"></script>
<title>产品一览</title>
<script type="text/javascript">
	//新增
	function add() {
		document.mainform.action = '<c:url value="/product/showAddProductAction.action"></c:url>';
		document.mainform.submit();
	}
	
	function upd() {
		var id = getSelectedID();
		if(id == "") {
			alert("请选择一条记录！");
			return;
		} else {
			$("#updProduct01Id").val(id);
			document.mainform.action = '<c:url value="/product/showUpdProductAction.action"></c:url>';
			document.mainform.submit();
		}
	}
	
	function del() {
		var id = getSelectedID();
		if(id == "") {
			alert("请选择一条记录！");
			return;
		} else {
			if(confirm("确定删除该记录吗？")) {
				document.mainform.action = '<c:url value="/product/delProductAction.action"></c:url>' + "?delProduct01Id=" + id;
				document.mainform.submit();
			}
		}
	}
	
	function getSelectedID() {
		var id = "";
		var list = document.getElementsByName("radioKey");
		for(var i = 0; i < list.length; i++) {
			if(list[i].checked) {
				id = list[i].value;
				break;
			}
		}
		return id;
	}
	
	//检索
	function query() {
		document.mainform.action = '<c:url value="/product/queryManageProductAction.action"></c:url>';
		document.mainform.submit();
	}
	
	//翻页
	function changePage(pageNum) {
		document.getElementById("startIndex").value = pageNum;
		document.mainform.action = '<c:url value="/product/turnManageProductAction.action"></c:url>';
		document.mainform.submit();
	}

	//页跳转
	function turnPage(id) {
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
			changePage(turnPage - 1);
		} else {
			alert("页码不能为空！");
			$("#" +id).focus();
			return;
		}	
	}
</script>
</head>
<body>
<jsp:include page="../head_manage.jsp" flush="true" />
<div id="main">
	<div class="main">
		<div>
			<div class="content">
				<div class="product_search">
					<s:form id="mainform" name="mainform" method="POST">
						<s:hidden name="startIndex" id="startIndex"/>
						<s:hidden name="delProduct01Id" id="delProduct01Id"/>
						<s:hidden name="updProduct01Id" id="updProduct01Id"/>
						<h3 class="s_select">产品检索
							<select name="queryProduct01Dto.fieldcode" id="fieldcode">
								<option value="" selected="selected">请选择</option>
								<s:iterator value="goodsList" id="goodsList" status="st1">
									<s:if test="%{goodsList[#st1.index].code == queryProduct01Dto.fieldcode}">
										<option value="<s:property value="code"/>" selected="selected"><s:property value="fieldname"/></option>
									</s:if>
									<s:else>
										<option value="<s:property value="code"/>"><s:property value="fieldname"/></option>
									</s:else>
								</s:iterator>
							</select>
						</h3>
				  		<div class="search1">
							<h3>关键字检索
								<input class="keyword" name="queryProduct01Dto.keyword" id="keyword" value="<s:property value="queryProduct01Dto.keyword"/>" type="text" />
								<input type="button" class="search_btn mgl5" value="检索" onclick="query();"/>
							</h3>
							<div class="line"></div>
						</div>
						<div class="page">
							<div align="left" style="position: absolute; margin-left: -340px; margin-top: 4px;">
								<a href="javascript:void(0);" onclick="add();">新　增</a>
								<a href="javascript:void(0);" onclick="upd();">修　改</a>
								<a href="javascript:void(0);" onclick="del();">删　除</a>
							</div>
							<span>第${page.startIndex + 1}页 / 共${page.totalPage==0?1:page.totalPage}页 共${page.totalCount}条记录</span><span>
							跳转到第<input class="num" id="pagenum1" maxlength="6" type="text" />页</span><a href="javascript:void(0);" onclick="javascript:turnPage('pagenum1');">跳转</a>　　
							<a href="javascript:void(0);" onclick="changePage(0);">首页</a>
							<s:if test="%{page.startIndex <= 0}">
								<a href="javascript:void(0);">上一页</a>
							</s:if>
							<s:else>
								<a href="javascript:void(0);" onclick="changePage('${page.previousIndex}');">上一页</a>
							</s:else>
							<s:if test="%{page.nextIndex > page.totalPage - 1}">
								<a href="javascript:void(0);">下一页</a>
							</s:if>
							<s:else>
								<a href="javascript:void(0);" onclick="changePage('${page.nextIndex}');">下一页</a>
							</s:else>
							<a href="javascript:void(0);" onclick="changePage('${page.totalPage - 1}');">末页</a>
						</div>
						<table class="product_tab" width="100%" border="1" cellspacing="5" cellpadding="10">
							<tr class="tab_tittle">
								<td width="40">&nbsp;</td>
								<td width="130">产品名称</td>
								<td width="100">产品型号</td>
								<td width="100">产品分类</td>
								<td width="100">颜色</td>
								<td width="100">是否显示</td>
								<td width="120">创建日期</td>
							</tr>
							<s:iterator id="manageProduct01List" value="manageProduct01List" status="st1">
							<s:if test="#st1.odd==true">
								<tr>
							</s:if>
							<s:else>
								<tr class="bg2">
							</s:else>
									<td><input name="radioKey" type="radio" value="<s:property value="id"/>"/></td>
									<td><s:property value="nameno"/></td>
									<td><s:property value="typeno"/></td>
									<td>
										<s:iterator value="goodsList" id="goodsList" status="st2">
											<s:if test="%{goodsList[#st2.index].code == manageProduct01List[#st1.index].fieldcode}">
												<s:property value="fieldname"/>
											</s:if>
										</s:iterator>
									</td>
									<td><s:property value="color1" /></td>
									<td>
										<s:if test='rank == "50"'>显示</s:if>
										<s:else>不显示</s:else>
									</td>
									<td><s:property value="createdate" /></td>
								</tr>
							</s:iterator>
						</table>
						<div class="page">
							<span>第${page.startIndex + 1}页 / 共${page.totalPage==0?1:page.totalPage}页 共${page.totalCount}条记录</span><span>
							跳转到第<input class="num" id="pagenum2" maxlength="6" type="text" />页</span><a href="javascript:void(0);" onclick="javascript:turnPage('pagenum2');">跳转</a>　　
							<a href="javascript:void(0);" onclick="changePage(0);">首页</a>
							<s:if test="%{page.startIndex <= 0}">
								<a href="javascript:void(0);">上一页</a>
							</s:if>
							<s:else>
								<a href="javascript:void(0);" onclick="changePage('${page.previousIndex}');">上一页</a>
							</s:else>
							<s:if test="%{page.nextIndex > page.totalPage - 1}">
								<a href="javascript:void(0);">下一页</a>
							</s:if>
							<s:else>
								<a href="javascript:void(0);" onclick="changePage('${page.nextIndex}');">下一页</a>
							</s:else>
							<a href="javascript:void(0);" onclick="changePage('${page.totalPage - 1}');">末页</a>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>

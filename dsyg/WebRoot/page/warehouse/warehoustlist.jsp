<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"></script>
<title>库存检索结果一览</title>
<script type="text/javascript">
	//新增
	function add() {
		//document.mainform.action = '<c:url value="/product/showAddProductAction.action"></c:url>';
		//document.mainform.submit();
	}
	
	function upd() {
		var id = getSelectedID();
		if(id == "") {
			alert("请选择一条记录！");
			return;
		} else {
			$("#updProduct01Id").val(id);
			//document.mainform.action = '<c:url value="/product/showUpdProductAction.action"></c:url>';
			//document.mainform.submit();
		}
	}
	
	function del() {
		var id = getSelectedID();
		if(id == "") {
			alert("请选择一条记录！");
			return;
		} else {
			if(confirm("确定删除该记录吗？")) {
				//document.mainform.action = '<c:url value="/product/delProductAction.action"></c:url>' + "?delProduct01Id=" + id;
				//document.mainform.submit();
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
		document.mainform.action = '<c:url value="/warehouse/queryWarehouseListAction.action"></c:url>';
		document.mainform.submit();
	}
	
	//翻页
	function changePage(pageNum) {
		document.getElementById("startIndex").value = pageNum;
		document.mainform.action = '<c:url value="/warehouse/turnWarehouseListAction.action"></c:url>';
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
<div id="main" style="margin-top:2px;">
	<div  class="header_bg">
		<div class="content">
			<div class="user_bg">
				<div class="user">
					<div class="user_tittle">后台管理------库存检索结果一览
					</div>
				</div>
			</div>
			<div class="user_info">
				<span>用户名：<%=session.getAttribute("user_name")%></span>
				<span>登录时间：<%=session.getAttribute("login_time")%></span>
				<a class="lgout fr mgl5" href="javascript:void(0);" onclick="logout();">退出</a>
				<a class="return1 fr" href="<c:url value="/product/queryManageProductAction.action"></c:url>">返回</a>
			</div>
			<div class="product_search main_body">
				<s:form id="mainform" name="mainform" method="POST">
					<s:hidden name="startIndex" id="startIndex"/>
					<s:hidden name="queryProductId" id="queryProductId"/>
					<div class="search1" style="margin-bottom:10px;">
						<h3>产品名称：<s:property value="showProduct01.nameno"/></h3>
						<div class="line"></div>
					</div>
					<div class="tools">
						<a href="javascript:void(0);" onclick="add();"><img src="<%=request.getContextPath()%>/images/add.png" />增加</a>
						<a href="javascript:void(0);" onclick="upd();"><img src="<%=request.getContextPath()%>/images/edit.png" />编辑</a>
						<a href="javascript:void(0);" onclick="del();"><img src="<%=request.getContextPath()%>/images/delete.png" />删除</a>
					</div>
					<div class="page">
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
							<td width="40">序号</td>
							<td width="130">产品名称</td>
							<td width="100">产品分类</td>
							<td width="80">入库</td>
							<td width="80">出库</td>
							<td width="100">定单单位</td>
							<td width="80">送货期</td>
							<td width="80">是否显示</td>
							<td width="120">创建日期</td>
						</tr>
						<s:iterator id="warehouseManageList" value="warehouseManageList" status="st1">
						<s:if test="#st1.odd==true">
							<tr>
						</s:if>
						<s:else>
							<tr class="bg2">
						</s:else>
								<td><input name="radioKey" type="radio" value="<s:property value="id"/>"/></td>
								<td><s:property value="page.pageSize * (page.nextIndex - 1) + #st1.index + 1"/></td>
								<td><s:property value="productname"/></td>
								<td>
									<s:iterator value="goodsList" id="goodsList" status="st2">
										<s:if test="%{goodsList[#st2.index].code == warehouseManageList[#st1.index].producttype}">
											<s:property value="fieldname"/>
										</s:if>
									</s:iterator>
								</td>
								<td><s:property value="item01" /></td>
								<td><s:property value="item02" /></td>
								<td><s:property value="item03" /></td>
								<td><s:property value="item04" /></td>
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
</body>
</html>

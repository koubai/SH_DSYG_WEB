<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"></script>
<title>主页</title>
<script type="text/javascript">
function logout() {
	window.location.href = '<c:url value="/manage/manageLogoutAction.action"></c:url>';
}

function showManageProduct() {
	window.location.href = '<c:url value="/product/showManageProductListAction.action"></c:url>';
}

function showUserManage() {
	window.location.href = '<c:url value="/user/showUserManagePageAction.action"></c:url>';
}

function updPassword() {
	window.location.href = '<c:url value="/user/showUpdPasswordAction.action"></c:url>';
}

function showNewsManage() {
	window.location.href = '<c:url value="/news/showNewsManageAction.action"></c:url>';
}
</script>
</head>
<body>
	<div id="container">
		<div id="top">
			<div class="logobox">
				<div class="logo_tittle"></div>
				<div class="logo"></div>
			</div>
		</div>
		<div class="content">
			<div class="tittle">
				<div class="icons"><a class="quit" href="#" onclick="logout();">退出</a></div>
			</div>
			<table border="0" cellpadding="0" cellspacing="15" class="menu_tab">
				<tr>
					<td>
						<div class="menu">
							<div class="menu_l"></div>
							<div class="menu_c" style="cursor: pointer;" onclick="showManageProduct();">
								<a href="#">库存检索输入</a>
							</div>
							<div class="menu_r"></div>
						</div>
					</td>
					<td>
						<div class="menu">
							<div class="menu_l"></div>
							<div class="menu_c" style="cursor: pointer;" onclick="showNewsManage();">
								<a href="#">新闻管理</a>
							</div>
							<div class="menu_r"></div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="menu">
							<div class="menu_l"></div>
							<div class="menu_c" style="cursor: pointer;" onclick="updPassword();">
								<a href="#">密码修改</a>
							</div>
							<div class="menu_r"></div>
						</div>
					</td>
					<td>
						<div class="menu">
							<div class="menu_l"></div>
							<div class="menu_c" style="cursor: pointer;" onclick="showUserManage();">
								<a href="#">用户管理</a>
							</div>
							<div class="menu_r"></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>

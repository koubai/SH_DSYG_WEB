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
<title>东升盈港-用户信息输入</title>
<script type="text/javascript">
	function add() {
		var userid = $("#userid").val().trim();
		var username = $("#username").val().trim();
		var password = $("#password").val().trim();
		var repassword = $("#repassword").val().trim();
		var rolecode = $("#rolecode").val().trim();
		var tmpNote = $("#tmpNote").val();
		$("#note").attr("value", tmpNote);
		if(userid == "") {
			alert("登录ID不能为空！");
			$("#userid").focus();
			return;
		}
		if(username == "") {
			alert("用户姓名不能为空！");
			$("#username").focus();
			return;
		}
		if(password == "") {
			alert("登录密码不能为空！");
			$("#password").focus();
			return;
		}
		if(password.length < 4) {
			alert("登录密码不能少于4位！");
			$("#password").focus();
			return;
		}
		if(repassword == "") {
			alert("确认密码不能为空！");
			$("#repassword").focus();
			return;
		}
		if(password != repassword) {
			alert("两次密码不一致！");
			$("#password").focus();
			return;
		}
		if(rolecode == "") {
			alert("角色不能为空！");
			$("#rolecode").focus();
			return;
		}
		if(tmpNote.length > 80) {
			alert("备注不能超过80个字！");
			$("#tmpNote").focus();
			return;
		}
		if(confirm("确定添加吗？")) {
			document.mainform.action = '<c:url value="/user/addUserAction.action"></c:url>';
			document.mainform.submit();
		}
	}
	
	function goBack() {
		document.mainform.action = '<c:url value="/user/queryUserAction.action"></c:url>';
		document.mainform.submit();
	}
</script>
</head>
<body style="background: url(''); overflow-x:hidden;overflow-y:scroll;">
<div id="main" style="margin-top:2px;">
	<div class="header_bg">
		<div class="content warehouse_input">
			<div class="user_bg">
				<div class="user">
					<div class="user_tittle">后台管理------用户信息输入
					</div>
				</div>
			</div>
			<div class="main_body" style="height: 400px;">
				<s:form id="mainform" name="mainform" method="POST" enctype="multipart/form-data">
					<s:hidden name="addUserDto.note" id="note"></s:hidden>
					<div style="position:absolute; margin-left: 400px; margin-top: 3px; text-align: center; color: red;">
						<s:actionmessage />
					</div>
					<table class="input_table" border="0" cellspacing="0" cellpadding="10">
						<tr>
							<td class="td_tittle"><span>*</span>登录ID：</td>
							<td>
								<s:textfield name="addUserDto.userid" id="userid" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>用户姓名：</td>
							<td>
								<s:textfield name="addUserDto.username" id="username" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>登录密码：</td>
							<td>
								<s:password name="addUserDto.password" id="password" cssStyle="width:300px;" theme="simple" maxlength="16"></s:password>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>确认密码：</td>
							<td>
								<s:password name="addUserDto.repassword" id="repassword" cssStyle="width:300px;" theme="simple" maxlength="16"></s:password>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>角色：</td>
							<td>
								<select style="width: 300px;" name="addUserDto.rolecode" id="rolecode">
									<s:iterator id="showRoleDtoList" value="showRoleDtoList" status="st1">
										<option value="${showRoleDtoList[st1.index].rolecode}" <s:if test="%{showRoleDtoList[#st1.index].rolecode == addUserDto.rolecode}">selected</s:if>><s:property value="rolename"/></option>
									</s:iterator>
								</select>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>状态：</td>
							<td>
								<select style="width: 300px;" name="addUserDto.status" id="status">
									<s:if test="addUserDto.status == 0">
										<option value="1">有效</option>
										<option value="0" selected="selected">无效</option>
									</s:if>
									<s:else>
										<option value="1" selected="selected">有效</option>
										<option value="0">无效</option>
									</s:else>
								</select>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>备注：</td>
							<td>
								<textarea name="" id="tmpNote" cols="" rows="5" style="width:300px;"><s:property value="addUserDto.note"/></textarea>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<input class="btn btn-blue" type="button" value="保存" onclick="add();"/>
								<input class="btn btn-gray" type="button" value="返回" onclick="goBack();"/>
							</td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
</div>
</body>
</html>

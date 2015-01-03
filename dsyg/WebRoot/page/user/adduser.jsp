<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"></script>
<title>用户信息输入</title>
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
		document.mainform.action = '<c:url value="/user/addUserAction.action"></c:url>';
		document.mainform.submit();
	}
	
	//页面关闭响应
	window.onunload = function() {
		//刷新父页面
		window.dialogArguments.document.mainform.action = '<c:url value="/user/queryUserAction.action"></c:url>';
		window.dialogArguments.document.mainform.submit();
	};

</script>
<base target="_self"/>
</head>
<body style="background: url(''); overflow-x:hidden;overflow-y:scroll;">
<s:form id="mainform" name="mainform" method="POST">
	<s:hidden name="addUserDto.note" id="note"></s:hidden>
	<div id="container" style="width: 100%; height: 100%;">
		<div class="content" style="margin-top: 0px;">
			<div class="tittle">
				<div class="icons"></div>
				<div class="tittle_left">
				</div>
				<div class="tittle_center" style="width:150px;">
					用户信息输入
				</div>
				<div class="tittle_right">
				</div>
			</div>
		</div>
		<div style="position:absolute; margin-left: 150px; margin-top: -20px; text-align: center; color: red;">
			<s:actionmessage />
		</div>
		<table style="margin-left: 50px; margin-top: 30px;" border="0" cellspacing="15" cellpadding="0">
			<tr>
				<td><font color="red">*</font>登录ID</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="addUserDto.userid" id="userid" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>用户姓名</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="addUserDto.username" id="username" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>登录密码</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:password name="addUserDto.password" id="password" cssStyle="width:300px;" theme="simple" maxlength="16"></s:password>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>确认密码</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:password name="addUserDto.repassword" id="repassword" cssStyle="width:300px;" theme="simple" maxlength="16"></s:password>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>角色</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<select style="width: 300px;" name="addUserDto.rolecode" id="rolecode">
							<s:iterator id="showRoleDtoList" value="showRoleDtoList" status="st1">
								<option value="${showRoleDtoList[st1.index].rolecode}" <s:if test="%{showRoleDtoList[#st1.index].rolecode == addUserDto.rolecode}">selected</s:if>><s:property value="rolename"/></option>
							</s:iterator>
						</select>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>状态</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<select style="width: 300px;" name="addUserDto.status" id="status">
							<s:if test="addUserDto.status == 1">
								<option value="1" selected="selected">有效</option>
								<option value="0">无效</option>
							</s:if>
							<s:else>
								<option value="1">有效</option>
								<option value="0" selected="selected">无效</option>
							</s:else>
						</select>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td>备注</td>
				<td>
					<textarea name="" id="tmpNote" cols="" rows="5" style="width:300px;"><s:property value="addUserDto.note"/></textarea>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<div class="btn">
						<div class="box1_left"></div>
						<div class="box1_center">
							<input class="input80" type="button" value="追加" onclick="add();"/>
						</div>
						<div class="box1_right"></div>
					</div>
					<div class="btn">
						<div class="box1_left"></div>
						<div class="box1_center">
							<input class="input80" type="button" value="关闭" onclick="window.close();"/>
						</div>
						<div class="box1_right"></div>
					</div>
				</td>
			</tr>
		</table>
	</div>
</s:form>
</body>
</html>

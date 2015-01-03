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
<title>用户信息修改</title>
<script type="text/javascript">
	function upd() {
		var oldpassword = $("#oldpassword").val().trim();
		var password = $("#password").val().trim();
		var repassword = $("#repassword").val().trim();
		if(oldpassword == "") {
			alert("请输入旧密码！");
			$("#oldpassword").focus();
			return;
		}
		if(password == "") {
			alert("请输入新密码！");
			$("#password").focus();
			return;
		}
		if(password.length < 4) {
			alert("密码不能少于4位！");
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
		if(confirm("确定修改吗？")) {
			document.mainform.action = '<c:url value="/user/updPasswordAction.action"></c:url>';
			document.mainform.submit();
		}
	}
</script>
<base target="_self"/>
</head>
<body>
<jsp:include page="../head_manage.jsp" flush="true" />
<div id="main">
	<div class="main">
		<div>
			<div class="content">
				<s:form id="mainform" name="mainform" method="POST">
					<div style="position:absolute; margin-left: 150px; margin-top: 50px; text-align: center; color: red;">
						<s:actionmessage />
					</div>
					<table style="margin-left: 50px; margin-top: 80px;" border="0" cellspacing="5" cellpadding="0">
						<tr>
							<td><font color="red">*</font>旧登录密码</td>
							<td>
								<div class="box1_left"></div>
								<div class="box1_center">
									<s:password name="psdUserDto.oldpassword" id="oldpassword" cssStyle="width:300px;" theme="simple" maxlength="16"></s:password>
								</div>
								<div class="box1_right"></div>
							</td>
						</tr>
						<tr>
							<td><font color="red">*</font>新登录密码</td>
							<td>
								<div class="box1_left"></div>
								<div class="box1_center">
									<s:password name="psdUserDto.password" id="password" cssStyle="width:300px;" theme="simple" maxlength="16"></s:password>
								</div>
								<div class="box1_right"></div>
							</td>
						</tr>
						<tr>
							<td><font color="red">*</font>确认新密码</td>
							<td>
								<div class="box1_left"></div>
								<div class="box1_center">
									<s:password name="psdUserDto.repassword" id="repassword" cssStyle="width:300px;" theme="simple" maxlength="16"></s:password>
								</div>
								<div class="box1_right"></div>
							</td>
						</tr>
						<tr>
							<td>　</td>
						</tr>
						<tr>
							<td align="center" colspan="2">
								<input class="input80" type="button" value="修　改" onclick="upd();"/>　<input class="input80" type="button" value="返　回" onclick="goHome();"/>
							</td>
						</tr>
						<tr>
							<td height="80">　</td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
</div>
</body>
</html>

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
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/admin.css" />
<script src="<%=request.getContextPath()%>/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/loopedslider.min.js" type="text/javascript"></script>
<title>东升盈港-咨询信息Q/A</title>
<script type="text/javascript">
function add() {
	if(checkData()) {
		if(confirm("确定添加吗？")) {
			document.mainform.action = '<c:url value="/home/addQaAction.action"></c:url>';
			document.mainform.submit();
		}
	}
}

function checkData() {
	var title = $("#title").val().trim();
	var fullname = $("#fullname").val().trim();
	var company = $("#company").val().trim();
	var address = $("#address").val().trim();
	var tell = $("#tell").val().trim();
	var fax = $("#fax").val().trim();
	var email = $("#email").val().trim();
	var tempData = $("#tempData").val();
	if(title == "") {
		alert("新闻标题不能为空！");
		$("#title").focus();
		return false;
	}
	
	if(tempData == "") {
		alert("内容不能为空！");
		$("#tempData").focus();
		return false;
	}
	if(tempData.length > 2500) {
		alert("内容不能超过2500个字！");
		$("#tempData").focus();
		return false;
	}
	$("#data").val(tempData);
	
	if(fullname == "") {
		alert("姓名不能为空！");
		$("#fullname").focus();
		return false;
	}
	if(company == "") {
		alert("公司名称不能为空！");
		$("#company").focus();
		return false;
	}
	if(address == "") {
		alert("地址不能为空！");
		$("#address").focus();
		return false;
	}
	if(tell == "") {
		alert("电话不能为空！");
		$("#tell").focus();
		return false;
	}
	if(fax == "") {
		alert("传真不能为空！");
		$("#fax").focus();
		return false;
	}
	if(email == "") {
		alert("邮件不能为空！");
		$("#email").focus();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<jsp:include page="../head_web.jsp" flush="true" />
<div id="main">
	<div class="main">
		<div class="product_header">
			<div class="pagekv">
				<img src="<%=request.getContextPath()%>/images/banner9.png">
			</div>
		</div>
		<div class="content">
			<div class="main_body">
				<s:form id="mainform" name="mainform" method="POST">
					<s:hidden name="addQaDto.data" id="data"></s:hidden>
					<div style="position:absolute; margin-left: 400px; margin-top: 3px; text-align: center; color: red;">
						<s:actionmessage />
					</div>
					<br><p>&nbsp&nbsp对于产品方面如果您有任何问题，请联系我司营业专员，请留下您的信息，我们会及时与您取得联系！</p>
					<p>&nbsp&nbsp我司将对您的预留信息进行保密，任何情况下均不会向第三方提供。</p>
					<p>&nbsp&nbsp我们的工作时间为： 周一至周五  上午 9：00 - 下午 5：00 （节假日休息）</p>
					<p>&nbsp&nbsp我们将在收到您的咨询信息后2个工作日内回复， 届时请留意预留邮箱或电话回复。</p>
					</br>
					<table class="input_table" border="0" cellspacing="0" cellpadding="10">
						<tr>
							<td class="td_tittle"><span>*</span>标题：</td>
							<td>
								<!--<s:textfield name="addQaDto.title" id="title" maxlength="64" theme="simple"></s:textfield>-->
								<select name="addQaDto.title" id="title" style="width:300px;">
									<option value="产品咨询">产品咨询</option>
									<option value="申请价格">申请价格</option>
									<option value="其他">其他</option>
								</select>
							</td>
						<tr>
							<td class="td_tittle"><span>*</span>内容：</td>
							<td>
								<textarea rows="8" cols="40" style="width:300px;" id="tempData"><s:property value="addQaDto.data"/></textarea>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>姓名：</td>
							<td>
								<s:textfield name="addQaDto.fullname" id="fullname" maxlength="32" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>公司名称：</td>
							<td>
								<s:textfield name="addQaDto.company" id="company" maxlength="64" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>地址：</td>
							<td>
								<s:textfield name="addQaDto.address" id="address" maxlength="64" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>电话：</td>
							<td>
								<s:textfield name="addQaDto.tell" id="tell" maxlength="32" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>传真：</td>
							<td>
								<s:textfield name="addQaDto.fax" id="fax" maxlength="32" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td class="td_tittle"><span>*</span>Email：</td>
							<td>
								<s:textfield name="addQaDto.email" id="email" maxlength="64" theme="simple"></s:textfield>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<input class="btn btn-blue" name="" type="button" onclick="add();" value="提交" />						
							</td>
						</tr>
					</table>
				</s:form>
			</div>					
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

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
<title>库存输入</title>
<script type="text/javascript">
	function add() {
		/*
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
		//*/
		document.mainform.action = '<c:url value="/product/addProduct.action"></c:url>';
		document.mainform.submit();
	}
	
	function goBack() {
		document.mainform.action = '<c:url value="/product/showManageProductList.action"></c:url>';
		document.mainform.submit();
	}

	function changeFieldcode(obj) {
		var v = obj.value;
		if(v == "01") {
			$("#fieldcode01").show();
			$("#fieldcode02").hide();
		} else if(v == "02") {
			$("#fieldcode02").show();
			$("#fieldcode01").hide();
		} else {
			$("#fieldcode01").hide();
			$("#fieldcode02").hide();
		}
	}
</script>
</head>
<body style="background: url(''); overflow-x:hidden;overflow-y:scroll;">
<s:form id="mainform" name="mainform" method="POST">
	<s:hidden name="addProduct01Dto.item01" id="item01"></s:hidden>
	<s:hidden name="addProduct01Dto.item02" id="item02"></s:hidden>
	<s:hidden name="addProduct01Dto.item03" id="item03"></s:hidden>
	<s:hidden name="addProduct01Dto.item04" id="item04"></s:hidden>
	<div id="container" style="width: 100%; height: 100%;">
		<div class="content" style="margin-top: 0px;">
			<div class="tittle">
				<div class="icons"></div>
				<div class="tittle_left">
				</div>
				<div class="tittle_center" style="width:150px;">
					库存输入
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
				<td width="120px;"><font color="red">*</font>商品类型</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<select name="addProduct01Dto.fieldcode" id="fieldcode" style="width: 300px;" onchange="changeFieldcode(this);">
							<option value="">请选择</option>
							<s:iterator value="goodsList" id="goodsList" status="st1">
								<option value="<s:property value="code"/>" <s:if test="%{goodsList[#st1.index].code == addProduct01Dto.fieldcode}">selected</s:if>><s:property value="fieldname"/></option>
							</s:iterator>
						</select>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>商品名称</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="addProduct01Dto.nameno" id="nameno" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>商品系列</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="addProduct01Dto.typeno" id="typeno" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>商品型号</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="addProduct01Dto.typenosub" id="typenosub" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<s:if test='addProduct01Dto.fieldcode == "01"'>
				<tr id="fieldcode01">
			</s:if>
			<s:else>
				<tr style="display: none;" id="fieldcode01">
			</s:else>
				<td valign="top"><font color="red">*</font>特征编辑</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:iterator value="featureList01" id="featureList01" status="st1">
							<div>
								<s:property value="name"/>
								<s:iterator value="dictList" id="dictList" status="st2">
									<s:if test='%{featureList01[#st1.index].codename == "code01_item01" && #st1.index == 0}'>
										<input name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == addProduct01Dto.item01}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:if>
									<s:elseif test='%{featureList01[#st1.index].codename == "code01_item02" && #st1.index == 1}'>
										<input name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == addProduct01Dto.item02}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:elseif test='%{featureList01[#st1.index].codename == "code01_item03" && #st1.index == 2}'>
										<input name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == addProduct01Dto.item03}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:else>
										<input name='code01_item0<s:property value="#st1.index + 1"/>' value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:else>
								</s:iterator>
							</div>
						</s:iterator>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<s:if test='addProduct01Dto.fieldcode == "02"'>
				<tr id="fieldcode02">
			</s:if>
			<s:else>
				<tr style="display: none;" id="fieldcode02">
			</s:else>
				<td valign="top"><font color="red">*</font>特征编辑</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:iterator value="featureList02" id="featureList02" status="st1">
							<div>
								<s:property value="name"/>
								<s:iterator value="dictList" id="dictList" status="st2">
									<s:if test='%{featureList02[#st1.index].codename == "code02_item01" && #st1.index == 0}'>
										<input name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == addProduct01Dto.item01}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:if>
									<s:elseif test='%{featureList02[#st1.index].codename == "code02_item02" && #st1.index == 1}'>
										<input name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == addProduct01Dto.item02}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:elseif test='%{featureList02[#st1.index].codename == "code02_item03" && #st1.index == 2}'>
										<input name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == addProduct01Dto.item03}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:elseif test='%{featureList02[#st1.index].codename == "code02_item04" && #st1.index == 3}'>
										<input name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == addProduct01Dto.item04}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:else>
										<input name='code02_item0<s:property value="#st1.index + 1"/>' value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:else>
								</s:iterator>
							</div>
						</s:iterator>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>尺寸编辑</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						称呼尺寸<s:textfield name="addProduct01Dto.item10" id="item10" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
						特性图片上传为<s:textfield name="addProduct01Dto.item11" id="item11" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
						壁厚<s:textfield name="addProduct01Dto.item12" id="item12" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
						外径<s:textfield name="addProduct01Dto.item13" id="item13" cssStyle="width:300px;" maxlength="16" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>图片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file"/>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>特性图片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file"/>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>尺寸图片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file"/>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>pdf片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file"/>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>在库数（整箱）</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						在库数（整箱）<input name='' value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
					</div>
					<div class="box1_right"></div>
				</td>
			<tr>
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
							<input class="input80" type="button" value="返回" onclick="goBack();"/>
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

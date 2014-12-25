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
<title>库存更新</title>
<script type="text/javascript">
	function save() {
		if(checkData()) {
			if(confirm("确定修改吗？")) {
				document.mainform.action = '<c:url value="/product/updProductAction.action"></c:url>';
				document.mainform.submit();
			}
		}
	}
	
	function checkData() {
		var fieldcode = $("#fieldcode").val().trim();
		var rank = $("#rank").val().trim();
		var nameno = $("#nameno").val().trim();
		var typeno = $("#typeno").val().trim();
		var typenosub = $("#typenosub").val().trim();
		if(fieldcode == "") {
			alert("请选择商品类型！");
			$("#fieldcode").focus();
			return false;
		}
		if(rank == "") {
			alert("数据级别不能为空！");
			$("#rank").focus();
			return false;
		}
		if(!isNumber(rank)) {
			alert("数据级别必须是大于50小于90的数字！");
			$("#rank").focus();
			return false;
		}
		if(parseInt(rank) < 50 || parseInt(rank) > 90) {
			alert("数据级别必须是大于50小于90的数字！");
			$("#rank").focus();
			return false;
		}
		
		if(nameno == "") {
			alert("商品名称不能为空！");
			$("#nameno").focus();
			return false;
		}
		if(typeno == "") {
			alert("商品系列不能为空！");
			$("#typeno").focus();
			return false;
		}
		if(typenosub == "") {
			alert("商品型号不能为空！");
			$("#typenosub").focus();
			return false;
		}
		
		//特征编辑值设定
		$("#item01").val("");
		$("#item02").val("");
		$("#item03").val("");
		$("#item04").val("");
		if(fieldcode == "01") {
			for(var i = 1; i <= 3; i++) {
				var name = "code01_item0" + i;
				//var v = $("input[name='" + name + "'][@checked]").val();
				var list = document.getElementsByName(name);
				for(var j = 0; j < list.length; j++) {
					if(list[j].checked) {
						var v = list[j].value;
						$("#" + "item0" + i).val(v);
						break;
					}
				}
			}
			if($("#item01").val() == "") {
				alert("请选择耐温！");
				$("#code01_01").focus();
				return false;
			}
			if($("#item02").val() == "") {
				alert("请选择耐压！");
				$("#code01_02").focus();
				return false;
			}
			if($("#item03").val() == "") {
				alert("请选择材质！");
				$("#code01_03").focus();
				return false;
			}
		} else if(fieldcode == "02") {
			for(var i = 1; i <= 4; i++) {
				var name = "code02_item0" + i;
				var list = document.getElementsByName(name);
				for(var j = 0; j < list.length; j++) {
					if(list[j].checked) {
						var v = list[j].value;
						$("#" + "item0" + i).val(v);
						break;
					}
				}
			}
			if($("#item01").val() == "") {
				alert("请选择耐温！");
				$("#code02_01").focus();
				return false;
			}
			if($("#item02").val() == "") {
				alert("请选择耐压！");
				$("#code02_02").focus();
				return false;
			}
			if($("#item03").val() == "") {
				alert("请选择绝缘！");
				$("#code02_03").focus();
				return false;
			}
			if($("#item04").val() == "") {
				alert("请选择收缩比！");
				$("#code02_04").focus();
				return false;
			}
		}
		
		//尺寸数据验证
		if($("#item10").val() == "") {
			alert("称呼尺寸不能为空！");
			$("#item10").focus();
			return false;
		}
		if($("#item11").val() == "") {
			alert("内径不能为空！");
			$("#item11").focus();
			return false;
		}
		if($("#item12").val() == "") {
			alert("壁厚不能为空！");
			$("#item12").focus();
			return false;
		}
		if($("#item13").val() == "") {
			alert("外径不能为空！");
			$("#item13").focus();
			return false;
		}
		if($("#item14").val() == "") {
			alert("长度不能为空！");
			$("#item14").focus();
			return false;
		}
		if($("#item15").val() == "") {
			alert("请选择尺寸编辑单位！");
			$("#item15").focus();
			return false;
		}
		
		//图片验证
		var file01Name = $("#updPicFile01").val();
		var file02Name = $("#updPicFile02").val();
		var file03Name = $("#updPicFile03").val();
		var file04Name = $("#updPdfFile").val();
		//图1
		if(file01Name != "") {
			var n = file01Name.substring(file01Name.lastIndexOf("."), file01Name.length).toUpperCase();
			if(n != ".JPG" && n != ".GIF" && n != ".PNG") {
				alert("图片只支持JPG、GIF和PNG格式！");
				$("#updPicFile01").focus();
				return false;
			}
			$("#file01Name").val(file01Name);
		}
		//图2
		if(file02Name != "") {
			var n = file02Name.substring(file02Name.lastIndexOf("."), file02Name.length).toUpperCase();
			if(n != ".JPG" && n != ".GIF" && n != ".PNG") {
				alert("图片只支持JPG、GIF和PNG格式！");
				$("#updPicFile02").focus();
				return false;
			}
			$("#file02Name").val(file02Name);
		}
		//图3
		if(file03Name != "") {
			var n = file03Name.substring(file03Name.lastIndexOf("."), file03Name.length).toUpperCase();
			if(n != ".JPG" && n != ".GIF" && n != ".PNG") {
				alert("图片只支持JPG、GIF和PNG格式！");
				$("#updPicFile03").focus();
				return false;
			}
			$("#file03Name").val(file03Name);
		}
		//PDT文件验证
		if(file04Name != "") {
			var n = file04Name.substring(file04Name.lastIndexOf("."), file04Name.length).toUpperCase();
			if(n != ".PDF") {
				alert("请选择正确的PDF文件！");
				$("#updPdfFile").focus();
				return false;
			}
			$("#file04Name").val(file04Name);
		}
		
		//库存编辑
		if($("#item20").val() == "") {
			alert("在库数（整箱）不能为空！");
			$("#item20").focus();
			return false;
		}
		if($("#item21").val() == "") {
			alert("在库数（乱尺）不能为空！");
			$("#item21").focus();
			return false;
		}
		if($("#item22").val() == "") {
			alert("请选择库存编辑单位！");
			$("#item22").focus();
			return false;
		}
		var item23 = $("#item23").val();
		if(item23 == "") {
			alert("发送天数不能为空！");
			$("#item23").focus();
			return false;
		}
		if(!isNumber(item23)) {
			alert("发送天数必须是大于0的数字！");
			$("#item23").focus();
			return false;
		}
		if($("#makearea").val() == "") {
			alert("请选择产地！");
			$("#makearea").focus();
			return false;
		}
		return true;
	}
	
	function goBack() {
		document.mainform.action = '<c:url value="/product/queryManageProductAction.action"></c:url>';
		document.mainform.submit();
	}

	function changeFieldcode(obj) {
		//清空选择
		$("input[name^='code01_item0']").attr("checked", false);
		$("input[name^='code02_item0']").attr("checked", false);
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
<s:form id="mainform" name="mainform" method="POST" enctype="multipart/form-data">
	<s:hidden name="updProduct01Dto.item01" id="item01"></s:hidden>
	<s:hidden name="updProduct01Dto.item02" id="item02"></s:hidden>
	<s:hidden name="updProduct01Dto.item03" id="item03"></s:hidden>
	<s:hidden name="updProduct01Dto.item04" id="item04"></s:hidden>
	<s:hidden name="updProduct01Dto.pic01" id="pic01"></s:hidden>
	<s:hidden name="updProduct01Dto.pic02" id="pic02"></s:hidden>
	<s:hidden name="updProduct01Dto.pic03" id="pic03"></s:hidden>
	<s:hidden name="updProduct01Dto.pdfpath" id="pdfpath"></s:hidden>
	<s:hidden name="file01Name" id="file01Name"></s:hidden>
	<s:hidden name="file02Name" id="file02Name"></s:hidden>
	<s:hidden name="file03Name" id="file03Name"></s:hidden>
	<s:hidden name="file04Name" id="file04Name"></s:hidden>
	<div id="container" style="width: 100%; height: 100%;">
		<div class="content" style="margin-top: 0px;">
			<div class="tittle">
				<div class="icons"></div>
				<div class="tittle_left">
				</div>
				<div class="tittle_center" style="width:150px;">
					库存更新
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
						<select name="updProduct01Dto.fieldcode" id="fieldcode" style="width: 300px;" onchange="changeFieldcode(this);">
							<option value="">请选择</option>
							<s:iterator value="goodsList" id="goodsList" status="st1">
								<option value="<s:property value="code"/>" <s:if test="%{goodsList[#st1.index].code == updProduct01Dto.fieldcode}">selected</s:if>><s:property value="fieldname"/></option>
							</s:iterator>
						</select>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>数据级别</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="updProduct01Dto.rank" id="rank" cssStyle="width:300px;" maxlength="2" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>商品名称</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="updProduct01Dto.nameno" id="nameno" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>商品系列</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="updProduct01Dto.typeno" id="typeno" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>商品型号</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="updProduct01Dto.typenosub" id="typenosub" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<s:if test='updProduct01Dto.fieldcode == "01"'>
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
									<s:if test='%{updProduct01Dto.fieldcode == "01" && featureList01[#st1.index].codename == "code01_item01" && #st1.index == 0}'>
										<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == updProduct01Dto.item01}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:if>
									<s:elseif test='%{updProduct01Dto.fieldcode == "01" && featureList01[#st1.index].codename == "code01_item02" && #st1.index == 1}'>
										<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == updProduct01Dto.item02}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:elseif test='%{updProduct01Dto.fieldcode == "01" && featureList01[#st1.index].codename == "code01_item03" && #st1.index == 2}'>
										<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == updProduct01Dto.item03}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:else>
										<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:else>
								</s:iterator>
							</div>
						</s:iterator>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<s:if test='updProduct01Dto.fieldcode == "02"'>
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
									<s:if test='%{updProduct01Dto.fieldcode == "02" && featureList02[#st1.index].codename == "code02_item01" && #st1.index == 0}'>
										<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == updProduct01Dto.item01}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:if>
									<s:elseif test='%{updProduct01Dto.fieldcode == "02" && featureList02[#st1.index].codename == "code02_item02" && #st1.index == 1}'>
										<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == updProduct01Dto.item02}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:elseif test='%{updProduct01Dto.fieldcode == "02" && featureList02[#st1.index].codename == "code02_item03" && #st1.index == 2}'>
										<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == updProduct01Dto.item03}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:elseif test='%{updProduct01Dto.fieldcode == "02" && featureList02[#st1.index].codename == "code02_item04" && #st1.index == 3}'>
										<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == updProduct01Dto.item04}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
									</s:elseif>
									<s:else>
										<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' value='<s:property value="code"/>' type="radio" /><s:property value="fieldname"/>
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
						称呼尺寸<s:textfield name="updProduct01Dto.item10" id="item10" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
						<br />
						内径<s:textfield name="updProduct01Dto.item11" id="item11" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
						<br />
						壁厚<s:textfield name="updProduct01Dto.item12" id="item12" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
						<br />
						外径<s:textfield name="updProduct01Dto.item13" id="item13" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
						<br />
						长度<s:textfield name="updProduct01Dto.item14" id="item14" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
						<br />
						单位<select name="updProduct01Dto.item15" id="item15" style="width: 300px;">
								<s:iterator value="unitList" id="unitList" status="st2">
									<option value="<s:property value="code"/>" <s:if test="%{unitList[#st2.index].code == updProduct01Dto.item15}">selected</s:if>><s:property value="fieldname"/></option>
								</s:iterator>
							</select>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>图片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file" name="updPicFile01" id="updPicFile01"/>
						<img src="<s:property value="updProduct01Dto.imageurl"/><s:property value="updProduct01Dto.pic01"/>" alt="" />
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>特性图片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file" name="updPicFile02" id="updPicFile02"/>
						<img src="<s:property value="updProduct01Dto.imageurl"/><s:property value="updProduct01Dto.pic02"/>" alt="" />
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>尺寸图片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file" name="updPicFile03" id="updPicFile03"/>
						<img src="<s:property value="updProduct01Dto.imageurl"/><s:property value="updProduct01Dto.pic03"/>" alt="" />
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>pdf片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file" name="updPdfFile" id="updPdfFile"/>
						<a target="_blank" href="<s:property value="updProduct01Dto.pdfurl"/><s:property value="updProduct01Dto.pdfpath"/>"><s:property value="updProduct01Dto.pdfpath"/></a>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>库存编辑</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						在库数（整箱）<s:textfield name="updProduct01Dto.item20" id="item20" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
						<br />
						在库数（乱尺）<s:textfield name="updProduct01Dto.item21" id="item21" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>
						<br />
						单位<select name="updProduct01Dto.item22" id="item22" style="width: 300px;">
								<s:iterator value="unitList" id="unitList" status="st1">
									<option value="<s:property value="code"/>" <s:if test="%{unitList[#st1.index].code == updProduct01Dto.item22}">selected</s:if>><s:property value="fieldname"/></option>
								</s:iterator>
							</select>
						<br />
						发送天数<s:textfield name="updProduct01Dto.item23" id="item23" cssStyle="width:300px;" maxlength="32" theme="simple"></s:textfield>天
						<br />
						产地<select name="updProduct01Dto.makearea" id="makearea" style="width: 300px;">
								<s:iterator value="makeareaList" id="makeareaList" status="st1">
									<option value="<s:property value="code"/>" <s:if test="%{makeareaList[#st1.index].code == updProduct01Dto.makearea}">selected</s:if>><s:property value="fieldname"/></option>
								</s:iterator>
							</select>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<div class="btn">
						<div class="box1_left"></div>
						<div class="box1_center">
							<input class="input80" type="button" value="保存" onclick="save();"/>
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

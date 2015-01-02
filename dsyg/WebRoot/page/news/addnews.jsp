<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/Calendar3.js"></script>
<title>新闻输入</title>
<script type="text/javascript">
	function add() {
		if(checkData()) {
			document.mainform.action = '<c:url value="/news/addNewsAction.action"></c:url>';
			document.mainform.submit();
		}
	}
	
	function checkData() {
		var title = $("#title").val().trim();
		var author = $("#author").val().trim();
		var tmpnewsdate = $("#tmpnewsdate").val().trim();
		var tempData = $("#tempData").val().trim();
		if(title == "") {
			alert("新闻标题不能为空！");
			$("#title").focus();
			return false;
		}
		if(author == "") {
			alert("作者不能为空！");
			$("#author").focus();
			return false;
		}
		if(tmpnewsdate == "") {
			alert("新闻日期不能为空！");
			$("#tmpnewsdate").focus();
			return false;
		}
		//图片验证
		var file01Name = $("#addPicFile01").val();
		//图1
		if(file01Name == "") {
			alert("图片不能为空！");
			$("#addPicFile01").focus();
			return false;
		}
		var n = file01Name.substring(file01Name.lastIndexOf("."), file01Name.length).toUpperCase();
		if(n != ".JPG" && n != ".GIF" && n != ".PNG") {
			alert("图片只支持JPG、GIF和PNG格式！");
			$("#addPicFile01").focus();
			return false;
		}
		//文件名
		$("#file01Name").val(file01Name);
		
		if(tempData == "") {
			alert("新闻内容不能为空！");
			$("#tempData").focus();
			return false;
		}
		if(tempData.length > 2500) {
			alert("新闻内容不能超过2500个字！");
			$("#tempData").focus();
			return false;
		}
		$("#newsdate").val(tmpnewsdate);
		$("#data").val(tempData);
		return true;
	}
	
	function goBack() {
		document.mainform.action = '<c:url value="/news/queryNewsAction.action"></c:url>';
		document.mainform.submit();
	}
</script>
</head>
<body style="background: url(''); overflow-x:hidden;overflow-y:scroll;">
<s:form id="mainform" name="mainform" method="POST" enctype="multipart/form-data">
	<s:hidden name="addNewsDto.newsdate" id="newsdate"></s:hidden>
	<s:hidden name="addNewsDto.data" id="data"></s:hidden>
	<s:hidden name="file01Name" id="file01Name"></s:hidden>
	<div id="container" style="width: 100%; height: 100%;">
		<div class="content" style="margin-top: 0px;">
			<div class="tittle">
				<div class="icons"></div>
				<div class="tittle_left">
				</div>
				<div class="tittle_center" style="width:150px;">
					新闻输入
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
				<td width="120px;"><font color="red">*</font>标题</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="addNewsDto.title" id="title" cssStyle="width:300px;" maxlength="64" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>作者</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<s:textfield name="addNewsDto.author" id="author" cssStyle="width:300px;" maxlength="64" theme="simple"></s:textfield>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>新闻日期</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="text" id="tmpnewsdate" style="width:285px;" disabled="disabled" value="<s:property value="addNewsDto.newsdate"/>"/>
						<a class="date" href="javascript:;" onclick="new Calendar().show(document.getElementById('tmpnewsdate'));">日期按钮</a>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td valign="top"><font color="red">*</font>图片上传</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<input type="file" name="addPicFile01" id="addPicFile01"/>
					</div>
					<div class="box1_right"></div>
				</td>
			</tr>
			<tr>
				<td><font color="red">*</font>内容</td>
				<td>
					<div class="box1_left"></div>
					<div class="box1_center">
						<textarea rows="10" cols="50" id="tempData"><s:property value="addNewsDto.data"/></textarea>
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
							<input class="input80" type="button" value="保存" onclick="add();"/>
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

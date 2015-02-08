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
<link href="<%=request.getContextPath()%>/css/jquery-ui.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-ui.js"></script>
<title>东升盈港-产品检索</title>
<script type="text/javascript">
	//检索
	function searchSummary() {
		if($("#tabs-2").is(":hidden")) {
			var goodsId = $("#tmpGoodsId").val().trim();
			if(goodsId == "") {
				alert("请选择查询条件！");
				return;
			}
			if(goodsId == "01") {
				for(var i = 1; i <= 4; i++) {
					var name = "code01_item0" + i;
					//var v = $("input[name='" + name + "'][@checked]").val();
					var list = document.getElementsByName(name);
					for(var j = 0; j < list.length; j++) {
						if(list[j].checked) {
							var v = list[j].value;
							$("#" + "tempItem0" + i).val(v);
							break;
						}
					}
				}
				var item01 = $("#tempItem01").val().trim();
				var item02 = $("#tempItem02").val().trim();
				var item03 = $("#tempItem03").val().trim();
				var item04 = $("#tempItem04").val().trim();
				var ulCode = $("#ulCode").val().trim();
				
				var url = "";
				if(ulCode != "") {
					url = "_g" + goodsId + "_ul" + ulCode;
				} else {
					url = "_g" + goodsId + "_ulempty";
				}
				
				if(item01 != "") {
					url += "_" + "i1" + item01;
				}
				if(item02 != "") {
					url += "_" + "i2" + item02;
				}
				if(item03 != "") {
					url += "_" + "i3" + item03;
				}
				if(item04 != "") {
					url += "_" + "i4" + item04;
				}
				window.location.href = '<%=request.getContextPath()%>' + "/searchsummary" + url + ".shtml";
			} else if(goodsId == "02") {
				for(var i = 1; i <= 6; i++) {
					var name = "code02_item0" + i;
					var list = document.getElementsByName(name);
					for(var j = 0; j < list.length; j++) {
						if(list[j].checked) {
							var v = list[j].value;
							$("#" + "tempItem0" + i).val(v);
							break;
						}
					}
				}
				var item01 = $("#tempItem01").val().trim();
				var item02 = $("#tempItem02").val().trim();
				var item03 = $("#tempItem03").val().trim();
				var item04 = $("#tempItem04").val().trim();
				var item05 = $("#tempItem05").val().trim();
				var item06 = $("#tempItem06").val().trim();
				
				var ulCode = $("#ulCode").val().trim();
				var url = "";
				if(ulCode != "") {
					url = "_g" + goodsId + "_ul" + ulCode;
				} else {
					url = "_g" + goodsId + "_ulempty";
				}
				if(item01 != "") {
					url += "_" + "i1" + item01;
				}
				if(item02 != "") {
					url += "_" + "i2" + item02;
				}
				if(item03 != "") {
					url += "_" + "i3" + item03;
				}
				if(item04 != "") {
					url += "_" + "i4" + item04;
				}
				if(item05 != "") {
					url += "_" + "i5" + item05;
				}
				if(item06 != "") {
					url += "_" + "i6" + item06;
				}
				window.location.href = '<%=request.getContextPath()%>' + "/searchsummary" + url + ".shtml";
			} else {
				//定制检索，这里什么都不做
			}
		} else {
			var keyword = $("#keyword").val().trim();
			if(keyword == "") {
				alert("请输入关键字！");
				$("#keyword").focus();
				return;
			}
			window.location.href = '<%=request.getContextPath()%>' + "/searchsummary_kw" + keyword + ".shtml";
		}
	}
	
	function showTab(showid, hideid) {
		$("#tab" + showid).show();
		$("#tab" + hideid).hide();
	}
	
	function btnreset() {
		//重置
	}
	
	$(function(){
		$("#tabs").tabs();
		$("#tabs").tabs("select", '${tabIndex}');
	});
</script>
</head>
<body>
<jsp:include page="../head_web.jsp" flush="true" />
<div class="main">
	<input type="hidden" id="tmpGoodsId" value="<s:property value="goodsId"/>"/>
	<input type="hidden" id="tempItem01" value="<s:property value="item01"/>"/>
	<input type="hidden" id="tempItem02" value="<s:property value="item02"/>"/>
	<input type="hidden" id="tempItem03" value="<s:property value="item03"/>"/>
	<input type="hidden" id="tempItem04" value="<s:property value="item04"/>"/>
	<input type="hidden" id="tempItem05" value="<s:property value="item05"/>"/>
	<input type="hidden" id="tempItem06" value="<s:property value="item06"/>"/>
	<div class="header_bg">
		<div class="content">
			<div class="product_search">
				<div class="tittle">
				</div>
				<div class="search_content">
					<div class="search_bgc">
				<div id="tabs">
					<ul>
						<li><a href="#tabs-1">条件检索</a></li>
						<li><a href="#tabs-2">关键字检索</a></li>
					</ul>
					<div id="tabs-1">
						<div class="content">
							<table width="80%" border="0" cellpadding="0" cellspacing="5">
								<tr><s:iterator id="goodsList" value="goodsList" status="st1"><s:if test="#st1.index < 3">
									<s:if test="%{goodsList[#st1.index].code == goodsId}">
										<td width="33.3%"><a href="#">
											<div class="product product_cur">
												<p><s:property value="fieldname"/></p>
												<p class="arial"><s:property value="mean"/></p>
											</div>	</a>
										</td>
									</s:if>
									<s:else>
										<td width="33.3%"><a href="<c:url value="/search/searchConditionAction.action"><c:param name="goodsId" value="${code}"></c:param></c:url>">
											<div class="product">
												<p><s:property value="fieldname"/></p>
												<p class="arial"><s:property value="mean"/></p>
											</div>	</a>
										</td>
									</s:else>
								</s:if></s:iterator></tr>
								<tr><s:iterator id="goodsList" value="goodsList" status="st1"><s:if test="#st1.index >= 3">
									<s:if test="%{goodsList[#st1.index].code == goodsId}">
										<td width="33.3%"><a href="#">
											<div class="product product_cur">
												<p><s:property value="fieldname"/></p>
												<p class="arial"><s:property value="mean"/></p>
											</div>	</a>
										</td>
									</s:if>
									<s:else>
										<td width="33.3%"><a href="<c:url value="/search/searchConditionAction.action"><c:param name="goodsId" value="${code}"></c:param></c:url>">
											<div class="product">
												<p><s:property value="fieldname"/></p>
												<p class="arial"><s:property value="mean"/></p>
											</div>	</a>
										</td>
									</s:else>
								</s:if></s:iterator></tr>
							</table>
							<s:if test='goodsId != null && goodsId != ""'>
								<s:if test='goodsId == "01" || goodsId == "02"'>
									<div class="search2" id="itemCondition">
										<h3>条件检索</h3>
										<s:if test="featureList.size() > 0">
											<s:iterator value="featureList" id="featureList" status="st1">
												<div>
													<dl>
														<dt><s:property value="name"/>：</dt>
														<dd>
															<s:if test='goodsId == "01"'>
																<input checked="checked" id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' value="" type="radio" /><label>无</label>
															</s:if>
															<s:elseif test='goodsId == "02"'>
																<input checked="checked" id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' value="" type="radio" /><label>无</label>
															</s:elseif>
															<s:iterator value="dictList" id="dictList" status="st2">
																<s:if test='goodsId == "01"'>
																	<s:if test='%{featureList[#st1.index].codename == "code01_item01" && #st1.index == 0}'>
																		<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item01}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:if>
																	<s:elseif test='%{featureList[#st1.index].codename == "code01_item02" && #st1.index == 1}'>
																		<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item02}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:elseif test='%{featureList[#st1.index].codename == "code01_item03" && #st1.index == 2}'>
																		<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item03}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:elseif test='%{featureList[#st1.index].codename == "code01_item04" && #st1.index == 3}'>
																		<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item04}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:else>
																		<input id="code01_0<s:property value="#st1.index + 1"/>" name='code01_item0<s:property value="#st1.index + 1"/>' value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:else>
																</s:if>
																<s:elseif test='goodsId == "02"'>
																	<s:if test='%{featureList02[#st1.index].codename == "code02_item01" && #st1.index == 0}'>
																		<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item01}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:if>
																	<s:elseif test='%{featureList02[#st1.index].codename == "code02_item02" && #st1.index == 1}'>
																		<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item02}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:elseif test='%{featureList02[#st1.index].codename == "code02_item03" && #st1.index == 2}'>
																		<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item03}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:elseif test='%{featureList02[#st1.index].codename == "code02_item04" && #st1.index == 3}'>
																		<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item04}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:elseif test='%{featureList02[#st1.index].codename == "code02_item05" && #st1.index == 4}'>
																		<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item05}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:elseif test='%{featureList02[#st1.index].codename == "code02_item06" && #st1.index == 5}'>
																		<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' <s:if test='%{dictList[#st2.index].code == item06}'>checked</s:if> value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:elseif>
																	<s:else>
																		<input id="code02_0<s:property value="#st1.index + 1"/>" name='code02_item0<s:property value="#st1.index + 1"/>' value='<s:property value="code"/>' type="radio" /><label><s:property value="fieldname"/></label>
																	</s:else>
																</s:elseif>
															</s:iterator>
														</dd>
													</dl>
												</div>
											</s:iterator>
										</s:if>
										<br />
										UL编号：<input name="ulCode" id="ulCode" style="width: 180px;" maxlength="18" value="<s:property value="ulCode"/>"/>
										<div class="line"></div>
									</div>
								</s:if>
								<s:elseif test='goodsId == "03" || goodsId == "04" || goodsId == "05" || goodsId == "06"'>
									<div class="search3">
										<h3>定制检索</h3>
										<div><img src="<%=request.getContextPath()%>/images/img.png" /></div>
									</div>
								</s:elseif>
								<s:else >
								</s:else>
							</s:if>
						</div>
					</div>
					<div id="tabs-2">
						<div class="content">
							<div class="search1">
								<h3>关键字检索</h3>
								<div>
									<s:textfield name="keyword" id="keyword" cssClass="keyword" maxlength="16" theme="simple"></s:textfield>
								</div>
								<div class="line"></div>
							</div>
						</div>
					</div>
				</div>
				</div>
					<div class="search_bgb">
					</div>
				</div>	
				<div class="buttons"><a href="#">
						<input type="button" class="search_btn" value="检索" onclick="searchSummary();" /></a>
						<input type="button" class="reset_btn" value="重置" onclick="btnreset();" />
				  </div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="../foot_web.jsp" flush="true" />
</body>
</html>

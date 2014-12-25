package com.cn.dsyg.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.cn.common.action.BaseAction;
import com.cn.common.util.Constants;
import com.cn.common.util.PropertiesConfig;
import com.cn.common.util.StringUtil;
import com.cn.dsyg.dto.Dict01Dto;
import com.cn.dsyg.service.Dict01Service;

/**
 * @name HomeAction.java
 * @author Frank
 * @time 2013-10-14下午11:06:43
 * @version 1.0
 */
public class HomeAction extends BaseAction {

	private static final long serialVersionUID = 303939388808414480L;
	
	private Dict01Service dict01Service;
	
	private String strFieldcode;

	/**
	 * 回到首页Action
	 * @return
	 */
	public String goHomeAction() {
		try {
			this.clearMessages();
		} catch(Exception e) {
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 查询特征
	 * @return
	 */
	public String querySubItem() {
		String result = "";
		try {
			this.clearMessages();
			List<Dict01Dto> list = dict01Service.queryDict01ByFieldcode(strFieldcode, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
			if(list != null && list.size() > 0) {
				result = StringUtil.list2json(list);
				//去掉前后括号
				result = result.substring(1, result.length() - 1);
			}
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out;
			out = response.getWriter();
			out.write(result);
			out.flush();
		} catch(Exception e) {
			return ERROR;
		}
		return null;
	}

	public String getStrFieldcode() {
		return strFieldcode;
	}

	public void setStrFieldcode(String strFieldcode) {
		this.strFieldcode = strFieldcode;
	}

	public Dict01Service getDict01Service() {
		return dict01Service;
	}

	public void setDict01Service(Dict01Service dict01Service) {
		this.dict01Service = dict01Service;
	}
}

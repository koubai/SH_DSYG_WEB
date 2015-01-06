package com.cn.dsyg.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.cn.common.action.BaseAction;
import com.cn.common.util.Constants;
import com.cn.common.util.Page;
import com.cn.common.util.PropertiesConfig;
import com.cn.common.util.StringUtil;
import com.cn.dsyg.dto.Dict01Dto;
import com.cn.dsyg.dto.Product01Dto;
import com.cn.dsyg.dto.WarehouseDto;
import com.cn.dsyg.service.Dict01Service;
import com.cn.dsyg.service.Product01Service;
import com.cn.dsyg.service.WarehouseService;

/**
 * @name WarehouseAction.java
 * @author Frank
 * @time 2015-1-4上午2:31:12
 * @version 1.0
 */
public class WarehouseAction extends BaseAction {

	private static final long serialVersionUID = -7502773227490023518L;
	
	private static final Logger log = LogManager.getLogger(WarehouseAction.class);
	
	private WarehouseService warehouseService;
	
	private Dict01Service dict01Service;
	
	private Product01Service product01Service;
	
	/**
	 * 页码
	 */
	private int startIndex;
	
	/**
	 * 翻页
	 */
	private Page page;
	
	private List<WarehouseDto> warehouseManageList;
	
	//检索条件
	//产品ID
	private String queryProductId;
	
	/**
	 * 大产品分类
	 */
	private List<Dict01Dto> goodsList;
	
	//产品信息
	private Product01Dto showProduct01;
	
	/**
	 * 库存管理页面
	 * @return
	 */
	public String showWarehouseManageAction() {
		try {
			this.clearMessages();
			//重新刷新页面数据
			startIndex = 0;
			page = new Page();
			queryProductId = "";
			showProduct01 = new Product01Dto();
			if(StringUtil.isNotBlank(queryProductId)) {
				showProduct01 = product01Service.queryProduct01ByID(queryProductId, "");
			}
			warehouseManageList = new ArrayList<WarehouseDto>();
			//大分类列表
			goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
		} catch(Exception e) {
			log.error("shouWarehouseManageAction error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 查询库存
	 * @return
	 */
	public String queryWarehouseListAction() {
		try {
			this.clearMessages();
			//重新刷新页面数据
			startIndex = 0;
			page = new Page();
			queryData();
		} catch(Exception e) {
			log.error("queryWarehouseListAction error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 翻页库存
	 * @return
	 */
	public String turnWarehouseListAction() {
		try {
			this.clearMessages();
			queryData();
		} catch(Exception e) {
			log.error("turnWarehouseListAction error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 数据查询
	 */
	@SuppressWarnings("unchecked")
	private void queryData() {
		showProduct01 = new Product01Dto();
		if(StringUtil.isNotBlank(queryProductId)) {
			showProduct01 = product01Service.queryProduct01ByID(queryProductId, "");
		}
		warehouseManageList = new ArrayList<WarehouseDto>();
		//大分类列表
		goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
		if(page == null) {
			page = new Page();
		}
		//翻页查询所有委托公司
		this.page.setStartIndex(startIndex);
		page = warehouseService.queryWarehouseByPage(queryProductId, "", "", "", page);
		warehouseManageList = (List<WarehouseDto>) page.getItems();
		this.setStartIndex(page.getStartIndex());
	}

	public WarehouseService getWarehouseService() {
		return warehouseService;
	}

	public void setWarehouseService(WarehouseService warehouseService) {
		this.warehouseService = warehouseService;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<WarehouseDto> getWarehouseManageList() {
		return warehouseManageList;
	}

	public void setWarehouseManageList(List<WarehouseDto> warehouseManageList) {
		this.warehouseManageList = warehouseManageList;
	}

	public Dict01Service getDict01Service() {
		return dict01Service;
	}

	public void setDict01Service(Dict01Service dict01Service) {
		this.dict01Service = dict01Service;
	}

	public List<Dict01Dto> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Dict01Dto> goodsList) {
		this.goodsList = goodsList;
	}

	public String getQueryProductId() {
		return queryProductId;
	}

	public void setQueryProductId(String queryProductId) {
		this.queryProductId = queryProductId;
	}

	public Product01Service getProduct01Service() {
		return product01Service;
	}

	public void setProduct01Service(Product01Service product01Service) {
		this.product01Service = product01Service;
	}

	public Product01Dto getShowProduct01() {
		return showProduct01;
	}

	public void setShowProduct01(Product01Dto showProduct01) {
		this.showProduct01 = showProduct01;
	}
}

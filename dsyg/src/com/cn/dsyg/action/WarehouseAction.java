package com.cn.dsyg.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.cn.common.action.BaseAction;
import com.cn.common.util.Constants;
import com.cn.common.util.Page;
import com.cn.common.util.PropertiesConfig;
import com.cn.dsyg.dto.Dict01Dto;
import com.cn.dsyg.dto.WarehouseDto;
import com.cn.dsyg.service.Dict01Service;
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
	//产品名
	private String queryProductnName;
	//产品大类型
	private String queryGoodsType;
	
	/**
	 * 大产品分类
	 */
	private List<Dict01Dto> goodsList;
	
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
			queryProductnName = "";
			queryGoodsType = "";
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
		warehouseManageList = new ArrayList<WarehouseDto>();
		//大分类列表
		goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
		if(page == null) {
			page = new Page();
		}
		//翻页查询所有委托公司
		this.page.setStartIndex(startIndex);
		page = warehouseService.queryWarehouseByPage(queryProductnName, queryGoodsType, "", page);
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

	public String getQueryProductnName() {
		return queryProductnName;
	}

	public void setQueryProductnName(String queryProductnName) {
		this.queryProductnName = queryProductnName;
	}

	public String getQueryGoodsType() {
		return queryGoodsType;
	}

	public void setQueryGoodsType(String queryGoodsType) {
		this.queryGoodsType = queryGoodsType;
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
}

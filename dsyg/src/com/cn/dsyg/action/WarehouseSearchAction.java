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
import com.cn.dsyg.service.WarehouseService;

/**
 * @name WarehouseSearchAction.java
 * @author Frank
 * @time 2015-1-4下午11:49:09
 * @version 1.0
 */
public class WarehouseSearchAction extends BaseAction {

	private static final long serialVersionUID = -1932880874980450747L;
	private static final Logger log = LogManager.getLogger(WarehouseSearchAction.class);
	
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
	
	/**
	 * 大产品分类
	 */
	private List<Dict01Dto> goodsList;
	
	//大分类ID
	private String producttype;
	//产品名称
	private String productname;
	//库存列表
	private List<WarehouseDto> searchWarehouseList;
	//数据列表，翻页跳转URL
	private String listUrl;

	/**
	 * 显示库存检索页面
	 * @return
	 */
	public String showSearchWarehouseAction() {
		try {
			this.clearMessages();
			producttype = "";
			productname = "";
			startIndex = 0;
			listUrl = "";
			page = new Page();
			searchWarehouseList = new ArrayList<WarehouseDto>();
			//产品类型
			goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
		} catch(Exception e) {
			log.error("showSearchWarehouseAction error:" + e);
			//return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 库存检索
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String searchWarehouseListAction() {
		try {
			this.clearMessages();
			//产品类型
			goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
			//库存检索，初期化数据
			searchWarehouseList = new ArrayList<WarehouseDto>();
			if(page == null) {
				page = new Page();
			}
			//默认页码为第一页
			if(startIndex < 0) {
				startIndex = 0;
			}
			
			//翻页时URL参数
			if(StringUtil.isNotBlank(producttype)) {
				listUrl = "_g" + producttype;
			}
			if(StringUtil.isNotBlank(productname)) {
				listUrl = "_kw" + productname;
			}
			
			this.page.setStartIndex(startIndex);
			
			page = warehouseService.searchWarehouseByPage(productname, producttype, "" + Constants.ROLE_RANK_NORMAL, page, startIndex);
			searchWarehouseList = (List<WarehouseDto>) page.getItems();
			page.setStartIndex(startIndex);
			this.setStartIndex(page.getStartIndex());
		} catch(Exception e) {
			log.error("searchWarehouseAction error:" + e);
		}
		return SUCCESS;
	}
	
	public WarehouseService getWarehouseService() {
		return warehouseService;
	}

	public void setWarehouseService(WarehouseService warehouseService) {
		this.warehouseService = warehouseService;
	}

	public Dict01Service getDict01Service() {
		return dict01Service;
	}

	public void setDict01Service(Dict01Service dict01Service) {
		this.dict01Service = dict01Service;
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

	public String getProducttype() {
		return producttype;
	}

	public void setProducttype(String producttype) {
		this.producttype = producttype;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public List<WarehouseDto> getSearchWarehouseList() {
		return searchWarehouseList;
	}

	public void setSearchWarehouseList(List<WarehouseDto> searchWarehouseList) {
		this.searchWarehouseList = searchWarehouseList;
	}

	public List<Dict01Dto> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Dict01Dto> goodsList) {
		this.goodsList = goodsList;
	}

	public String getListUrl() {
		return listUrl;
	}

	public void setListUrl(String listUrl) {
		this.listUrl = listUrl;
	}
}

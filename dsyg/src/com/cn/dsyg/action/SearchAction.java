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
import com.cn.dsyg.dto.FeatureDto;
import com.cn.dsyg.dto.Product01Dto;
import com.cn.dsyg.dto.Product01SummaryDto;
import com.cn.dsyg.service.Dict01Service;
import com.cn.dsyg.service.Product01Service;

/**
 * @name SearchAction.java
 * @author Frank
 * @time 2014-12-28下午9:52:48
 * @version 1.0
 */
public class SearchAction extends BaseAction {

	private static final long serialVersionUID = 4311868508292227260L;
	private static final Logger log = LogManager.getLogger(SearchAction.class);
	
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
	
	/**
	 * 数据列表
	 */
	private List<Product01Dto> product01List;
	//数据列表，翻页跳转URL
	private String listUrl;
	
	/**
	 * 汇总列表
	 */
	private List<Product01SummaryDto> product01SummaryList;
	//汇总后，跳转的url
	private String summaryUrl;
	
	/**
	 * 汇总总记录数
	 */
	private int summaryCount;
	
	/**
	 * 大产品分类
	 */
	private List<Dict01Dto> goodsList;
	//小分类列表
	private List<FeatureDto> featureList;
	//大分类ID
	private String goodsId;
	//小分类1ID
	private String item01Id;
	//小分类2ID
	private String item02Id;
	//小分类3ID
	private String item03Id;
	//小分类4ID
	private String item04Id;
	//关键字
	private String keyword;
	//1为条件检索，2为关键字检索
	private String tabIndex;

	/**
	 * 显示搜索
	 * @return
	 */
	public String showSearchAction() {
		try {
			this.clearMessages();
			//页面数据初期化
			goodsId = "";
			item01Id = "";
			item02Id = "";
			item03Id = "";
			item04Id = "";
			keyword = "";
			featureList = new ArrayList<FeatureDto>();
			initData();
			product01List = new ArrayList<Product01Dto>();
			//默认选择条件匹配TAB
			tabIndex = "2";
			if(!"1".equals(tabIndex) && !"2".equals(tabIndex)) {
				tabIndex = "1";
			}
		} catch(Exception e) {
			log.error("showSearchAction error:" + e);
			//return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 搜索条件页面
	 * @return
	 */
	public String searchConditionAction() {
		try {
			this.clearMessages();
			initData();
			//小分类
			if(Constants.DICT_GOODS_TYPE_CODE_01.equals(goodsId)) {
				//电线
				featureList = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_01, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
			} else if(Constants.DICT_GOODS_TYPE_CODE_02.equals(goodsId)) {
				//套管
				featureList = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_02, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
			} else {
				featureList = new ArrayList<FeatureDto>();
			}
			//默认选择条件匹配TAB
			if(!"1".equals(tabIndex) && !"2".equals(tabIndex)) {
				tabIndex = "1";
			}
		} catch(Exception e) {
			log.error("searchConditionAction error:" + e);
			//return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 搜索汇总页面
	 * @return
	 */
	public String searchSummaryAction() {
		try {
			this.clearMessages();
			initData();
			summaryCount = 0;
			summaryUrl = "";
			product01SummaryList = new ArrayList<Product01SummaryDto>();
			//查询汇总页面
			if(StringUtil.isNotBlank(goodsId)) {
				//条件检索，关键字赋空
				keyword = "";
				//汇总图片点击URL参数
				//summaryUrl = "searchlist_g" + goodsId;
				if(StringUtil.isNotBlank(item01Id)) {
					summaryUrl += "_i1" + item01Id;
				}
				if(StringUtil.isNotBlank(item02Id)) {
					summaryUrl += "_i2" + item02Id;
				}
				if(StringUtil.isNotBlank(item03Id)) {
					summaryUrl += "_i3" + item03Id;
				}
				if(StringUtil.isNotBlank(item04Id)) {
					summaryUrl += "_i4" + item04Id;
				}
				summaryUrl += "_p0" + Constants.URL_SUFFIX;
				product01SummaryList = product01Service.searchProduct01Summary(goodsId, item01Id, item02Id, item03Id, item04Id, "" + Constants.STATUS_NORMAL, keyword, "" + Constants.ROLE_RANK_NORMAL);
			} else if(StringUtil.isNotBlank(keyword)) {
				//关键字检索
				goodsId = "";
				item01Id = "";
				item02Id = "";
				item03Id = "";
				item04Id = "";
				//汇总图片点击URL参数
				summaryUrl = "_kw" + keyword + "_p0" + Constants.URL_SUFFIX;
				product01SummaryList = product01Service.searchProduct01Summary(goodsId, item01Id, item02Id, item03Id, item04Id, "" + Constants.STATUS_NORMAL, keyword, "" + Constants.ROLE_RANK_NORMAL);
			} else {
				//什么都不做
			}
			if(product01SummaryList != null && product01SummaryList.size() > 0) {
				for(Product01SummaryDto summary : product01SummaryList) {
					summaryCount += summary.getNum();
				}
			}
		} catch(Exception e) {
			log.error("searchSummaryAction error:" + e);
			//return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 搜索明细列表页面
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String searchListAction() {
		try {
			this.clearMessages();
			product01List = new ArrayList<Product01Dto>();
			if(page == null) {
				page = new Page();
			}
			//默认页码为第一页
			if(startIndex < 0) {
				startIndex = 0;
			}
			this.page.setStartIndex(startIndex);
			
			listUrl = "";
			//产品类型
			goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
			//查询汇总页面
			if(StringUtil.isNotBlank(goodsId)) {
				//小分类
				if(Constants.DICT_GOODS_TYPE_CODE_01.equals(goodsId)) {
					//电线
					featureList = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_01, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
				} else if(Constants.DICT_GOODS_TYPE_CODE_02.equals(goodsId)) {
					//套管
					featureList = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_02, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
				} else {
					featureList = new ArrayList<FeatureDto>();
				}
				if(StringUtil.isNotBlank(keyword)) {
					//关键字检索，小分类数据清空
					item01Id = "";
					item02Id = "";
					item03Id = "";
					item04Id = "";
					//翻页时URL参数
					listUrl = "_g" + goodsId + "_kw" + keyword;
					page = product01Service.searchProduct01List(goodsId, item01Id, item02Id, item03Id,
							item04Id, "" + Constants.STATUS_NORMAL, keyword, "" + Constants.ROLE_RANK_NORMAL, page, startIndex);
					product01List = (List<Product01Dto>) page.getItems();
					page.setStartIndex(startIndex);
					this.setStartIndex(page.getStartIndex());
				} else {
					//条件检索，关键字赋空
					keyword = "";
					listUrl = "_g" + goodsId;
					//翻页时URL参数
					if(StringUtil.isNotBlank(item01Id)) {
						listUrl += "_i1" + item01Id;
					}
					if(StringUtil.isNotBlank(item02Id)) {
						listUrl += "_i2" + item02Id;
					}
					if(StringUtil.isNotBlank(item03Id)) {
						listUrl += "_i3" + item03Id;
					}
					if(StringUtil.isNotBlank(item04Id)) {
						listUrl += "_i4" + item04Id;
					}
					page = product01Service.searchProduct01List(goodsId, item01Id, item02Id, item03Id, item04Id,
							"" + Constants.STATUS_NORMAL, keyword, "" + Constants.ROLE_RANK_NORMAL, page, startIndex);
					product01List = (List<Product01Dto>) page.getItems();
					page.setStartIndex(startIndex);
					this.setStartIndex(page.getStartIndex());
				}
			} else {
				//什么都不做
			}
		} catch(Exception e) {
			log.error("searchListAction error:" + e);
			//return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 页面数据初期化
	 */
	private void initData() {
		startIndex = 0;
		page = new Page();
		//大分类列表
		goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
	}

	public Dict01Service getDict01Service() {
		return dict01Service;
	}

	public void setDict01Service(Dict01Service dict01Service) {
		this.dict01Service = dict01Service;
	}

	public Product01Service getProduct01Service() {
		return product01Service;
	}

	public void setProduct01Service(Product01Service product01Service) {
		this.product01Service = product01Service;
	}

	public List<Dict01Dto> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Dict01Dto> goodsList) {
		this.goodsList = goodsList;
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

	public List<FeatureDto> getFeatureList() {
		return featureList;
	}

	public void setFeatureList(List<FeatureDto> featureList) {
		this.featureList = featureList;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public String getItem01Id() {
		return item01Id;
	}

	public void setItem01Id(String item01Id) {
		this.item01Id = item01Id;
	}

	public String getItem02Id() {
		return item02Id;
	}

	public void setItem02Id(String item02Id) {
		this.item02Id = item02Id;
	}

	public String getItem03Id() {
		return item03Id;
	}

	public void setItem03Id(String item03Id) {
		this.item03Id = item03Id;
	}

	public String getItem04Id() {
		return item04Id;
	}

	public void setItem04Id(String item04Id) {
		this.item04Id = item04Id;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<Product01Dto> getProduct01List() {
		return product01List;
	}

	public void setProduct01List(List<Product01Dto> product01List) {
		this.product01List = product01List;
	}

	public String getTabIndex() {
		return tabIndex;
	}

	public void setTabIndex(String tabIndex) {
		this.tabIndex = tabIndex;
	}

	public List<Product01SummaryDto> getProduct01SummaryList() {
		return product01SummaryList;
	}

	public void setProduct01SummaryList(
			List<Product01SummaryDto> product01SummaryList) {
		this.product01SummaryList = product01SummaryList;
	}

	public int getSummaryCount() {
		return summaryCount;
	}

	public void setSummaryCount(int summaryCount) {
		this.summaryCount = summaryCount;
	}

	public String getSummaryUrl() {
		return summaryUrl;
	}

	public void setSummaryUrl(String summaryUrl) {
		this.summaryUrl = summaryUrl;
	}

	public String getListUrl() {
		return listUrl;
	}

	public void setListUrl(String listUrl) {
		this.listUrl = listUrl;
	}
}

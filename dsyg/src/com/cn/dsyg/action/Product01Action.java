package com.cn.dsyg.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.cn.common.action.BaseAction;
import com.cn.common.util.Constants;
import com.cn.common.util.Page;
import com.cn.dsyg.dto.Dict01Dto;
import com.cn.dsyg.dto.FeatureDto;
import com.cn.dsyg.dto.Product01Dto;
import com.cn.dsyg.service.Dict01Service;
import com.cn.dsyg.service.Product01Service;

/**
 * 库存检索输入
 * @author Frank
 * @time 2014-12-16下午10:49:26
 * @version 1.0
 */
public class Product01Action extends BaseAction {

	private static final long serialVersionUID = -7519440567808036928L;
	private static final Logger log = LogManager.getLogger(Product01Action.class);

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
	private List<Product01Dto> manageProduct01List;
	
	//查询条件
	private Product01Dto queryProduct01Dto;
	
	/**
	 * 大商品分类
	 */
	private List<Dict01Dto> goodsList;
	
	//新增
	private Product01Dto addProduct01Dto;
	//电线特征列表
	private List<FeatureDto> featureList01;
	//套管特征列表
	private List<FeatureDto> featureList02;
	
	/**
	 * 新增产品页面
	 * @return
	 */
	public String showAddProduct() {
		try {
			this.clearMessages();
			//大分类列表
			goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE);
			addProduct01Dto = new Product01Dto();
			addProduct01Dto.setFieldcode("01");
			addProduct01Dto.setItem01("01");
			addProduct01Dto.setItem02("006");
			addProduct01Dto.setItem03("01");
			addProduct01Dto.setItem04("03");
			//电线特征列表
			featureList01 = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_01);
			//套管特征列表
			featureList02 = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_02);
		} catch(Exception e) {
			log.error("showAddProduct error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 新增
	 * @return
	 */
	public String addProduct() {
		try {
			this.clearMessages();
			//电线特征列表
			featureList01 = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_01);
			//套管特征列表
			featureList02 = dict01Service.queryFeatureByFieldcode(Constants.DICT_GOODS_TYPE_CODE_02);
		} catch(Exception e) {
			log.error("showAddProduct error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 显示库存检索页面
	 * @return
	 */
	public String showManageProductList() {
		try {
			this.clearMessages();
			startIndex = 0;
			page = new Page();
			manageProduct01List = new ArrayList<Product01Dto>();
			//大分类列表
			goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE);
			//页面查询条件清空
			queryProduct01Dto = new Product01Dto();
		} catch(Exception e) {
			log.error("showManageProductList error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 查询库存
	 * @return
	 */
	public String queryManageProduct() {
		try {
			this.clearMessages();
			startIndex = 0;
			page = new Page();
			queryData();
		} catch(Exception e) {
			log.error("queryManageProduct error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 库存数据翻页
	 * @return
	 */
	public String turnManageProduct() {
		try {
			this.clearMessages();
			queryData();
		} catch(Exception e) {
			log.error("turnManageProduct error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 数据查询
	 */
	@SuppressWarnings("unchecked")
	private void queryData() {
		//大分类列表
		goodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE);
		manageProduct01List = new ArrayList<Product01Dto>();
		if(page == null) {
			page = new Page();
		}
		//翻页查询所有委托公司
		this.page.setStartIndex(startIndex);
		page = product01Service.queryProduct01ByPage(queryProduct01Dto.getFieldcode(), queryProduct01Dto.getKeyword(), page);
		manageProduct01List = (List<Product01Dto>) page.getItems();
		this.setStartIndex(page.getStartIndex());
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

	public List<Dict01Dto> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Dict01Dto> goodsList) {
		this.goodsList = goodsList;
	}

	public Product01Service getProduct01Service() {
		return product01Service;
	}

	public void setProduct01Service(Product01Service product01Service) {
		this.product01Service = product01Service;
	}

	public List<Product01Dto> getManageProduct01List() {
		return manageProduct01List;
	}

	public void setManageProduct01List(List<Product01Dto> manageProduct01List) {
		this.manageProduct01List = manageProduct01List;
	}

	public Product01Dto getQueryProduct01Dto() {
		return queryProduct01Dto;
	}

	public void setQueryProduct01Dto(Product01Dto queryProduct01Dto) {
		this.queryProduct01Dto = queryProduct01Dto;
	}

	public Product01Dto getAddProduct01Dto() {
		return addProduct01Dto;
	}

	public void setAddProduct01Dto(Product01Dto addProduct01Dto) {
		this.addProduct01Dto = addProduct01Dto;
	}

	public List<FeatureDto> getFeatureList01() {
		return featureList01;
	}

	public void setFeatureList01(List<FeatureDto> featureList01) {
		this.featureList01 = featureList01;
	}

	public List<FeatureDto> getFeatureList02() {
		return featureList02;
	}

	public void setFeatureList02(List<FeatureDto> featureList02) {
		this.featureList02 = featureList02;
	}
}

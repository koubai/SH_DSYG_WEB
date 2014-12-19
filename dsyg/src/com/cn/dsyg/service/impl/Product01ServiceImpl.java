package com.cn.dsyg.service.impl;

import java.util.List;

import com.cn.common.util.Page;
import com.cn.common.util.StringUtil;
import com.cn.dsyg.dao.Product01Dao;
import com.cn.dsyg.dto.Product01Dto;
import com.cn.dsyg.service.Product01Service;

/**
 * @name Product01ServiceImpl.java
 * @author Frank
 * @time 2014-12-17上午1:19:48
 * @version 1.0
 */
public class Product01ServiceImpl implements Product01Service {
	
	private Product01Dao product01Dao;

	@Override
	public Page queryProduct01ByPage(String fieldcode, String keyword, Page page) {
		keyword = StringUtil.replaceDatabaseKeyword_mysql(keyword);
		//查询总记录数
		int totalCount = product01Dao.queryProduct01CountByPage(fieldcode, keyword);
		page.setTotalCount(totalCount);
		if(totalCount % page.getPageSize() > 0) {
			page.setTotalPage(totalCount / page.getPageSize() + 1);
		} else {
			page.setTotalPage(totalCount / page.getPageSize());
		}
		//翻页查询记录
		List<Product01Dto> list = product01Dao.queryProduct01ByPage(fieldcode, keyword,
				page.getStartIndex() * page.getPageSize(), page.getPageSize());
		page.setItems(list);
		return page;
	}

	@Override
	public Product01Dto queryProduct01ByID(String id) {
		return product01Dao.queryProduct01ByID(id);
	}

	@Override
	public void deleteProduct01(String id) {
		product01Dao.deleteProduct01(id);
	}

	@Override
	public void insertProduct01(Product01Dto product) {
		product01Dao.insertProduct01(product);
	}

	@Override
	public void updateProduct01(Product01Dto product) {
		product01Dao.updateProduct01(product);
	}

	public Product01Dao getProduct01Dao() {
		return product01Dao;
	}

	public void setProduct01Dao(Product01Dao product01Dao) {
		this.product01Dao = product01Dao;
	}
}

package com.cn.dsyg.service;

import com.cn.common.util.Page;
import com.cn.dsyg.dto.Product01Dto;

/**
 * @name Product01Service.java
 * @author Frank
 * @time 2014-12-17上午1:18:33
 * @version 1.0
 */
public interface Product01Service {

	/**
	 * 翻页查询数据
	 * @param fieldcode
	 * @param keyword 关键字
	 * @param page
	 * @return
	 */
	public Page queryProduct01ByPage(String fieldcode,
			String keyword, Page page);
	
	/**
	 * 根据ID查询数据
	 * @param id
	 * @return
	 */
	public Product01Dto queryProduct01ByID(String id);
	
	/**
	 * 删除数据
	 * @param id
	 */
	public void deleteProduct01(String id);
	
	/**
	 * 新增数据
	 * @param product
	 */
	public void insertProduct01(Product01Dto product);
	
	/**
	 * 修改数据
	 * @param product
	 */
	public void updateProduct01(Product01Dto product);
}

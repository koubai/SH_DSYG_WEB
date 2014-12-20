package com.cn.dsyg.dao;

import java.util.List;

import com.cn.dsyg.dto.Product01Dto;

/**
 * @name Product01Dao.java
 * @author Frank
 * @time 2014-12-9上午12:38:28
 * @version 1.0
 */
public interface Product01Dao {
	
	/**
	 * 翻页查询数据
	 * @param fieldcode
	 * @param keyword 关键字
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Product01Dto> queryProduct01ByPage(String fieldcode,
			String keyword, int start, int end);
	
	/**
	 * 查询总记录数
	 * @param fieldcode
	 * @param keyword
	 * @return
	 */
	public int queryProduct01CountByPage(String fieldcode, String keyword);

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

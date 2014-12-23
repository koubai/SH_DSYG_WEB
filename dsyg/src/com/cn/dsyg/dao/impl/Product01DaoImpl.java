package com.cn.dsyg.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.cn.common.dao.BaseDao;
import com.cn.dsyg.dao.Product01Dao;
import com.cn.dsyg.dto.Product01Dto;

/**
 * @name Product01DaoImpl.java
 * @author Frank
 * @time 2014-12-17上午1:15:58
 * @version 1.0
 */
public class Product01DaoImpl extends BaseDao implements Product01Dao {

	@Override
	public List<Product01Dto> queryProduct01ByPage(String fieldcode,
			String keyword, String status, int start, int end) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("fieldcode", fieldcode);
		paramMap.put("keyword", keyword);
		paramMap.put("status", status);
		paramMap.put("start", start);
		paramMap.put("end", end);
		@SuppressWarnings("unchecked")
		List<Product01Dto> list = getSqlMapClientTemplate().queryForList("queryProduct01ByPage", paramMap);
		return list;
	}

	@Override
	public int queryProduct01CountByPage(String fieldcode, String keyword, String status) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("fieldcode", fieldcode);
		paramMap.put("keyword", keyword);
		paramMap.put("status", status);
		return (Integer) getSqlMapClientTemplate().queryForObject("queryProduct01CountByPage", paramMap);
	}

	@Override
	public Product01Dto queryProduct01ByID(String id) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		@SuppressWarnings("unchecked")
		List<Product01Dto> list = getSqlMapClientTemplate().queryForList("queryProduct01ByID", paramMap);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void deleteProduct01(String id) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		getSqlMapClientTemplate().delete("deleteProduct01", paramMap);
	}

	@Override
	public void insertProduct01(Product01Dto product) {
		getSqlMapClientTemplate().insert("insertProduct01", product);
	}

	@Override
	public void updateProduct01(Product01Dto product) {
		getSqlMapClientTemplate().update("updateProduct01", product);
	}
}

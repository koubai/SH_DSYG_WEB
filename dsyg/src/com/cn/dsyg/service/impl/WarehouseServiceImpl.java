package com.cn.dsyg.service.impl;

import java.util.List;

import com.cn.common.util.Constants;
import com.cn.common.util.Page;
import com.cn.common.util.StringUtil;
import com.cn.dsyg.dao.WarehouseDao;
import com.cn.dsyg.dto.WarehouseDto;
import com.cn.dsyg.service.WarehouseService;

/**
 * @name WarehouseServiceImpl.java
 * @author Frank
 * @time 2015-1-3下午10:23:26
 * @version 1.0
 */
public class WarehouseServiceImpl implements WarehouseService {
	
	private WarehouseDao warehouseDao;
	
	@Override
	public Page searchWarehouseByPage(String productname, String producttype,
			String rank, Page page, int startIndex) {
		productname = StringUtil.searchKeyword(productname);
		
		//查询总记录数（查询有效数据）
		int totalCount = warehouseDao.queryWarehouseCountByPage(productname, producttype, "" + Constants.STATUS_NORMAL, rank);
		page.setTotalCount(totalCount);
		if(totalCount % page.getPageSize() > 0) {
			page.setTotalPage(totalCount / page.getPageSize() + 1);
		} else {
			page.setTotalPage(totalCount / page.getPageSize());
		}
		//翻页查询记录（查询有效数据）
		List<WarehouseDto> list = warehouseDao.queryWarehouseByPage(productname, producttype, "" + Constants.STATUS_NORMAL, rank,
				startIndex * page.getPageSize(), page.getPageSize());
		page.setItems(list);
		return page;
	}

	@Override
	public Page queryWarehouseByPage(String productname, String producttype,
			String rank, Page page) {
		productname = StringUtil.searchKeyword(productname);
		
		//查询总记录数（查询有效数据）
		int totalCount = warehouseDao.queryWarehouseCountByPage(productname, producttype, "" + Constants.STATUS_NORMAL, rank);
		page.setTotalCount(totalCount);
		if(totalCount % page.getPageSize() > 0) {
			page.setTotalPage(totalCount / page.getPageSize() + 1);
		} else {
			page.setTotalPage(totalCount / page.getPageSize());
		}
		//翻页查询记录（查询有效数据）
		List<WarehouseDto> list = warehouseDao.queryWarehouseByPage(productname, producttype, "" + Constants.STATUS_NORMAL, rank,
				page.getStartIndex() * page.getPageSize(), page.getPageSize());
		page.setItems(list);
		return page;
	}

	@Override
	public WarehouseDto queryWarehouseByID(String id, String rank) {
		return warehouseDao.queryWarehouseByID(id, rank);
	}

	@Override
	public void deleteWarehouse(String id) {
		warehouseDao.deleteWarehouse(id);
	}

	@Override
	public void insertWarehouse(WarehouseDto warehouse) {
		warehouseDao.insertWarehouse(warehouse);
	}

	@Override
	public void updateWarehouse(WarehouseDto warehouse) {
		warehouseDao.updateWarehouse(warehouse);
	}

	public WarehouseDao getWarehouseDao() {
		return warehouseDao;
	}

	public void setWarehouseDao(WarehouseDao warehouseDao) {
		this.warehouseDao = warehouseDao;
	}
}

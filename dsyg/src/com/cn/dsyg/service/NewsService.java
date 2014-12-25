package com.cn.dsyg.service;

import java.util.List;

import com.cn.common.util.Page;
import com.cn.dsyg.dto.NewsDto;

/**
 * @name NewsService.java
 * @author Frank
 * @time 2014-12-25下午10:14:14
 * @version 1.0
 */
public interface NewsService {

	/**
	 * 翻页查询数据
	 * @param title
	 * @param author
	 * @param page
	 * @return
	 */
	public Page queryNewsByPage(String title, String author, Page page);
	
	/**
	 * 根据登录ID查询数据
	 * @param id
	 * @return
	 */
	public NewsDto queryNewsByID(String id);
	
	/**
	 * 查询所有数据
	 * @return
	 */
	public List<NewsDto> queryAllNews();
	
	/**
	 * 删除数据
	 * @param id
	 */
	public void deleteNews(String id);
	
	/**
	 * 新增数据
	 * @param news
	 */
	public void insertNews(NewsDto news);
	
	/**
	 * 修改数据
	 * @param news
	 */
	public void updateNews(NewsDto news);
}

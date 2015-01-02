package com.cn.dsyg.service.impl;

import java.util.List;

import com.cn.common.util.Page;
import com.cn.common.util.StringUtil;
import com.cn.dsyg.dao.NewsDao;
import com.cn.dsyg.dto.NewsDto;
import com.cn.dsyg.service.NewsService;

/**
 * @name NewsServiceImpl.java
 * @author Frank
 * @time 2014-12-25下午10:15:16
 * @version 1.0
 */
public class NewsServiceImpl implements NewsService {

	private NewsDao newsDao;
	
	@Override
	public Page queryNewsByPage(String title, String author, Page page) {
		title = StringUtil.replaceDatabaseKeyword_mysql(title);
		
		//查询总记录数（查询有效数据）
		int totalCount = newsDao.queryNewsCountByPage(title, author);
		page.setTotalCount(totalCount);
		if(totalCount % page.getPageSize() > 0) {
			page.setTotalPage(totalCount / page.getPageSize() + 1);
		} else {
			page.setTotalPage(totalCount / page.getPageSize());
		}
		//翻页查询记录（查询有效数据）
		List<NewsDto> list = newsDao.queryNewsByPage(title, author,
				page.getStartIndex() * page.getPageSize(), page.getPageSize());
		page.setItems(list);
		return page;
	}

	@Override
	public NewsDto queryNewsByID(String id) {
		return newsDao.queryNewsByID(id);
	}

	@Override
	public List<NewsDto> queryAllNews() {
		return newsDao.queryAllNews();
	}

	@Override
	public void deleteNews(String id) {
		newsDao.deleteNews(id);
	}

	@Override
	public void insertNews(NewsDto news) {
		newsDao.insertNews(news);
	}

	@Override
	public void updateNews(NewsDto news) {
		newsDao.updateNews(news);
	}

	public NewsDao getNewsDao() {
		return newsDao;
	}

	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}
}

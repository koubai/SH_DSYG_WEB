package com.cn.dsyg.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.cn.common.action.BaseAction;
import com.cn.common.util.Page;
import com.cn.dsyg.dto.NewsDto;
import com.cn.dsyg.service.NewsService;

/**
 * @name NewsAction.java
 * @author Frank
 * @time 2014-12-25下午11:03:55
 * @version 1.0
 */
public class NewsAction extends BaseAction {

	private static final Logger log = LogManager.getLogger(NewsAction.class);
	
	private static final long serialVersionUID = -4721276630639546027L;
	
	private NewsService newsService;
	//查询条件
	private String queryTitle;
	private String queryAuthor;
	
	/**
	 * 页码
	 */
	private int startIndex;
	
	/**
	 * 翻页
	 */
	private Page page;
	
	private List<NewsDto> newsList;

	/**
	 * 新闻页面
	 * @return
	 */
	public String showNewsManageAction() {
		try {
			this.clearMessages();
		} catch(Exception e) {
			log.error("showNewsManageAction error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 查询消息
	 * @return
	 */
	public String queryNewsAction() {
		try {
			this.clearMessages();
			startIndex = 0;
			page = new Page();
			queryData();
		} catch(Exception e) {
			log.error("queryNewsAction error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 翻页
	 * @return
	 */
	public String turnNewsAction() {
		try {
			this.clearMessages();
			queryData();
		} catch(Exception e) {
			log.error("turnNewsAction error:" + e);
			return ERROR;
		}
		return SUCCESS;
	}
	
	/**
	 * 数据查询
	 */
	@SuppressWarnings("unchecked")
	private void queryData() {
		newsList = new ArrayList<NewsDto>();
		if(page == null) {
			page = new Page();
		}
		//翻页查询所有委托公司
		this.page.setStartIndex(startIndex);
		page = newsService.queryNewsByPage(queryTitle, queryAuthor, page);
		newsList = (List<NewsDto>) page.getItems();
		this.setStartIndex(page.getStartIndex());
	}

	public NewsService getNewsService() {
		return newsService;
	}

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	public String getQueryTitle() {
		return queryTitle;
	}

	public void setQueryTitle(String queryTitle) {
		this.queryTitle = queryTitle;
	}

	public String getQueryAuthor() {
		return queryAuthor;
	}

	public void setQueryAuthor(String queryAuthor) {
		this.queryAuthor = queryAuthor;
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

	public List<NewsDto> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<NewsDto> newsList) {
		this.newsList = newsList;
	}
}

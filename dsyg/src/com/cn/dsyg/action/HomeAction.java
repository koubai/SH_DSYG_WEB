package com.cn.dsyg.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.cn.common.action.BaseAction;
import com.cn.common.util.Constants;
import com.cn.common.util.PropertiesConfig;
import com.cn.common.util.StringUtil;
import com.cn.dsyg.dto.Dict01Dto;
import com.cn.dsyg.dto.NewsDto;
import com.cn.dsyg.service.Dict01Service;
import com.cn.dsyg.service.NewsService;

/**
 * @name HomeAction.java
 * @author Frank
 * @time 2013-10-14下午11:06:43
 * @version 1.0
 */
public class HomeAction extends BaseAction {

	private static final long serialVersionUID = 303939388808414480L;
	
	private static final Logger log = LogManager.getLogger(HomeAction.class);
	
	private Dict01Service dict01Service;
	
	private NewsService newsService;
	
	private String strFieldcode;
	
	/**
	 * 首页大产品分类
	 */
	private List<Dict01Dto> homeGoodsList;
	
	/**
	 * 首页新闻
	 */
	private List<NewsDto> homeNewsList;
	
	/**
	 * 新闻年份
	 */
	private String newsYear;
	
	/**
	 * 新闻年份列表
	 */
	private List<String> yearList;
	
	/**
	 * 新闻明细ID
	 */
	private String newsDetailId;
	
	/**
	 * 新闻明细
	 */
	private NewsDto newsDetail;

	/**
	 * 回到首页Action
	 * @return
	 */
	public String goHomeAction() {
		try {
			this.clearMessages();
			newsDetailId = "";
			newsDetail = new NewsDto();
			//大分类列表
			homeGoodsList = dict01Service.queryDict01ByFieldcode(Constants.DICT_GOODS_TYPE, PropertiesConfig.getPropertiesValueByKey(Constants.SYSTEM_LANGUAGE));
			//查询新闻
			homeNewsList = newsService.queryHomeNews();
		} catch(Exception e) {
			log.error("goHomeAction error:" + e);
		}
		return SUCCESS;
	}
	
	/**
	 * 公司信息
	 * @return
	 */
	public String showCompanyInfoAction() {
		try {
			this.clearMessages();
		} catch(Exception e) {
			log.error("showCompanyInfoAction error:" + e);
		}
		return SUCCESS;
	}
	
	/**
	 * 公司分布
	 * @return
	 */
	public String showCompanyDistributionAction() {
		try {
			this.clearMessages();
		} catch(Exception e) {
			log.error("showCompanyDistributionAction error:" + e);
		}
		return SUCCESS;
	}
	
	/**
	 * 公司历史
	 * @return
	 */
	public String showCompanyHistoryAction() {
		try {
			this.clearMessages();
		} catch(Exception e) {
			log.error("showCompanyHistoryAction error:" + e);
		}
		return SUCCESS;
	}
	
	/**
	 * 总经理致辞
	 * @return
	 */
	public String showCompanySpeechAction() {
		try {
			this.clearMessages();
		} catch(Exception e) {
			log.error("showCompanySpeechAction error:" + e);
		}
		return SUCCESS;
	}
	
	/**
	 * 公司新闻
	 * @return
	 */
	public String showCompanyNewAction() {
		try {
			this.clearMessages();
			homeNewsList = new ArrayList<NewsDto>();
			yearList = new ArrayList<String>();
			String curryear = "";
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
			curryear = sdf.format(new Date());
			
			if(StringUtil.isBlank(newsYear)) {
				//如果日期为空，则默认年份为当前时间年份
				newsYear = curryear;
			}
			
			//默认显示N年之内的新闻
			int year = Integer.valueOf(curryear);
			int i = Constants.SHOW_NEWS_YEAR;
			if(year - Constants.SHOW_NEWS_YEAR > Constants.SHOW_NEWS_YEAR_COUNT) {
				i = year - Constants.SHOW_NEWS_YEAR_COUNT;
			}
			for(; i <= year; i++) {
				yearList.add("" + i);
			}
			
			//根据年份查询新闻列表
			homeNewsList = newsService.queryNewsByYear(newsYear);
		} catch(Exception e) {
			log.error("showCompanyNewAction error:" + e);
		}
		return SUCCESS;
	}
	
	/**
	 * 新闻明细页面
	 * @return
	 */
	public String showNewsDetailAction() {
		try {
			this.clearMessages();
			newsDetail = newsService.queryNewsByID(newsDetailId);
		} catch(Exception e) {
			log.error("showNewsDetailAction error:" + e);
		}
		return SUCCESS;
	}
	
	public String getStrFieldcode() {
		return strFieldcode;
	}

	public void setStrFieldcode(String strFieldcode) {
		this.strFieldcode = strFieldcode;
	}

	public Dict01Service getDict01Service() {
		return dict01Service;
	}

	public void setDict01Service(Dict01Service dict01Service) {
		this.dict01Service = dict01Service;
	}

	public NewsService getNewsService() {
		return newsService;
	}

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	public List<NewsDto> getHomeNewsList() {
		return homeNewsList;
	}

	public void setHomeNewsList(List<NewsDto> homeNewsList) {
		this.homeNewsList = homeNewsList;
	}

	public List<Dict01Dto> getHomeGoodsList() {
		return homeGoodsList;
	}

	public void setHomeGoodsList(List<Dict01Dto> homeGoodsList) {
		this.homeGoodsList = homeGoodsList;
	}

	public String getNewsYear() {
		return newsYear;
	}

	public void setNewsYear(String newsYear) {
		this.newsYear = newsYear;
	}

	public List<String> getYearList() {
		return yearList;
	}

	public void setYearList(List<String> yearList) {
		this.yearList = yearList;
	}

	public String getNewsDetailId() {
		return newsDetailId;
	}

	public void setNewsDetailId(String newsDetailId) {
		this.newsDetailId = newsDetailId;
	}

	public NewsDto getNewsDetail() {
		return newsDetail;
	}

	public void setNewsDetail(NewsDto newsDetail) {
		this.newsDetail = newsDetail;
	}
}

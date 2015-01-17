package com.cn.common.util;

/**
 * 常量类
 * @name Constants.java
 * @author Frank
 * @time 2013-9-24下午8:57:14
 * @version 1.0
 */
public class Constants {
	
	//多语言
	public final static String SYSTEM_LANGUAGE = "language";
	//URL后缀名
	public final static String URL_SUFFIX = ".shtml";
	//ul编码为空字符串
	public final static String UL_EMPTY = "empty";
	//首页新闻条数
	public final static int SHOW_NEWS_COUNT = 6;
	//公司新闻，初始显示年份显示
	public final static int SHOW_NEWS_YEAR = 2012;
	//最多显示N年的新闻
	public final static int SHOW_NEWS_YEAR_COUNT = 5;
	
	//dict01
	//产品分类
	public final static String DICT_GOODS_TYPE = "goods";
	public final static String DICT_GOODS_TYPE_CODE_01 = "01";//电线
	public final static String DICT_GOODS_TYPE_CODE_02 = "02";//套管
	public final static String DICT_GOODS_TYPE_CODE_03 = "03";//扁平线
	public final static String DICT_GOODS_TYPE_CODE_04 = "04";//线束
	public final static String DICT_GOODS_TYPE_CODE_05 = "05";//连接器
	public final static String DICT_GOODS_TYPE_CODE_06 = "06";//FPC
	
	//产地
	public final static String DICT_MAKEAREA = "makearea";
	
	//小分类：耐温
	public final static String DICT_SUB_TYPE_ITEM01 = "item01";
	//小分类：耐压
	public final static String DICT_SUB_TYPE_ITEM02 = "item02";
	//小分类：材质（电线）/绝缘（套管）
	public final static String DICT_SUB_TYPE_ITEM03 = "item03";
	//小分类：环保（电线）/收缩比（套管）
	public final static String DICT_SUB_TYPE_ITEM04 = "item04";
	//小分类：材质（套管）
	public final static String DICT_SUB_TYPE_ITEM05 = "item05";
	//小分类：环保（套管）
	public final static String DICT_SUB_TYPE_ITEM06 = "item06";
	
	//单位
	public final static String DICT_UNIT_TYPE = "unit";
	
	//颜色
	public final static String DICT_COLOR_TYPE = "color";
	
	//properties
	public final static String PROPERTIES_IMAGES_URL = "images_url";
	public final static String PROPERTIES_IMAGES_PATH = "images_path";
	public final static String PROPERTIES_PDF_URL = "pdf_url";
	public final static String PROPERTIES_PDF_PATH = "pdf_path";
	public final static String PROPERTIES_NEW_PIC_URL = "news_img_url";
	public final static String PROPERTIES_NEW_PIC_PATH = "news_img_path";
	
	//pdf
	
	/**
	 * 验证码
	 */
	public final static String RANDOM = "random";
	
	/**
	 * 是否登录
	 */
	public final static String SESSION_ISLOGIN = "is_login";
	
	/**
	 * 已登录
	 */
	public final static String FLAG_IS_LOGIN = "1";
	
	/**
	 * 未登录
	 */
	public final static String FLAG_NOT_LOGIN = "0";
	
	/**
	 * 登录ID
	 */
	public final static String USER_ID = "user_id";
	
	/**
	 * 用户名
	 */
	public final static String USER_NAME = "user_name";
	
	/**
	 * 登录时间
	 */
	public final static String LOGIN_TIME = "login_time";
	
	/**
	 * 用户安全级别（权限）
	 */
	public final static String ROLE_RANK = "user_rank";
	//用户权限级别（公司用户99=超级管理员）
	public final static int ROLE_RANK_ADMIN = 99;
	//用户权限级别（公司用户70=一般用户）只能输入和更新产品、库存和新闻，不能删除产品、库存和新闻
	public final static int ROLE_RANK_NORMAL = 70;
	//普通浏览用户（非公司用户50=操作员）只能输入和更新产品和库存，不能删除产品和库存，可以看新闻
	public final static int ROLE_RANK_OPERATOR = 50;
	
	//角色code
	public final static String ROLE_CODE_ADMIN = "admin";
	public final static String ROLE_CODE_MANAGER = "manager";
	public final static String ROLE_CODE_WAREHOUSE = "warehouse";
	public final static String ROLE_CODE_EMPLOYEE = "employee";
	public final static String ROLE_CODE_NORMAL = "normal";
	
	//删除标记
	/**
	 * 已删除
	 */
	public final static int STATUS_DEL = 0;
	
	/**
	 * 正常
	 */
	public final static int STATUS_NORMAL = 1;
}

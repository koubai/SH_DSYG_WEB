package com.cn.common.util;

/**
 * 常量类
 * @name Constants.java
 * @author Frank
 * @time 2013-9-24下午8:57:14
 * @version 1.0
 */
public class Constants {
	
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
	//用户权限级别（公司用户90=公司领导）
	public final static int ROLE_RANK_MANAGER = 90;
	//用户权限级别（公司用户80=仓库管理员）
	public final static int ROLE_RANK_WAREHOUSE = 80;
	//用户权限级别（公司用户70=公司职员）
	public final static int ROLE_RANK_EMPLOYEE = 70;
	//普通浏览用户（非公司用户50=一般用户）
	public final static int ROLE_RANK_NORMAL = 50;
	
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

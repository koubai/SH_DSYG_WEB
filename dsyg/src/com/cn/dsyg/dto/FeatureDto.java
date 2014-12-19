package com.cn.dsyg.dto;

import java.util.List;

/**
 * 特征
 * @name FeatureDto.java
 * @author Frank
 * @time 2014-12-19上午1:33:28
 * @version 1.0
 */
public class FeatureDto {
	
	/**
	 * code名称
	 */
	private String codename;

	/**
	 * 名称
	 */
	private String name;
	
	/**
	 * 特征数据列表
	 */
	private List<Dict01Dto> dictList;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Dict01Dto> getDictList() {
		return dictList;
	}

	public void setDictList(List<Dict01Dto> dictList) {
		this.dictList = dictList;
	}

	public String getCodename() {
		return codename;
	}

	public void setCodename(String codename) {
		this.codename = codename;
	}
}

package com.easycms.service;
import com.easycms.base.BaseDao; 
import com.easycms.entity.CmsNew;
public interface CmsNewService extends BaseDao<CmsNew, Integer>{
	
	/**
	 * 根据用户名得到对应的对象
	 * @param name 
	 * @return
	 *//*
	public CmsNew findByName(String title);
	*//**
	 * 保存用户信息的同时也要保存用户扩展信息
	 * @param news
	 */
	public void saveNew(CmsNew news);
	
	/**
	 * 删除New数据
	 * @param id
	 */
	public void deleteById(Integer id);
	
}

package com.neu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.WardInfoDao;
import com.neu.util.ConvertUtil;

public class WardInfoService {

	private WardInfoDao wardInfoDao;
	
	public WardInfoService(){
		this.wardInfoDao=new WardInfoDao();
	}
	
	public boolean doInsert(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=wardInfoDao.insert(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public List<Map<String,String>> findByParams(Map<String,String[]> params){
		List<Map<String,String>> list=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		list=wardInfoDao.search(map);
		return list;
	}
	
	public Map<String,String> findById(Map<String,String[]> params){
		Map<String,String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String,String>> list=wardInfoDao.search(map);
		if(list.size()>0){
			item=list.get(0);
		}
		return item;
	}
	
	public boolean doDelete(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=wardInfoDao.delete(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}

	
}

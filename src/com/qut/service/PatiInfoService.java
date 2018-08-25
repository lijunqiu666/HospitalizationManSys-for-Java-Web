package com.qut.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.qut.dao.PatiInfoDao;
import com.qut.util.ConvertUtil;

public class PatiInfoService {

	private PatiInfoDao patiInfoDao;
	
	public PatiInfoService(){
		this.patiInfoDao=new PatiInfoDao();
	}
	
	public boolean doInsert(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=patiInfoDao.insert(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	
	public List<Map<String,String>> findByParams(Map<String,String[]> params){
		List<Map<String,String>> list=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		list=patiInfoDao.search(map);
		return list;
	}

	
	public Map<String,String> findById(Map<String,String[]> params){
		Map<String,String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String,String>> list=patiInfoDao.search(map);
		if(list.size()>0){
			item=list.get(0);
		}
		return item;
	}
	
	
	public boolean doDelete(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=patiInfoDao.delete(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public boolean doUpdate(Map<String, String[]> params){
		
		boolean flag=false;
		Map<String, String> map=ConvertUtil.convertMap(params);
//		存放 修改语句的条件
		Map<String,String> where=new HashMap<String,String>();
		where.put("pati_id", map.get("pati_id"));
//		必须把作为条件的列从map中移除
		map.remove("pati_id");
		int row=patiInfoDao.update(map, where);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
}

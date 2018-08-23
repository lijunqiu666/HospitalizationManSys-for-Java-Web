package com.neu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.neu.dao.NewRInfoDao;
import com.neu.util.ConvertUtil;

public class NewRInfoService {

	private NewRInfoDao rInfoDao;
	
	public NewRInfoService(){
		this.rInfoDao=new NewRInfoDao();
	}
	
	public boolean doReg(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=rInfoDao.insert(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public List<Map<String,String>> findByParams(Map<String,String[]> params){
		List<Map<String,String>> list=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		list=rInfoDao.search(map);
		return list;
	}
	
	public boolean doDelete(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=rInfoDao.delete(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public Map<String, String> checkLogin(Map<String,String[]> params){
		Map<String, String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String, String>> list=rInfoDao.search(map);
		if(list.size()>0){
			item=list.get(0);
		}
		return item;
	}
	
	
	public boolean doUpdate(Map<String, String[]> params){
		boolean flag=false;
		Map<String, String> map=ConvertUtil.convertMap(params);
//		存放 修改语句的条件
		Map<String,String> where=new HashMap<String, String>();
		where.put("ward_num", map.get("ward_num"));
//		必须把作为条件的列从map中移除
		map.remove("ward_num");
		int row=rInfoDao.update(map, where);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public Map<String,String> findById(Map<String,String[]> params){
		Map<String,String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String,String>> list=rInfoDao.search(map);
		if(list.size()>0){
			item=list.get(0);
		}
		return item;
	}
	
}

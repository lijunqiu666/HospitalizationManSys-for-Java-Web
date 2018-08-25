package com.qut.service;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

import com.qut.dao.AdminInfoDao;
import com.qut.util.ConvertUtil;

/**
 * 
 * 该类中的方法 对应页面中的具体操作
 *
 */
public class AdminInfoService {

	private AdminInfoDao adminInfoDao;
	
	public AdminInfoService(){
		this.adminInfoDao=new AdminInfoDao();
	}
	
	public boolean doReg(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=adminInfoDao.insert(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public List<Map<String,String>> findByParams(Map<String,String[]> params){
		List<Map<String,String>> list=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		list=adminInfoDao.search(map);
		return list;
	}
	
	public boolean doDelete(Map<String,String[]> params){
		boolean flag=false;
		Map<String,String> map=ConvertUtil.convertMap(params);
		int row=adminInfoDao.delete(map);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public Map<String, String> checkLogin(Map<String,String[]> params){
		Map<String, String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String, String>> list=adminInfoDao.search(map);
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
		where.put("user_num", map.get("user_num"));
//		必须把作为条件的列从map中移除
		map.remove("user_num");
		int row=adminInfoDao.update(map, where);
		if(row>0){
			flag=true;
		}
		return flag;
	}
	
	public Map<String,String> findById(Map<String,String[]> params){
		Map<String,String> item=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		List<Map<String,String>> list=adminInfoDao.search(map);
		if(list.size()>0){
			item=list.get(0);
		}
		return item;
	}
	
	
}

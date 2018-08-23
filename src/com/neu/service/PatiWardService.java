package com.neu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.neu.dao.PatiInfoDao;
import com.neu.dao.PatiWardDao;
import com.neu.util.ConvertUtil;

public class PatiWardService {
	
	private PatiWardDao patiwardDao;
	
	public PatiWardService(){
		this.patiwardDao=new PatiWardDao();
	}

	public List<Map<String,String>> findByParams(Map<String,String[]> params){
		List<Map<String,String>> list=null;
		Map<String,String> map=ConvertUtil.convertMap(params);
		list=patiwardDao.search(map);
		return list;
	}
}

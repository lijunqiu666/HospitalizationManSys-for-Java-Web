package com.qut.util;

import java.util.HashMap;
import java.util.Map;

public class ConvertUtil {

	public static Map<String, String> convertMap(Map<String,String[]> params){
		Map<String, String> map=null;
		if(params!=null && params.size()>0){
			map=new HashMap<String, String>();
			for(Map.Entry<String, String[]> entry:params.entrySet()){
				String key=entry.getKey();
				String[] values=entry.getValue();
				if(values!=null && values.length>0){
					String value="";
					for(String str:values){
						if(str.trim().length()>0){
							value+=","+str;
						}
					}
					if(value.length()>1){
						map.put(key, value.substring(1));
					}
				}
			}
		}
		return map;
	}
}

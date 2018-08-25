package com.qut.dao.base;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class GenerateSQLDao extends BaseDao {

	private String tableName;
	public GenerateSQLDao(String tableName){
		this.tableName=tableName;
	}
	public void setTableName(String tableName){
		this.tableName=tableName;
	}
	//insert into test_info(t_name,t_sex)values(?,?)
	public final int insert(Map<String,String> map){
		int row=0;
		String sql="insert into "+tableName+"(";
//		存放列名的列表
		String cols="";
//		values中 ? 列表
		String values="";
//		存放?对应的值、
		List<String> params=new ArrayList<String>();
//		遍历map获取其中的key 和 value
//		循环一次 获取 一个 键值对 entry
		for(Map.Entry<String, String> entry:map.entrySet()){
			cols+=","+entry.getKey();
			values+=",?";
			params.add(entry.getValue());
		}
		sql+=cols.substring(1)+")values(";
		sql+=values.substring(1)+")";
		//System.out.println(sql);
		row=super.executeUpdate(sql, params);
		return row;
	}
	
//	delete from 表名 where 1=1 and 条件
//	delete from 表名 where 1=1 and 列名 in(值,值) //批量删除
//	delete from 表 where 1=1 and t_no in (1,5);
	public final int delete(Map<String,String> map){
		int row=0;
		String sql="delete from "+tableName+" where 1=1 ";
		List<String> params=null;
		if(map!=null && map.size()>0){
			params=new ArrayList<String>();
			String where="";
			for(Map.Entry<String, String> entry:map.entrySet()){
				where+=" and "+entry.getKey();
				String value=entry.getValue();
				if(value.indexOf(",")>0){
					where+=" in("+value+")";
				}else{
					where+=" =?";
					params.add(value);
				}
			}
			sql+=where;
		}
		row=super.executeUpdate(sql, params);
		return row;
	}
	
//	update 表名 set 列=值,列=值 where 1=1 and 条件
//	update 表名 set 列=值,列=值 where 1=1 and 列 in(值,值)
	public final int update(Map<String,String> map,
			Map<String,String> where){
		int row=0;
		String sql="update "+tableName+" set ";
//		存放 set 后的sql代码 列名=?,列名=?
		String sets="";
		List<String> params=new ArrayList<String>();
		for(Map.Entry<String, String> entry:map.entrySet()){
			sets+=","+entry.getKey()+"=?";
			params.add(entry.getValue());
		}
		sql+=sets.substring(1);
		sql+=" where 1=1 ";
		if(where != null && where.size()>0){
			for(Map.Entry<String, String> entry:where.entrySet()){
				sql+=" and "+entry.getKey();
				String value=entry.getValue();
				if(value.indexOf(",")>0){
					sql+=" in("+value+")";
				}else{
					sql+="=?";
					params.add(value);
				}
			}
		}
		row=super.executeUpdate(sql, params);
		return row;
	}
//	sql语句等值查询的操作,必须使用视图
//	select * from 表名 where 1=1 and 列=?
//	select * from 表名 where 1=1 and 列 in()
//	StringBuilder
	public final List<Map<String,String>> search(Map<String,String> where){
		List<Map<String,String>> list=null;
		String sql="select * from "+tableName+" where 1=1 ";
		List<String> params=null;
		if(null != where && where.size()>0){
			params=new ArrayList<String>();
			for(Map.Entry<String, String> entry:where.entrySet()){
				sql+=" and "+entry.getKey();
				String value=entry.getValue();
				if(value.indexOf(",")>0){
					sql+=" in("+value+")";
				}else{
					sql+="=?";
					params.add(value);
				}
			}
		}
		list=super.executeQuery(sql, params);		
		return list;
	}
}

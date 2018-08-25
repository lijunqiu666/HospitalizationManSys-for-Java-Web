package com.qut.dao.base;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.qut.util.DBUtil;

public class BaseDao {

	protected Connection conn;
	protected PreparedStatement stmt;
	protected ResultSet rst;
	
	/**
	 * 执行insert delete update 操作
	 * 返回影响的行数
	 * @param sql
	 * @param params ：是sql语句中 ？ 的值 如果没有 ？ 直接 写 null 即可
	 * @return
	 */
	protected final int executeUpdate(String sql,List<String> params){
		int row=0;
		try {
			getConnection();
			stmt=conn.prepareStatement(sql);
			if(params != null && params.size()>0){
				for(int i=0;i<params.size();i++){
					stmt.setString(i+1, params.get(i));
				}
			}
			row=stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close();
		}
		return row;
	}

	protected void close() {
		DBUtil.close(rst, stmt, conn);
	}
	
	public final List<Map<String, String>> executeQuery(String sql,
			List<String> params){
		List<Map<String, String>> list=
				new ArrayList<Map<String,String>>();
		try {
			getConnection();
			stmt=conn.prepareStatement(sql);
			if(params != null && params.size()>0){
				for(int i=0;i<params.size();i++){
					stmt.setString(i+1, params.get(i));
				}
			}
			rst=stmt.executeQuery();
//			获取查询的列信息
			ResultSetMetaData meta=rst.getMetaData();
//			获取查询的列数
			int count=meta.getColumnCount();
//			获取查询的列名
			String[] names=new String[count];
//			获取列名
			for(int i=0;i<count;i++){
				names[i]=meta.getColumnLabel(i+1).toLowerCase();
			}
//			遍历rst中的数据
			Map<String,String> item=null;
			while(rst.next()){
				item=new HashMap<String, String>();
				for(int i=0;i<count;i++){
					String name=names[i];
					String value=rst.getString(name);
					item.put(name, value);
				}
//				把获取的一行数据添加到 集合中
				list.add(item);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close();
		}
		return list;
	}

	protected void getConnection() throws SQLException {
		conn=DBUtil.getConnection();
	}
}




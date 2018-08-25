package com.qut.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.neu.util.ReadProUtil;

/**
 * 负责数据库的连接和关闭
 * @author Administrator
 *
 */
public class DBUtil {
	private static String user=ReadProUtil.getUser();
	private static String password=ReadProUtil.getPassword();
	private static String driver=ReadProUtil.getDriver();
	private static String url=ReadProUtil.getUrl();
	//静态块，在类加载的时候 执行一次
	static{
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 该方法 返回数据库连接，将来谁调用 谁处理异常
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException{
		Connection conn=DriverManager
				.getConnection(url, user, password);
		return conn;
	}
	/**
	 * 关闭数据库资源
	 * @param rst
	 * @param stmt
	 * @param conn
	 */
	public static void close(ResultSet rst,Statement stmt,Connection conn){
		if(rst!=null){
			try {
				rst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				rst=null;
			}
		}
		if(stmt != null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				stmt=null;
			}
		}
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				conn=null;
			}
		}
	}
	
	
	
}

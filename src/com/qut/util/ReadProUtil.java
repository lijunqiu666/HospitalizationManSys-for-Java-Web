package com.qut.util;

import java.util.ResourceBundle;

public class ReadProUtil {
	//国际化
	private static ResourceBundle rb=
			ResourceBundle.getBundle("db");
	public static String getUser(){
		String str=rb.getString("user");
		return str;
	}
	public static String getPassword(){
		String str=rb.getString("password");
		return str;
	}
	public static String getDriver(){
		String str=rb.getString("driver");
		return str;
	}
	public static String getUrl(){
		String str=rb.getString("url");
		return str;
	}
}

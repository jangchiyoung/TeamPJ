package com.jcpdev.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jcpdev.mybatis.SqlSessionBean;

public class favoritesDao {
	private static favoritesDao dao = new favoritesDao();
	SqlSessionFactory sqlFactory = SqlSessionBean.getSessionFactory();

	private favoritesDao() { }
	public static favoritesDao getInstance() {
		return dao;
	}
}

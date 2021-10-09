package com.jcpdev.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jcpdev.mybatis.SqlSessionBean;

public class categoryDao {
	private static categoryDao dao = new categoryDao();
	SqlSessionFactory sqlFactory = SqlSessionBean.getSessionFactory();

	private categoryDao() { }
	public static categoryDao getInstance() {
		return dao;
	}
}

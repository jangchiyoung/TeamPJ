package com.jcpdev.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jcpdev.mybatis.SqlSessionBean;

public class mailDao {
	private static mailDao dao = new mailDao();
	SqlSessionFactory sqlFactory = SqlSessionBean.getSessionFactory();
	
	private mailDao() { }
	public static mailDao getInstance() {
		return dao;
	}
	
	
}
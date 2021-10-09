package com.jcpdev.dao;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jcpdev.mybatis.SqlSessionBean;

public class productDao {
	private static productDao dao = new productDao();
	SqlSessionFactory sqlFactory = SqlSessionBean.getSessionFactory();
	
	private productDao() { }
	public static productDao getInstance() {
		return dao;
	}
	
	
}


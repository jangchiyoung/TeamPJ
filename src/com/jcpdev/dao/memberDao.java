package com.jcpdev.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jcpdev.dto.memberDto;
import com.jcpdev.mybatis.SqlSessionBean;

public class memberDao {
	private static memberDao dao = new memberDao();
	SqlSessionFactory sqlFactory = SqlSessionBean.getSessionFactory();

	private memberDao() {
		
	}
	public static memberDao getInstance() {
		return dao;
	}
	
	//회원가입 데이터 추가
	public void insert(memberDto dto) {
		SqlSession mapper = sqlFactory.openSession();
		mapper.insert("memberDto.insert", dto);
		mapper.commit();
		mapper.close();
	}
	//로그인
	public memberDto login(Map<String,String> map) {
		memberDto result = null;
		SqlSession mapper = sqlFactory.openSession();
		result = mapper.selectOne("memberDto.loginCheck", map);
		mapper.close();
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public memberDto passwordCheck(Map<String,Object> map) {
		SqlSession mapper = sqlFactory.openSession();
		memberDto dto = mapper.selectOne("passwordCheck",map);
		mapper.close();
		return dto;
	}
	
}

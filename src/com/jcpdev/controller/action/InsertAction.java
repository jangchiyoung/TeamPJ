package com.jcpdev.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jcpdev.dao.memberDao;
import com.jcpdev.dto.memberDto;

public class InsertAction implements Action {

	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws javax.servlet.ServletException ,java.io.IOException {

		//테이블 insert 
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name =request.getParameter("name");
		String tel =request.getParameter("tel");
		String email =request.getParameter("email");
		String address = request.getParameter("address");

		memberDto dto = new memberDto();
		dto.setId(id);
		dto.setName(name);
		dto.setPassword(password);
		dto.setTel(tel);
		dto.setEmail(email);
		dto.setAddress(address);
		memberDao dao = memberDao.getInstance();
		dao.insert(dto);
//		response.sendRedirect("listAction.jsp");
		ActionForward foward = new ActionForward();
		foward.isRedirect = true;
		foward.url="index.do";
		return foward;
	};
}
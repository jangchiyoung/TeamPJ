package com.jcpdev.controller.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jcpdev.dao.MemberDao;
import com.jcpdev.dto.Member;

public class Update_password implements Action {

	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException ,java.io.IOException {

		//테이블 insert
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String member_id =request.getParameter("id");
		String member_password =request.getParameter("password");
		String member_tel =request.getParameter("tel");
		String member_email =request.getParameter("email");
		System.out.println("아이디"+member_id);
		System.out.println("비밀번호"+member_password);
		System.out.println("전화번호"+member_tel);
		System.out.println("이메일"+member_email);
		if(session.getAttribute("readIdx") ==null){
			StringBuilder readIdx=new StringBuilder("/");
			session.setAttribute("readIdx", readIdx);
		}
		Member dto = new Member();
		dto.setMember_id(member_id);
		dto.setMember_tel(member_tel);
		dto.setMember_email(member_email);
		dto.setMember_password(member_password);

		MemberDao dao = MemberDao.getInstance();
		dao.update_password(dto);
		
		//2) db 테이블 select 쿼리 실행	
		ActionForward foward = new ActionForward();
		foward.isRedirect = true;
		foward.url="login.do";
		return foward;
	};
}
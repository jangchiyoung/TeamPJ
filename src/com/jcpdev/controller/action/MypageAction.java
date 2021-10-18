package com.jcpdev.controller.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jcpdev.dao.MemberDao;
import com.jcpdev.dto.Member;

public class MypageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String member_id =request.getParameter("id");
		String member_name =request.getParameter("name");
		String member_password =request.getParameter("password");
		String member_tel =request.getParameter("tel");
		String member_email =request.getParameter("email");
		String member_address =request.getParameter("address");
		String member_img1 =request.getParameter("img1");
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
		dto.setMember_password(member_password);
		dto.setMember_name(member_name);
		dto.setMember_tel(member_tel);
		dto.setMember_email(member_email);
		dto.setMember_address(member_address);
		dto.setMember_img1(member_img1);
		MemberDao dao = MemberDao.getInstance();
		dao.update_myprofile(dto);
		
		ActionForward foward = new ActionForward();
		foward.isRedirect = true;
		foward.url = "/view/mypage.jsp";
		return foward;
	}

}
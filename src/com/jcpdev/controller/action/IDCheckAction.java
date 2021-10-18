package com.jcpdev.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jcpdev.dao.MemberDao;
import com.jcpdev.dto.Member;

public class IDCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String id=request.getParameter("id");
		System.out.println(id);
		
		if(session.getAttribute("readIdx") ==null){
			StringBuilder readIdx=new StringBuilder("/");
			session.setAttribute("readIdx", readIdx);
		}
		
		MemberDao dao = MemberDao.getInstance();
		Member user_check = dao.idCheck(id);
		System.out.println(user_check);
		if(user_check ==null){
				request.setAttribute("message", "이미 사용중인 아이디입니다.");
				request.setAttribute("url", "join.do");
			}else {
				request.setAttribute("message", "사용가능한 아이디입니다.");
				request.setAttribute("url", "join.do");   //변경
			}
		
		ActionForward foward = new ActionForward();
		foward.isRedirect = false;
		foward.url="error/alert.jsp";
		return foward;
	}

}
package com.jcpdev.controller.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jcpdev.dao.MemberDao;
import com.jcpdev.dto.Member;

public class find_passwordAction implements Action {

	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException ,java.io.IOException {

		//테이블 insert
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		String id =request.getParameter("id");
		String tel =request.getParameter("tel");
		String email =request.getParameter("email");
		
		if(session.getAttribute("readIdx") ==null){
			StringBuilder readIdx=new StringBuilder("/");
			session.setAttribute("readIdx", readIdx);
		}
		Map<String,String> map = new HashMap<>();
		map.put("id",id);
		map.put("tel",tel);
		map.put("email",email);
		System.out.println(map);
		MemberDao dao = MemberDao.getInstance();
		Member user_check = dao.findPassword(map);
		
		//2) db 테이블 select 쿼리 실행	
		Member find_password = user_check;
		if(find_password != null){
			session.setAttribute("user_password",find_password.getMember_password());
		}
		ActionForward foward = new ActionForward();
		foward.isRedirect = true;
		foward.url="community/find_password_C.jsp";
		return foward;
	};
}
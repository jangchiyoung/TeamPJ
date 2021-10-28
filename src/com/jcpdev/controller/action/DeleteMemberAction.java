package com.jcpdev.controller.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jcpdev.dao.MemberDao;

public class DeleteMemberAction implements Action {

	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws javax.servlet.ServletException, java.io.IOException {

		// 테이블 insert
		request.setCharacterEncoding("UTF-8");
		String member_id = request.getParameter("member_id");
		MemberDao dao = MemberDao.getInstance();
		dao.delete_member(member_id);
		ActionForward foward = new ActionForward();
		if(member_id==null) {
			request.setAttribute("message", "회원 삭제 실패!!");
			foward.isRedirect = false;
			foward.url = "error/alert.jsp";
			return foward;
		}
		request.setAttribute("message", "회원 삭제 성공!!");
		
		foward.isRedirect = true;
		foward.url = "./admin_memberList.do";
		return foward;
		
	};
}
package com.jcpdev.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jcpdev.dao.MemberDao;
import com.jcpdev.dto.Member;

public class GetMemberList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 판매내역 가져오기
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");

		MemberDao mdao = MemberDao.getInstance();
		List<Member> user = mdao.getMemberList();
		List<Member> Wuser = mdao.getWithdrawalMemberList();

		request.setAttribute("list", user);
		request.setAttribute("Wuser", Wuser);
		ActionForward foward = new ActionForward();
		foward.isRedirect = false;
		foward.url = "./view/admin/admin-member.jsp";
		return foward;
	}

}
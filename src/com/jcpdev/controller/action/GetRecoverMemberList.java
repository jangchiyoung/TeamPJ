package com.jcpdev.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jcpdev.dao.MemberDao;
import com.jcpdev.dto.Member;

public class GetRecoverMemberList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 판매내역 가져오기
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");

		MemberDao mdao = MemberDao.getInstance();
		List<Member> user = mdao.getWithdrawalMemberList();

		request.setAttribute("list", user);
		ActionForward foward = new ActionForward();
		foward.isRedirect = false;
		foward.url = "./admin_member.jsp";
		return foward;
	}

}
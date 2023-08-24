package com.fornula.domain.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.fornula.domain.member.dto.Member;
import com.fornula.domain.util.session.SessionConst;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class AdminAuthInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler
			)
			throws Exception {

		HttpSession session = request.getSession(false);
		Member loginMember = (Member) session.getAttribute(SessionConst.Login_Member);

		if (loginMember.getMemberStatus() != 9) {
			log.info("�����ڰ� �ƴ� ��� ��û");

			response.sendError(HttpServletResponse.SC_FORBIDDEN);

			return false;

		}
		String requestURI = request.getRequestURI();
		log.info("requestURI= {}",requestURI);

		response.sendRedirect(requestURI);
		return true;
	}
}

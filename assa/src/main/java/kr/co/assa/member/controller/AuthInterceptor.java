package kr.co.assa.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
//스프링 환경 설정에 등록

import kr.co.assa.repository.domain.Member;



/**
 * 
 *  로그인이 될 경우, 안 될 경우의 처리
 *  resources => config => spring => spring-mvc.xml <mvc:interceptors>부분 참고
 *
 */
public class AuthInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//세션에서 로그인한 사용자의 정보 얻기 
		HttpSession session = request.getSession();
		Member m =(Member)session.getAttribute("member");
		//만약 로그인한 사용자의 정보가 나온다면 트루를 리턴
		if(m != null) {
			return true;
		}
		//만약 로그인한 사용자의 정보가 나오지 않는다면 경고문구와 함께 loginForm.do으로 이동
		System.out.println("로그인 되어야 합니다.");
		response.sendRedirect("login/login.k");
		return false;
	
	}
	

}

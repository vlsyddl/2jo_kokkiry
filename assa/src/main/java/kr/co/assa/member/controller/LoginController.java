package kr.co.assa.member.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.assa.repository.domain.Member;
import kr.co.assa.repository.mapper.MemberMapper;

@Controller
public class LoginController {
	
	@Autowired
	MemberMapper mapper;
	
	
	@RequestMapping("/login.k")
	public void loginFrom() {
	}
	
	@RequestMapping("/loginVerify.k")
	public String loginVerify(Member member, Model model, HttpServletRequest request) {
	try {
		Member m = mapper.login(member);
		if(m.getUserEmail()!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", m);
			return "redirect:/main.k";
		}
    } catch (NullPointerException npe) {}
	return "redirect:/login.k";	
	}
	
	@RequestMapping("/findPass.k")
	public String findPass() {
		return "redirect:/login.k";
	}
	
	@RequestMapping("/PassVerify.k")
	public int passVerify(Member member) throws Exception {
		int n =  mapper.selectFindPass(member);
		if(n==1) {
			MailSubmit mailsumit = new MailSubmit();
			mailsumit.mailSender();
		}
		return n;
	}
	
	@RequestMapping("/PassModify.k")
	public void passModify(Member member) {
		System.out.println("비밀번호 수정");
		mapper.insertFindPass(member);
	}
	
	
	/* 임시 session사용 테스트
	@RequestMapping("/main.k")
	public void main(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("member");
		System.out.println(m.getUserEmail());
		System.out.println(m.getNickname());
	}*/
	
	
	
	
	
}

package kr.co.assa.member.controller;



import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import kr.co.assa.repository.domain.Member;
import kr.co.assa.repository.mapper.MemberMapper;
@Controller
@RequestMapping("/mypage")
public class MyPageController {
	
	@Autowired
	MemberMapper mapper;
	
	@Autowired
	MailSubmit mailsumit;
	
	@Autowired
	Encryption encryption;


	
	
	
	/**  회원정보 수정    */
	@RequestMapping("/mypage.k")
	public String mypage() {
		return "mypage";
	}
	@ResponseBody
	@RequestMapping("/mymember.k")
	public Member myMember(HttpSession session)	{
		return mapper.selectMember(((Member)session.getAttribute("member")).getUserNo());
	}
	
	
	@RequestMapping("/mypageUpload.k")
	@ResponseBody
	public int mypageUpdate(Member member, Model model, HttpSession session, HttpServletRequest request) {
		member.setPhone(String.join("", member.getNphone()));
		member.setBirth(String.join("",member.getNbirth()));	
		member.setUserNo(((Member)session.getAttribute("member")).getUserNo());
		member.setPassword(encryption.encrypt(member.getPassword()));
		
		int cnt = mapper.updateMember(member);
		if(!(member.getRePassword().isEmpty())) {
			member.setRePassword(encryption.encrypt(member.getRePassword()));
			 cnt = mapper.updateMember2(member);
		}
		return cnt;
	}
	
	
	@RequestMapping("/profile.k")
	@ResponseBody
	public String fileUpload(MultipartFile file, HttpSession session) throws Exception{

		Member member = new Member();
		String Fname= file.getOriginalFilename();
		String ext= Fname.substring(Fname.indexOf("."), Fname.length());
		
		
		member.setProfilePath("/img/profile");
		Fname = UUID.randomUUID().toString()+ext;
		member.setProfileName(Fname);
		member.setUserNo(((Member)session.getAttribute("member")).getUserNo());
		file.transferTo(new File("C:\\app\\tomcat_workspace\\assa\\img\\profile", Fname));
		return "success";
	}
	
	
	@RequestMapping("/passwordVerify.k")
	@ResponseBody
	public Member passwordVerify(Member member) throws Exception {
		return mapper.selectFindPass(member);
	}
	
	
	
	
	
	/**  로그아웃    */	
	@RequestMapping("/logout.k")
	public void logout(HttpServletRequest request) {
		request.getSession().invalidate();	
	}
	
	

	
}

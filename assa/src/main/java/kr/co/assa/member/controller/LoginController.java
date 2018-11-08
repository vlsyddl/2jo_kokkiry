package kr.co.assa.member.controller;



import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
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
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	MemberMapper mapper;
	
	@Autowired
	MailSubmit mailsumit;
	
	@Autowired
	Encryption encryption;

	/**  로그인    */

	@RequestMapping("/login.k")
	public String login() {
		return "login";
	}
	
	@ResponseBody
	@RequestMapping("/loginVerify.k")
	public Member loginVerify(Member member,  HttpSession session) {
		member.setPassword(encryption.encrypt(member.getPassword()));
		session.setAttribute("member", mapper.login(member));
		return mapper.login(member);
	}
	
	
	
	
	
	
	
	
	
	/**  비밀번호 찾기    */
	@ResponseBody
	@RequestMapping("/userVerify.k")
	public int userVerify(Member member ) throws Exception {
		Member m =  mapper.selectFindPass(member);
		int cnt = 0;
		if(!(m.getUserEmail().isEmpty())) {
			String mailcode = mailsumit.mailSender("findpass", m.getUserEmail());
			member.setPassword(mailcode);
			member.setPassword(encryption.encrypt(mailcode));
			cnt= mapper.updateFindPass(member);
		}
		//return "/login.k";
		return cnt;
	}
	
	
	
	@ResponseBody
	@RequestMapping("/passVerify.k")
	public Member passVerify(Member member, String emailVerify) {
		System.out.println(emailVerify);
		member.setPassword(encryption.encrypt(emailVerify));
		return mapper.selectFindPassByCode(member);
	}
	

	
	@ResponseBody
	@RequestMapping("/PassModify.k")
	public int passModify(Member member, String password) {
		int cnt= 0;
		member.setPassword(encryption.encrypt(password));
		cnt= mapper.updateFindPass(member);
		return cnt;
	}
	
	
	
	
	
	
	
	
	
	
	
	/**  회원가입    */
	@ResponseBody
	@RequestMapping("/signup.k")
	public void signup(Member member) {
		member.setPhone(String.join("", member.getNphone()));
		member.setBirth(String.join("",member.getNbirth()));	
		member.setPassword(encryption.encrypt(member.getPassword()));
		member.setProfileName("/img");
		if(member.getGender()=="M") {
			member.setProfileName("male-avatar.png");
		}else {
			member.setProfileName("fmale-avatar.png");
		}
		mapper.insertMemer(member);
	}
	
	@ResponseBody
	@RequestMapping("/uniqueEmail.k")
	public Member UniqueEmail(String userEmail) {
		System.out.println(userEmail);
		return mapper.selectByUserEamil(userEmail);
	}
	
	@ResponseBody
	@RequestMapping("/uniqueNickname.k")
	public Member UniqueNickname(String nickname) {
		return mapper.selectByNickname(nickname);
	}
	
	
	
	
	
	
	
	
}

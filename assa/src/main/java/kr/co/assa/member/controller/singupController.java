package kr.co.assa.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/singup")
public class singupController {
	@RequestMapping("/singup.do")
	public void singup() {
		Encryption en = new Encryption();
		en.encrypt("spring0809@");
	}
	

	@RequestMapping("/NewFile.do")
	public void newfile() {}
	
	
}

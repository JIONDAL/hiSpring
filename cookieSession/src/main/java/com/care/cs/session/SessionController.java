package com.care.cs.session;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SessionController {
	@Autowired 
	private HttpSession session;
	
	@RequestMapping("session/index")
	public void index() {}
	
	@GetMapping("session/login")
	public void login() {}
	
	@PostMapping("session/login")
	public String login(String id, String pw) {
		if("admin".equals(id) && "1234".equals(pw)) {
			session.setAttribute("id", "admin");
			return "redirect:index";
		}
		return "session/login";
	}
	
	@RequestMapping("session/logout")
	public String logout( Model model) {
		session.removeAttribute("id");
//		session.invalidate();
//		return "redirect:index";
		model.addAttribute("msg", "로그 아웃");
		model.addAttribute("path", "index");
		return "session/logout";
	}
}









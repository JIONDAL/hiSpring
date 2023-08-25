package com.care.cs.cookie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CookieController {
	/*
	 http://localhost:8086/cs/index
	 http://localhost:8086/cs/cookie/index
	 */
	@GetMapping("cookie/index")
	public String index(HttpServletResponse res) {
		Cookie cookie = new Cookie("cookieName", "cookieValue");
		res.addCookie(cookie);
		return "cookie/index";
	}
	
	@GetMapping("cookie/result")
	public String result() {
		return "cookie/result";
	}
	@GetMapping("cookie/result2")
	public String result2(HttpServletRequest req) {
		Cookie[] cookies = req.getCookies();
		for(Cookie cookie : cookies) {
			System.out.println("==================================");
			System.out.println("쿠키 이름 : " + cookie.getName());
			System.out.println("쿠키 값 : " + cookie.getValue());
		}
		return "cookie/result";
	}
	
	@GetMapping("cookie/result3")
	public String result3(
			@CookieValue(value = "cookieName", required = false)Cookie cookie) {
		if(cookie != null) {
			System.out.println("쿠키 이름 : " + cookie.getName());
			System.out.println("쿠키 값 : " + cookie.getValue());
		}
		return "cookie/result";
	}
}














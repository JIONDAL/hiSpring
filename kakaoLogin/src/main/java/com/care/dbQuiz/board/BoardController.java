package com.care.dbQuiz.board;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class BoardController {
	@Autowired private BoardService service;
	@Autowired private HttpSession session;
	
	@RequestMapping("boardForm")
	public String boardForm(
			@RequestParam(value="currentPage", required = false)String cp,
			Model model) {
		System.out.println("호출되는거야?");
		service.boardForm(cp, model);
		return "board/boardForm";
	}
	
}
























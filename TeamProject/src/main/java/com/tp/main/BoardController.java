package com.tp.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tp.vo.BoardVO;


@Controller
@RequestMapping("/board")
public class BoardController {
	
	@RequestMapping("/list")
	public String list(Model model) {
		return "board/list";
	}
	
	//게시글 등록 폼 페이지
	@RequestMapping(value = "/register", method=RequestMethod.GET)
//	@GetMapping("/register")윗줄의 코드와 같음
	public String register() {
		//게시물 정보 입력 폼태그로 이동
		return "board/register";
	}
	
//	//게시글 등록
//	@RequestMapping(value = "/register", method=RequestMethod.POST)
//	public String register(BoardVO vo) {
//		//게시글 등록 처리
//		boardService.register(vo);
//		
//		return "redirect:/board/list";
//	}
	
}

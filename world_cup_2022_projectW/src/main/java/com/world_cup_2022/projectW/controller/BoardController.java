package com.world_cup_2022.projectW.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.world_cup_2022.projectW.model.BoardVO;
import com.world_cup_2022.projectW.model.MemberVO;
import com.world_cup_2022.projectW.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	// 상품 등록
		@RequestMapping("/menu/insertBoard")
		public String insertBoard(BoardVO vo) { // 커맨드 객체를 통해 자동으로 VO에 저장
			// 서비스를 통해서 DB에 저장
			service.insertBoard(vo);
			// DB 저장 후 전제 상품 조회 화면으로 포워딩  
			return "redirect:/menu/board"; // -> @RequestMapping("/product/productListAll")
		}
		@RequestMapping("/menu/getinfo")
		public String getinfo(@RequestParam String memId,
							  @RequestParam String boardNo,
											Model model) {
			MemberVO memVo = service.getMemberInfo(memId);
			BoardVO boVo = service.getBoardInfo(boardNo);
			return "menu/boardResultView";
		}
}

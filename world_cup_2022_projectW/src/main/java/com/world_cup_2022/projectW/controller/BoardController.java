package com.world_cup_2022.projectW.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.world_cup_2022.projectW.model.BoardVO;
import com.world_cup_2022.projectW.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;

	@RequestMapping("/menu/boardList")
	public String insert(@RequestParam String boardText, Model model, HttpSession session) {

		String memId = (String) session.getAttribute("sid");

		if (memId != null) {

			service.insertBoardText(memId, boardText);

			ArrayList<BoardVO> brdList = service.boardView();
			model.addAttribute("brdList", brdList);

			return "menu/board";
		} else {
			return "redirect:/member/login";
		}
	}
}

package com.world_cup_2022.projectW.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world_cup_2022.projectW.model.BoardVO;
import com.world_cup_2022.projectW.service.BoardService;

@Controller
public class HomeController {
	
	@Autowired
	BoardService service;
	
	// index 페이지 열기
	@RequestMapping("/")
	public String index() {

		return "mainIndex";
	}

	@RequestMapping("/menu/cheerWall")
	public String cheerBox() {

		return "menu/cheerWall";
	}

	@RequestMapping("/menu/match")
	public String match() {

		return "menu/match";
	}

	@RequestMapping("/member/signUp")
	public String signUp() {

		return "member/signUp";
	}
	
	@RequestMapping("/member/login")
	public String login() {

		return "member/login";
	}
	
	@RequestMapping("/menu/korTeam")
	public String korTeam() {

		return "menu/korTeam";
	}
	
	@RequestMapping("/menu/prize")
	public String prize() {
		
		return "menu/prize";
	}
	
	@RequestMapping("/menu/admin/6767")
	public String admin() {
		
		return "menu/admin";
	}

	@RequestMapping("/menu/board")
	public String board(Model model) {
		
		ArrayList<BoardVO> brdList = service.boardView();
		model.addAttribute("brdList", brdList);
		
		return "menu/board";
	}
}

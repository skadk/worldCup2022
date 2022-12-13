package com.world_cup_2022.projectW.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.world_cup_2022.projectW.model.MatchVO;
import com.world_cup_2022.projectW.service.MatchService;

@Controller
public class MatchController {
	@Autowired
	private MatchService service;
	
	@RequestMapping("/menu/match")
	public String match() {

		return "menu/match";
	}

	// 승부예측 추가
	@RequestMapping("/match/insert")
	public String insert(MatchVO vo,
						 @RequestParam("bet1") int bet1) {
		
		vo.setMatch1(bet1);
		service.insertChoice(vo);
	
		return "menu/match"; // 승부예측 추가 후 match 페이지
	}
}

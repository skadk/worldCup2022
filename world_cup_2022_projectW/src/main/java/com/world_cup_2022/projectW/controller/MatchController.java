package com.world_cup_2022.projectW.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.world_cup_2022.projectW.model.MatchResultVO;
import com.world_cup_2022.projectW.model.MatchVO;
import com.world_cup_2022.projectW.service.MatchService;

@Controller
public class MatchController {
	@Autowired
	private MatchService service;

	// 승부예측 추가
	@RequestMapping("/match/insert")
	public String insert(MatchVO vo,
						 @RequestParam("matchNo") int matchNo,
						 @RequestParam("matchNation1") int matchNation1,
						 @RequestParam("matchNation2") int matchNation2,
						 HttpSession session) {
		vo.setMatchNo(matchNo);
		vo.setMatchNation1(matchNation1);
		vo.setMatchNation2(matchNation2);
		vo.setMemId((String)session.getAttribute("sid"));
		
		String memId = (String)session.getAttribute("sid");
		
		int check = service.checkChoice(vo.getMatchNo(), memId);
		
		if (check == 0) {
			service.insertChoice(vo);
		} else {
			service.updateChoice(vo);
		}
		return "menu/match"; // 승부예측 추가 후 match 페이지
	}
	
	@RequestMapping("/match/pointGive")
	public String pointGive(Model model,
							MatchResultVO vo) {
		
		ArrayList<MatchResultVO> mrList = service.matchResultView();
		model.addAttribute("mrList", mrList);
		
		// service.matchFind(vo.getMatchNo());
		
		System.out.println(mrList.get(0).getMatchNo());
		System.out.println(mrList.get(0).getMatchNation1());
		System.out.println(mrList.get(0).getMatchNation2());
		System.out.println(mrList.get(1).getMatchNo());
		System.out.println(mrList.get(1).getMatchNation1());
		System.out.println(mrList.get(1).getMatchNation2());
		System.out.println(mrList.get(2).getMatchNo());
		System.out.println(mrList.get(2).getMatchNation1());
		System.out.println(mrList.get(2).getMatchNation2());
		System.out.println("01231564");

		return "menu/match";
	}
}

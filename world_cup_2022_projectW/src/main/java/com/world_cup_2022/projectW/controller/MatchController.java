package com.world_cup_2022.projectW.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world_cup_2022.projectW.model.MatchResultVO;
import com.world_cup_2022.projectW.model.MatchVO;
import com.world_cup_2022.projectW.model.MemberVO;
import com.world_cup_2022.projectW.service.MatchService;
import com.world_cup_2022.projectW.service.PointService;

@Controller
public class MatchController {
	@Autowired
	private MatchService service;
	
	@Autowired
	private PointService pservice;

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
		
		return "menu/match";
	}
	
	// 승부예측 추가
	@ResponseBody
	@RequestMapping("/match/percent1")
	public int percent1(MatchVO vo,
			@RequestParam("matchNo") int matchNo,
			@RequestParam("matchNation1") int matchNation1,
			@RequestParam("matchNation2") int matchNation2,
			HttpSession session) {
		vo.setMatchNo(matchNo);
		vo.setMatchNation1(matchNation1);
		vo.setMatchNation2(matchNation2);
		vo.setMemId((String)session.getAttribute("sid"));
		
		int percent1 = service.match1Percent1(vo.getMatchNo(), 2);
		int percent2 = service.match1Percent2(vo.getMatchNo(), 1);
		int percent3 = service.match1Percent3(vo.getMatchNo(), 0);
		
		int percent1_1 = ((percent1 * 100)/(percent1+percent2+percent3));
		
		return percent1_1; // 승부예측 추가 후 match 페이지
	}
	
	// 승부예측 추가
	@ResponseBody
	@RequestMapping("/match/percent2")
	public int percent2(MatchVO vo,
			@RequestParam("matchNo") int matchNo,
			@RequestParam("matchNation1") int matchNation1,
			@RequestParam("matchNation2") int matchNation2,
			HttpSession session) {
		vo.setMatchNo(matchNo);
		vo.setMatchNation1(matchNation1);
		vo.setMatchNation2(matchNation2);
		vo.setMemId((String)session.getAttribute("sid"));
		
		int percent1 = service.match1Percent1(vo.getMatchNo(), 2);
		int percent2 = service.match1Percent2(vo.getMatchNo(), 1);
		int percent3 = service.match1Percent3(vo.getMatchNo(), 0);
		
		int percent2_1 = ((percent2 * 100)/(percent1+percent2+percent3));
		
		return percent2_1; // 승부예측 추가 후 match 페이지
	}
	
	// 승부예측 추가
	@ResponseBody
	@RequestMapping("/match/percent3")
	public int percent3(MatchVO vo,
			@RequestParam("matchNo") int matchNo,
			@RequestParam("matchNation1") int matchNation1,
			@RequestParam("matchNation2") int matchNation2,
			HttpSession session) {
		vo.setMatchNo(matchNo);
		vo.setMatchNation1(matchNation1);
		vo.setMatchNation2(matchNation2);
		vo.setMemId((String)session.getAttribute("sid"));
		
		int percent1 = service.match1Percent1(vo.getMatchNo(), 2);
		int percent2 = service.match1Percent2(vo.getMatchNo(), 1);
		int percent3 = service.match1Percent3(vo.getMatchNo(), 0);
			
		int percent3_1 = ((percent3 * 100)/(percent1+percent2+percent3));
		
		return percent3_1; // 승부예측 추가 후 match 페이지
	}
	
	@RequestMapping("/match/pointGive")
	public String pointGive(Model model,
							MatchResultVO vo) {
		int pointAdd = 2000;
		String pointDescription = "승부예측 성공 포인트";
		
		ArrayList<MatchResultVO> mrList = service.matchResultView();
		model.addAttribute("mrList", mrList);
		
		for (int j=0; j < mrList.size(); j++) {
		ArrayList<MemberVO> memList  = service.matchFind(mrList.get(j).getMatchNo(),
														 mrList.get(j).getMatchNation1());
		
			for (int i=0; i< memList.size(); i++ ) {
				MemberVO mem = memList.get(i);
				
				pservice.changePoint(mem.getMemId(), pointAdd, pointDescription);
				pservice.updatePoint(mem.getMemId(), pointAdd);
				System.out.println(mem.getMemId());
			}
		}

		return "menu/match";
	}
}

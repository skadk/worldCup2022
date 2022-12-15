package com.world_cup_2022.projectW.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world_cup_2022.projectW.service.PointService;

@Controller
public class PrizeController {
	
	@Autowired
	private PointService pservice;
	
	@ResponseBody
	@RequestMapping("/menu/prizeRaffle500")
	public String prizeRaffle500(HttpSession session) {
		
		int pointUsed = 500;
		String result = "fail";
		
		String memId = (String)session.getAttribute("sid");
		
		int pointTotal = pservice.pointTotalCheck(memId);
		
		if(pointTotal >= pointUsed) {
			
			String pointDescription = "경품 응모";
			
			pservice.changePoint2(memId, pointUsed, pointDescription);
			pservice.updatePoint2(memId, pointUsed);
			
			result = "success";
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/menu/prizeRaffle1000")
	public String prizeRaffle1000(HttpSession session) {
		
		int pointUsed = 1000;
		String result = "fail";
		
		String memId = (String)session.getAttribute("sid");
		
		int pointTotal = pservice.pointTotalCheck(memId);
		
		if(pointTotal >= pointUsed) {
			
			String pointDescription = "경품 응모";
			
			pservice.changePoint2(memId, pointUsed, pointDescription);
			pservice.updatePoint2(memId, pointUsed);
			
			result = "success";
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/menu/prizeRaffle10000")
	public String prizeRaffle10000(HttpSession session) {
		
		int pointUsed = 10000;
		String result = "fail";
		
		String memId = (String)session.getAttribute("sid");
		
		int pointTotal = pservice.pointTotalCheck(memId);
		
		if(pointTotal >= pointUsed) {
			
			String pointDescription = "경품 응모";
			
			pservice.changePoint2(memId, pointUsed, pointDescription);
			pservice.updatePoint2(memId, pointUsed);
			
			result = "success";
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/menu/prizeRaffle20000")
	public String prizeRaffle20000(HttpSession session) {
		
		int pointUsed = 20000;
		String result = "fail";
		
		String memId = (String)session.getAttribute("sid");
		
		int pointTotal = pservice.pointTotalCheck(memId);
		
		if(pointTotal >= pointUsed) {
			
			String pointDescription = "경품 응모";
			
			pservice.changePoint2(memId, pointUsed, pointDescription);
			pservice.updatePoint2(memId, pointUsed);
			
			result = "success";
		}
		
		return result;
	}
	
}

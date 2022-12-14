package com.world_cup_2022.projectW.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world_cup_2022.projectW.model.MemberVO;
import com.world_cup_2022.projectW.service.MyPageService;

@Controller
public class MyPageController {
	@Autowired
	 private MyPageService service;
	
	/* ----------------------------------*/
	/* 회원정보보기 */
	
	// http://localhost:8080/myPage/detailViewMyPage/{memId}
	@RequestMapping("/myPage/main")
	public String index() {

		return "myPage/main";
	}
	
	@RequestMapping("/myPage/detailViewMyPage/{memId}")
    public String detailViewProduct(@PathVariable String memId, Model model) {
    MemberVO mem= service.detailViewMyPage(memId);
    model.addAttribute("mem", mem);
    	
    	return "myPage/info";
    }    
}

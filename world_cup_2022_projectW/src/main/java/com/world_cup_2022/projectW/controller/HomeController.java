package com.world_cup_2022.projectW.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	// index 페이지 열기
	@RequestMapping("/")
	public String index() {
		
		return "mainindex";
	}
	
	@RequestMapping("/cheerWall")
	public String cheerBox() {
		
		return "cheerWall";
	}
	
	@RequestMapping("/match")
	public String match() {
		
		return "match";
	}
	
	@RequestMapping("/signUp")
	public String signUp() {
		
		return "signUp";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		return "login";
	}
}

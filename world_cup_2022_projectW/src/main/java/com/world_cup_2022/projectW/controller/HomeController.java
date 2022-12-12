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
	// match 페이지 열기
	@RequestMapping("/match")
	public String match() {
		
		return "match";
	}
	
	@RequestMapping("/cheerwall")
	public String cheerBox() {
		
		return "cheerWall";
	}
}

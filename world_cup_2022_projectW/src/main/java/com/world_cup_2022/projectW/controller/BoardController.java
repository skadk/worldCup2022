package com.world_cup_2022.projectW.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.world_cup_2022.projectW.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	
}

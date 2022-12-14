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

	/* ---------------------------------- */
	/* 회원정보보기 */

	// http://localhost:8080/myPage/detailViewMyPage/{memId}

	@RequestMapping("/myPage/detailViewMyPage/{memId}")
	public String detailViewProduct(@PathVariable String memId, Model model) {
		MemberVO mem = service.detailViewMyPage(memId);
		model.addAttribute("mem", mem);

		return "myPage/info";
	}

	@RequestMapping("/myPage/updateMyPageForm/{memId}") public String
	  updateProductForm(@PathVariable String memId, Model model) { // 서비스에게 상품번호
	  //전달하고 상품 정보 받아옴
	  MemberVO mem = service.detailViewMyPage(memId);
	  model.addAttribute("mem", mem); return "myPage/MyPageUpdateForm"; }

	// 상품 정보 수정 : 수정된 데이터 DB에 저장

//	@RequestMapping("/myPage/updateMyPage") public String updateMyPage(MemberVO
//	  mem) { service.updateMyPage(mem); // 수정된 데이터 저장 후 상품 조회 화면으로 포워딩 return
//	  "redirect:/myPage/info"; // -> 위에
//	  있는 @RequestMapping("/product/productListAll") }

}

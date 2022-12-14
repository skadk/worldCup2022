package com.world_cup_2022.projectW.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.world_cup_2022.projectW.model.MemberVO;
import com.world_cup_2022.projectW.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;

	// 비밀번호 암호화 한 경우의 로그인 처리 방식
	@ResponseBody
	@RequestMapping("/member/eqlogin")
	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session) {
		// 로그인 체크 결과
		String result = service.loginCheck(param);

		// 아이디와 비밀번호 일치하면 (로그인 성공하면) 서비스에서 success 반환
		if (result.equals("success")) {
			// 로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("id"));
		}
		return result;
	}

	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		// 세션 무효화
		session.invalidate();
		return "redirect:/"; // index로 포워딩 -> HomeController에 있는 @RequestMapping("/")
	}

	// 회원가입
	@RequestMapping("/member/insert")
	public String insert(MemberVO vo) {
		service.insertMember(vo);
		service.insertPoint(vo.getMemId());

		return "member/login"; // 회원가입 후 로그인 폼으로 이동
	}
	
	@ResponseBody
	@RequestMapping("/member/memIdCheck")
	public String memIdCheck(@RequestParam("memId") String memId) {
		// 서비스 호출하고 DB에 prdNo 존재하면 prdNo받고, 존재하지 않으면 null받음
		String memId_result = service.memIdCheck(memId);

		String result = "use";
		if (memId_result != null) { // 존재 한다면
			result = "no_use";
		}

		return result;
	}
}

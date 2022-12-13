package com.world_cup_2022.projectW.dao;

import com.world_cup_2022.projectW.model.MemberVO;

public interface IMemberDAO {
	// 비밀번호 암호화 하기 이전에 사용하는 메소드
	// public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	
	public String loginCheck(String id);
}

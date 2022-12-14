package com.world_cup_2022.projectW.dao;

import com.world_cup_2022.projectW.model.MemberVO;

public interface IMemberDAO {
	public void insertMember(MemberVO vo);
	public String loginCheck(String id);
	public String memIdCheck(String memId); // 아이디 중복 확인
	public void insertPoint(String memId);
}

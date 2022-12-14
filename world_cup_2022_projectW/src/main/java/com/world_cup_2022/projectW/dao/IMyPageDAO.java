package com.world_cup_2022.projectW.dao;

import com.world_cup_2022.projectW.model.MemberVO;

public interface IMyPageDAO {
		


	public void updateMyPage(MemberVO mem);
	public MemberVO detailViewMyPage(String memId); // 회원 정보조회
	

	

}

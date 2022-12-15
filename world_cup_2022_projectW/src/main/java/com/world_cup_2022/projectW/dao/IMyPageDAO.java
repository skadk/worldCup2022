package com.world_cup_2022.projectW.dao;

import com.world_cup_2022.projectW.model.MemberVO;

public interface IMyPageDAO {
		


	

	public MemberVO detailViewMyPage(String memId); // 상세 상품 조회
	public void memberDelete(MemberVO vo)throws Exception; //회원 탈퇴

	

}

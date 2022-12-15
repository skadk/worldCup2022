package com.world_cup_2022.projectW.dao;

import com.world_cup_2022.projectW.model.MemberVO;

public interface IMyPageDAO {

	public MemberVO detailViewMyPage(String memId); // 회원 정보조회

	public void updateMyPage(MemberVO mem); // 회원정보조회 수정

}

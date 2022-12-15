package com.world_cup_2022.projectW.service;

import com.world_cup_2022.projectW.model.MemberVO;


public interface IMyPageService {


	

	/* public MemberVO detailViewMyPage(String memId); */// 상세 상품 조회
	
    public MemberVO detailViewMyPage(String memId);

    public void memberDelete(MemberVO vo)throws Exception;
	


	
}
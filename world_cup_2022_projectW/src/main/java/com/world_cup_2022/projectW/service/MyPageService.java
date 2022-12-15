package com.world_cup_2022.projectW.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IMyPageDAO;
import com.world_cup_2022.projectW.model.MemberVO;

@Service
public class MyPageService implements IMyPageService {

	@Autowired
	@Qualifier("IMyPageDAO")
	private IMyPageDAO dao;

	@Override
	public MemberVO detailViewMyPage(String memId) {

		return dao.detailViewMyPage(memId);
	}

	@Override
	public void updateMyPage(MemberVO mem) {
		dao.updateMyPage(mem);
	}





}

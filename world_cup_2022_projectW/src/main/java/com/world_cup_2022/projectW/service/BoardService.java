package com.world_cup_2022.projectW.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IBoardDAO;
import com.world_cup_2022.projectW.model.BoardVO;
import com.world_cup_2022.projectW.model.MemberVO;

@Service
public class BoardService implements IBoardSerivce {
	@Autowired
	@Qualifier("IBoardDAO")
	IBoardDAO dao;

	@Override
	public String insertBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		return dao.insertBoard(vo);
	}

	@Override
	public String deleteBoard(String memId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO getMemberInfo(String memId) {
		// TODO Auto-generated method stub
		return dao.getMemberInfo(memId);
	}

	@Override
	public BoardVO getBoardInfo(String boardNo) {
		
		return dao.getBoardInfo(boardNo);
	}
}

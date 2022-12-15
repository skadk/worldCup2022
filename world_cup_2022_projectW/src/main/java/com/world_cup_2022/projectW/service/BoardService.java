package com.world_cup_2022.projectW.service;

import java.util.ArrayList;
import java.util.HashMap;

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
	public void insertBoardText(String memId, String boardText) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("boardText", boardText);

		dao.insertBoardText(map);
//		String result = dao.selectBoardText(boardText);
		
	}

	@Override
	public ArrayList<BoardVO> boardView() {
		
		return dao.boardView();
	}
	
	

}

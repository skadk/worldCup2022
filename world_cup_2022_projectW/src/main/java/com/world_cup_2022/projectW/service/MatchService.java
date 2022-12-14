package com.world_cup_2022.projectW.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IMatchDAO;
import com.world_cup_2022.projectW.model.MatchResultVO;
import com.world_cup_2022.projectW.model.MatchVO;

@Service
public class MatchService implements IMatchService {

	@Autowired
	@Qualifier("IMatchDAO")
	private IMatchDAO dao;
	
	@Override
	public void insertChoice(MatchVO vo) {
		dao.insertChoice(vo);
	}

	@Override
	public int checkChoice(int matchNo, String memId) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("matchNo", matchNo);
		map.put("memId", memId);

		int result = dao.checkChoice(map);
		
		return result;
	}

	@Override
	public void updateChoice(MatchVO vo) {
		dao.updateChoice(vo);
		
	}

	@Override
	public ArrayList<MatchResultVO> matchResultView() {
		return dao.matchResultView();
	}

}

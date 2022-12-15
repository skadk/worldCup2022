package com.world_cup_2022.projectW.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IMatchDAO;
import com.world_cup_2022.projectW.model.MatchResultVO;
import com.world_cup_2022.projectW.model.MatchVO;
import com.world_cup_2022.projectW.model.MemberVO;

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
	public int match1Percent1(int matchNo, int matchNation1) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("matchNo", matchNo);
		map.put("matchNation1", matchNation1);

		int result = dao.match1Percent1(map);
		
		return result;
	}
	
	@Override
	public int match1Percent2(int matchNo, int matchNation1) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("matchNo", matchNo);
		map.put("matchNation1", matchNation1);
		
		int result = dao.match1Percent1(map);
		
		return result;
	}
	
	@Override
	public int match1Percent3(int matchNo, int matchNation1) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("matchNo", matchNo);
		map.put("matchNation1", matchNation1);
		
		int result = dao.match1Percent1(map);
		
		return result;
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

	@Override
	public ArrayList<MemberVO> matchFind(int matchNo, int matchNation1) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("matchNo", matchNo);
		map.put("matchNation1", matchNation1);

		ArrayList<MemberVO> result = dao.matchFind(map);
		
		return result;

	}

}

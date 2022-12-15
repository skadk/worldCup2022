package com.world_cup_2022.projectW.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.world_cup_2022.projectW.model.MatchResultVO;
import com.world_cup_2022.projectW.model.MatchVO;
import com.world_cup_2022.projectW.model.MemberVO;

public interface IMatchDAO {

	public void insertChoice(MatchVO vo);
	
	public int match1Percent1(HashMap<String, Object> map);
	
	public int match1Percent2(HashMap<String, Object> map);
	
	public int match1Percent3(HashMap<String, Object> map);

	public int checkChoice(HashMap<String, Object> map);

	public void updateChoice(MatchVO vo);
	
	public ArrayList<MatchResultVO> matchResultView();
	
	public ArrayList<MemberVO> matchFind(HashMap<String, Object> map);
}

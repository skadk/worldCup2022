package com.world_cup_2022.projectW.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.world_cup_2022.projectW.model.MatchResultVO;
import com.world_cup_2022.projectW.model.MatchVO;

public interface IMatchDAO {

	public void insertChoice(MatchVO vo);

	public int checkChoice(HashMap<String, Object> map);

	public void updateChoice(MatchVO vo);
	
	public ArrayList<MatchResultVO> matchResultView();
}

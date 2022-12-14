package com.world_cup_2022.projectW.service;

import java.util.ArrayList;

import com.world_cup_2022.projectW.model.MatchResultVO;
import com.world_cup_2022.projectW.model.MatchVO;

public interface IMatchService {
	
	public void insertChoice(MatchVO vo); // 팀 선택했을때 memId불러와서 match 123 123으로 기록

	public int checkChoice(int matchNo, String memId); //중복 체크

	public void updateChoice(MatchVO vo); //선택을 바꿨을 때 memId불러와서 match 123 123으로 기록
	
	public ArrayList<MatchResultVO> matchResultView();
}

//경기 끝나면 point 지급
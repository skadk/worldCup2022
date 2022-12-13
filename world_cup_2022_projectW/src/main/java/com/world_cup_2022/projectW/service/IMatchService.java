package com.world_cup_2022.projectW.service;

import com.world_cup_2022.projectW.model.MatchVO;

public interface IMatchService {
	public void insertChoice(MatchVO vo); //팀 선택했을때 memId불러와서 match 123 123으로 기록
}


//팀 선택했을때 memId불러와서 match 123 123으로 기록
//선택을 바꿨을 때 memId불러와서 match 123 123으로 기록
//중복 체크
//경기 끝나면 point 지급
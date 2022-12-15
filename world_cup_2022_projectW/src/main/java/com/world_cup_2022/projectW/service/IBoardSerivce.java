package com.world_cup_2022.projectW.service;

import java.util.ArrayList;

import com.world_cup_2022.projectW.model.BoardVO;
public interface IBoardSerivce {
	public void insertBoardText(String memId, String boardText); // 글 쓰기
	
	public ArrayList<BoardVO> boardView();

}

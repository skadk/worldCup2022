package com.world_cup_2022.projectW.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.world_cup_2022.projectW.model.BoardVO;

public interface IBoardDAO {
	public void insertBoardText(HashMap<String, Object> map); // 글 쓰기
	
	public ArrayList<BoardVO> boardView();
}

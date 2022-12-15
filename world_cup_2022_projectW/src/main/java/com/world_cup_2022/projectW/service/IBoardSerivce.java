package com.world_cup_2022.projectW.service;

import com.world_cup_2022.projectW.model.BoardVO;

public interface IBoardSerivce {
	public String insertBoard(BoardVO vo); // 글 쓰기
	public String deleteBoard(String memId); // 글 삭제
	public String updateBoard(String memId); // 글 수정
}

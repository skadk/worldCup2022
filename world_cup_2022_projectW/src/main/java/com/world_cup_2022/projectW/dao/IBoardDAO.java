package com.world_cup_2022.projectW.dao;

import com.world_cup_2022.projectW.model.BoardVO;
import com.world_cup_2022.projectW.model.MemberVO;

public interface IBoardDAO {
	public String insertBoard(BoardVO vo); // 글 쓰기
	public String deleteBoard(String memId); // 글 삭제
	public MemberVO getMemberInfo(String memId);//게시판에 출력할 회원정보 받아오기
	public BoardVO getBoardInfo(String boardNo);
}

package com.world_cup_2022.projectW.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IMatchDAO;
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

}

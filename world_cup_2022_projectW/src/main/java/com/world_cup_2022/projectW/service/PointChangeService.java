package com.world_cup_2022.projectW.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IPointChangeDAO;
import com.world_cup_2022.projectW.model.PointChangeVO;

@Service
public class PointChangeService implements IPointChangeService {
	@Autowired
	@Qualifier("IPointChangeDAO")
	IPointChangeDAO dao;
	
	@Override
	public ArrayList<PointChangeVO> pointView(String memId) {
		
		return dao.pointView(memId);
	}

}

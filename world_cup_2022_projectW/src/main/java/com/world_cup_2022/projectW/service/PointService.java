package com.world_cup_2022.projectW.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IPointDAO;

@Service
public class PointService implements IPointService {
	@Autowired
	@Qualifier("IPointDAO")
	IPointDAO dao;
	
	@Override
	public void insertPoint(String memId) {
		dao.insertPoint(memId);
	}

	@Override
	public void insertMemIdPoint(String memId) {
		dao.insertMemIdPoint(memId);
	}
}

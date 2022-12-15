package com.world_cup_2022.projectW.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.world_cup_2022.projectW.dao.IPointDAO;
import com.world_cup_2022.projectW.model.MemberVO;

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

	@Override
	public void changePoint(String memId, int pointAdd, String pointDescription) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("pointAdd", pointAdd);
		map.put("pointDescription", pointDescription);

		dao.changePoint(map);
	}

	@Override
	public void updatePoint(String memId, int pointAdd) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("pointAdd", pointAdd);

		dao.updatePoint(map);
		
	}

	@Override
	public void changePoint2(String memId, int pointUsed, String pointDescription) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("pointUsed", pointUsed);
		map.put("pointDescription", pointDescription);

		dao.changePoint2(map);
		
	}

	@Override
	public void updatePoint2(String memId, int pointUsed) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("pointUsed", pointUsed);

		dao.updatePoint2(map);
		
	}

	@Override
	public int pointTotalCheck(String memId) {
		
		return dao.pointTotalCheck(memId);
	}
}

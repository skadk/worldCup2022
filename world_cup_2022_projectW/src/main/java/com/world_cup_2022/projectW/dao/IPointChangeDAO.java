package com.world_cup_2022.projectW.dao;

import java.util.ArrayList;

import com.world_cup_2022.projectW.model.PointChangeVO;

public interface IPointChangeDAO {
	public ArrayList<PointChangeVO> pointView(String memId);
}

package com.world_cup_2022.projectW.dao;

import java.util.HashMap;

public interface IPointDAO {
	
	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);
	
	public void changePoint(HashMap<String, Object> map);
	
	public void updatePoint(HashMap<String, Object> map);
}

package com.world_cup_2022.projectW.service;

public interface IPointService {

	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);
	
	public void changePoint(String memId, int pointAdd, String pointDescription);
	
	public void updatePoint(String memId, int pointAdd);
}

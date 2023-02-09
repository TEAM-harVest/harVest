package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.ProjectDTO;


public interface ProjectListService {
	
	public List<ProjectDTO> getAllList();
	public int getProjCount();
	public List<ProjectDTO> getCategoryList(String category);
	public int getCateCount(String category);
	public List<ProjectDTO> getNewly();
	public int getNewCount();
	public List<ProjectDTO> getDeadline();
	public int getDeadCount();
	public List<ProjectDTO> getPopular();
	public int getPopCount();
	public List<ProjectDTO> getExpect();
	public int getExpCount();

}

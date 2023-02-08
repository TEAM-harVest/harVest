package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.ProjectDTO;


public interface ProjectListService {
	
	public List<ProjectDTO> getAllProjectList();
	public int getProjectCount();
	public List<ProjectDTO> getCategoryList(String category);
	public int getCategoryCount(String category);

}

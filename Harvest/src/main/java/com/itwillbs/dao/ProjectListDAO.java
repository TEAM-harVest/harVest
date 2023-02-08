package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.ProjectDTO;

public interface ProjectListDAO {
	
	public List<ProjectDTO> getAllProjectList();
	public int getProjectCount();

}

package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AlramDTO;
import com.itwillbs.domain.ProjectDTO;

public interface ProjectListDAO {
	
	public List<ProjectDTO> getProjectList(Map<String, String> param);
	public int getCount(Map<String, String> param);
	
	
	public void updateAlramcount(int idx);
	public List<ProjectDTO> getExpectList(Map<String, String> param);
	
	
	
	
	

}

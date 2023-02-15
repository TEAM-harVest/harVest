package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AlramDTO;
import com.itwillbs.domain.ProjectDTO;

public interface ProjectListDAO {
	
	public List<ProjectDTO> getCategoryList(String category);
	public int getCateCount(String category);
	public void updateAlramcount(int idx);
	
	public int getCount(Map<String, String> param);
	
	public List<ProjectDTO> getProjectList(Map<String, String> param);
	public List<ProjectDTO> getPjList(String search);
	public int getPjCount(String search);

}

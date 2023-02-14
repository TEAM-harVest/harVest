package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.AlramDTO;
import com.itwillbs.domain.ProjectDTO;

public interface ProjectListDAO {
	
	public List<ProjectDTO> getAllList();
	public int getProjCount();
	public List<ProjectDTO> getCategoryList(String category);
	public int getCateCount(String category);
	public List<ProjectDTO> getNewly();
	public int getNewCount();
	public List<ProjectDTO> getDeadline();
	public int getDeadCount();
	public List<ProjectDTO> getPopular(String percent);
	public int getPopCount(String percent);
	public List<ProjectDTO> getExpect();
	public int getExpCount();
	public List<ProjectDTO> getSearchList(String search);
	public int getSearchCount(String search);
	public void updateAlramcount(int idx);
	
	public List<ProjectDTO> getProjectList(Map<String, String> param);

}

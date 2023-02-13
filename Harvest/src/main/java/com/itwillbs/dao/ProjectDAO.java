package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;

public interface ProjectDAO {
	public List<ProjectDTO> getProjectList();
	public ProjectDTO getProjectInfo(int idx);
	public String getLike(Map<String, String> param);
	public int setLike(Map<String, String> param);
	public int delLike(Map<String, String> param);
	public int getSumMoney(int idx);
	public int getSumUser(int idx);
}

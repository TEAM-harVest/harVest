package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;

public interface ProjectService {

	public List<ProjectDTO> getProjectList();

	public ProjectDTO getProjectInfo(int idx);
	
	public String setLike(Map<String, String> param);

	public int getSumMoney(int idx);

	public int getSumUser(int idx);
	
	
}

package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProjectDAO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Inject
	private ProjectDAO projectDAO;

	@Override
	public List<ProjectDTO> getProjectList() {
		return projectDAO.getProjectList();
	}

	@Override
	public ProjectDTO getProjectInfo(int idx) {
		return projectDAO.getProjectInfo(idx);
	}

	@Override
	public String setLike(Map<String, String> param) {
		String cnt = projectDAO.getLike(param);
		String result = "";
		if(cnt.equals("0")) {
			projectDAO.setLike(param);
			result = "heart_fill.svg";
		} else {
			projectDAO.delLike(param);
			result = "heart.svg";
		}
		return result;
	}

	@Override
	public int getSumMoney(int idx) {
		return projectDAO.getSumMoney(idx);
	}

	@Override
	public int getSumUser(int idx) {
		return projectDAO.getSumUser(idx);
	}
	
	
}

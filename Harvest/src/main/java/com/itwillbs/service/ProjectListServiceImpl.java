package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProjectListDAO;
import com.itwillbs.domain.ProjectDTO;

@Service
public class ProjectListServiceImpl implements ProjectListService{
	
	@Inject
	private ProjectListDAO projectListDAO;

	@Override
	public List<ProjectDTO> getAllProjectList() {
		return projectListDAO.getAllProjectList();
	}

	@Override
	public int getProjectCount() {
		return projectListDAO.getProjectCount();
	}

	@Override
	public List<ProjectDTO> getCategoryList(String category) {
		return projectListDAO.getCategoryList(category);
	}

	@Override
	public int getCategoryCount(String category) {
		return projectListDAO.getCategoryCount(category);
	}



	
}

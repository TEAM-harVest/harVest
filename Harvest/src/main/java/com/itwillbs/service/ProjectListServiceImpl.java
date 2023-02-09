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
	public List<ProjectDTO> getAllList() {
		return projectListDAO.getAllList();
	}

	@Override
	public int getProjCount() {
		return projectListDAO.getProjCount();
	}

	@Override
	public List<ProjectDTO> getCategoryList(String category) {
		return projectListDAO.getCategoryList(category);
	}

	@Override
	public int getCateCount(String category) {
		return projectListDAO.getCateCount(category);
	}

	@Override
	public List<ProjectDTO> getNewly() {
		return projectListDAO.getNewly();
	}

	@Override
	public int getNewCount() {
		return projectListDAO.getNewCount();
	}

	@Override
	public List<ProjectDTO> getDeadline() {
		return projectListDAO.getDeadline();
	}

	@Override
	public int getDeadCount() {
		return projectListDAO.getDeadCount();
	}

	@Override
	public List<ProjectDTO> getPopular() {
		return projectListDAO.getPopular();
	}

	@Override
	public int getPopCount() {
		return projectListDAO.getPopCount();
	}

	@Override
	public List<ProjectDTO> getExpect() {
		return projectListDAO.getExpect();
	}

	@Override
	public int getExpCount() {
		return projectListDAO.getExpCount();
	}



	
}

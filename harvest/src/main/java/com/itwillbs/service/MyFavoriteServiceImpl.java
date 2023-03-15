package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MyFavoriteDAO;

@Service
public class MyFavoriteServiceImpl implements MyFavoriteService {

	@Inject
	private MyFavoriteDAO myFavoriteDAO;

	@Override
	public List<Map<String, String>> getMyFavoriteList(String id) {
		return myFavoriteDAO.getMyFavoriteList(id);
	}

	@Override
	public int getMyFavoriteCount(String id) {
		return myFavoriteDAO.getMyFavoriteCount(id);
	}
	
	
	
	
	
	
}

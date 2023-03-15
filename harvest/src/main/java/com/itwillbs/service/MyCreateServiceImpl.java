package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MyCreateDAO;

@Service
public class MyCreateServiceImpl implements MyCreateService{

	@Inject
	MyCreateDAO myCreateDAO;

	@Override
	public List<Map<String, String>> getMyCreateList(String id) {
		return myCreateDAO.getMyCreateList(id);
	}

	@Override
	public int getMyCreateCount(String id) {
		return myCreateDAO.getMyCreateCount(id);
	}
	
	
}
